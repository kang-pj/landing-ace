package com.ace.batch;

import com.ace.util.DatabaseUtil;
import com.ace.util.DiscordWebhook;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * 매일 아침 8시에 전날 일일현황을 디스코드 일일보고 채널로 발송
 */
@WebListener
public class DailyReportScheduler implements ServletContextListener {

    private ScheduledExecutorService scheduler;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        scheduler = Executors.newSingleThreadScheduledExecutor();

        // 다음 8시까지 남은 시간 계산
        long initialDelay = calculateInitialDelay();

        // 매일 24시간 간격으로 실행
        scheduler.scheduleAtFixedRate(
            this::sendDailyReport,
            initialDelay,
            24 * 60 * 60,  // 24시간 (초)
            TimeUnit.SECONDS
        );

        System.out.println("[DailyReport] 스케줄러 시작. 다음 실행까지 " + (initialDelay / 60) + "분");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        if (scheduler != null) {
            scheduler.shutdown();
            System.out.println("[DailyReport] 스케줄러 종료");
        }
    }

    /**
     * 다음 아침 8시까지 남은 초 계산
     */
    private long calculateInitialDelay() {
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime nextRun = LocalDateTime.of(now.toLocalDate(), LocalTime.of(8, 0));

        // 이미 8시가 지났으면 내일 8시
        if (now.isAfter(nextRun)) {
            nextRun = nextRun.plusDays(1);
        }

        return java.time.Duration.between(now, nextRun).getSeconds();
    }

    /**
     * 일일 리포트 생성 및 발송
     */
    private void sendDailyReport() {
        try {
            LocalDate yesterday = LocalDate.now().minusDays(1);
            String dateStr = yesterday.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

            StringBuilder report = new StringBuilder();
            report.append("📅 **").append(dateStr).append(" 일일현황**\n\n");

            try (Connection conn = DatabaseUtil.getConnection()) {

                // 1. 상담 신청 현황 (타입별)
                report.append("━━━━━━━━━━━━━━━━━━\n");
                report.append("📋 **상담 신청 현황**\n");

                String inquirySql = """
                    SELECT type, COUNT(*) as cnt 
                    FROM inquiries 
                    WHERE DATE(created_at) = ? 
                    GROUP BY type 
                    ORDER BY cnt DESC
                    """;

                int totalInquiries = 0;
                try (PreparedStatement pstmt = conn.prepareStatement(inquirySql)) {
                    pstmt.setString(1, dateStr);
                    try (ResultSet rs = pstmt.executeQuery()) {
                        while (rs.next()) {
                            String type = rs.getString("type");
                            int count = rs.getInt("cnt");
                            totalInquiries += count;
                            report.append("  • ").append(getTypeLabel(type))
                                  .append(": **").append(count).append("건**\n");
                        }
                    }
                }
                report.append("  ▶ 합계: **").append(totalInquiries).append("건**\n\n");

                // 2. 방문자 현황
                report.append("━━━━━━━━━━━━━━━━━━\n");
                report.append("👥 **방문자 현황**\n");

                String trafficSql = """
                    SELECT 
                        COUNT(*) as total_visits,
                        COUNT(DISTINCT visitor_id) as unique_visitors,
                        COUNT(DISTINCT session_id) as sessions
                    FROM traffic_logs 
                    WHERE DATE(created_at) = ?
                    """;

                try (PreparedStatement pstmt = conn.prepareStatement(trafficSql)) {
                    pstmt.setString(1, dateStr);
                    try (ResultSet rs = pstmt.executeQuery()) {
                        if (rs.next()) {
                            int totalVisits = rs.getInt("total_visits");
                            int uniqueVisitors = rs.getInt("unique_visitors");
                            int sessions = rs.getInt("sessions");
                            report.append("  • 총 방문: **").append(totalVisits).append("회**\n");
                            report.append("  • 순 방문자: **").append(uniqueVisitors).append("명**\n");
                            report.append("  • 세션 수: **").append(sessions).append("개**\n");
                        }
                    }
                }
                report.append("\n");

                // 3. 디바이스별 방문
                report.append("━━━━━━━━━━━━━━━━━━\n");
                report.append("📱 **디바이스별 방문**\n");

                String deviceSql = """
                    SELECT device_type, COUNT(*) as cnt 
                    FROM traffic_logs 
                    WHERE DATE(created_at) = ? 
                    GROUP BY device_type 
                    ORDER BY cnt DESC
                    """;

                try (PreparedStatement pstmt = conn.prepareStatement(deviceSql)) {
                    pstmt.setString(1, dateStr);
                    try (ResultSet rs = pstmt.executeQuery()) {
                        while (rs.next()) {
                            String device = rs.getString("device_type");
                            int count = rs.getInt("cnt");
                            report.append("  • ").append(device != null ? device : "Unknown")
                                  .append(": **").append(count).append("회**\n");
                        }
                    }
                }
                report.append("\n");

                // 4. 유입 경로별 (UTM Source)
                report.append("━━━━━━━━━━━━━━━━━━\n");
                report.append("🔗 **유입 경로 (상위 5개)**\n");

                String utmSql = """
                    SELECT 
                        CASE WHEN utm_source IS NULL OR utm_source = '' THEN '직접유입' ELSE utm_source END as source,
                        COUNT(*) as cnt 
                    FROM traffic_logs 
                    WHERE DATE(created_at) = ? 
                    GROUP BY source 
                    ORDER BY cnt DESC 
                    LIMIT 5
                    """;

                try (PreparedStatement pstmt = conn.prepareStatement(utmSql)) {
                    pstmt.setString(1, dateStr);
                    try (ResultSet rs = pstmt.executeQuery()) {
                        while (rs.next()) {
                            String source = rs.getString("source");
                            int count = rs.getInt("cnt");
                            report.append("  • ").append(source)
                                  .append(": **").append(count).append("회**\n");
                        }
                    }
                }
                report.append("\n");

                // 5. 전환율 계산
                report.append("━━━━━━━━━━━━━━━━━━\n");
                report.append("📊 **전환율**\n");

                String visitorCountSql = """
                    SELECT COUNT(DISTINCT visitor_id) as unique_visitors
                    FROM traffic_logs 
                    WHERE DATE(created_at) = ?
                    """;

                int uniqueVisitors = 0;
                try (PreparedStatement pstmt = conn.prepareStatement(visitorCountSql)) {
                    pstmt.setString(1, dateStr);
                    try (ResultSet rs = pstmt.executeQuery()) {
                        if (rs.next()) {
                            uniqueVisitors = rs.getInt("unique_visitors");
                        }
                    }
                }

                // 실제 상담 신청 건수 (INQ 타입만)
                String realInquirySql = """
                    SELECT COUNT(*) as cnt FROM inquiries 
                    WHERE DATE(created_at) = ? AND type = 'INQ'
                    """;

                int realInquiries = 0;
                try (PreparedStatement pstmt = conn.prepareStatement(realInquirySql)) {
                    pstmt.setString(1, dateStr);
                    try (ResultSet rs = pstmt.executeQuery()) {
                        if (rs.next()) {
                            realInquiries = rs.getInt("cnt");
                        }
                    }
                }

                double conversionRate = uniqueVisitors > 0 
                    ? (double) realInquiries / uniqueVisitors * 100 : 0;
                report.append("  • 상담 신청 전환율: **")
                      .append(String.format("%.1f", conversionRate)).append("%**\n");
                report.append("  (상담 ").append(realInquiries)
                      .append("건 / 방문자 ").append(uniqueVisitors).append("명)\n");

            }

            // 디스코드 일일보고 채널로 발송
            DiscordWebhook.send("report", "📊 일일 리포트", report.toString(), 0xF39C12);
            System.out.println("[DailyReport] " + dateStr + " 리포트 발송 완료");

        } catch (Exception e) {
            System.err.println("[DailyReport] 리포트 생성 실패: " + e.getMessage());
            e.printStackTrace();
            DiscordWebhook.sendError("[DailyReport] 일일 리포트 생성 실패", e);
        }
    }

    /**
     * 타입 코드를 한글 라벨로 변환
     */
    private String getTypeLabel(String type) {
        if (type == null) return "기타";
        switch (type) {
            case "INQ": return "상담 신청";
            case "CALL": return "전화 문의";
            case "KAKAO": return "카카오톡";
            case "NAVER_RES": return "네이버 예약";
            case "NAVER_TALK": return "네이버 톡톡";
            default: return type;
        }
    }
}
