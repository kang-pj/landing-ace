package com.ace.util;

import java.sql.Connection;
import java.sql.Statement;

public class CreateTables {
    
    public static void main(String[] args) {
        System.out.println("데이터베이스 테이블 생성 시작...");
        
        String[] sqlStatements = {
            // traffic_logs 테이블
            "CREATE TABLE IF NOT EXISTS traffic_logs (" +
            "id BIGINT AUTO_INCREMENT PRIMARY KEY, " +
            "session_id VARCHAR(36) NOT NULL UNIQUE COMMENT 'UUID 세션 식별자', " +
            "visitor_id VARCHAR(36) NOT NULL COMMENT 'UUID 방문자 식별자', " +
            "utm_source VARCHAR(100) COMMENT '유입 소스', " +
            "utm_medium VARCHAR(100) COMMENT '유입 매체', " +
            "utm_campaign VARCHAR(200) COMMENT '캠페인명', " +
            "utm_content VARCHAR(200) COMMENT '광고 콘텐츠', " +
            "utm_term VARCHAR(200) COMMENT '검색 키워드', " +
            "referrer_url TEXT COMMENT '이전 페이지 URL', " +
            "search_keyword VARCHAR(200) COMMENT '자연 검색어', " +
            "landing_page VARCHAR(500) COMMENT '최초 진입 페이지', " +
            "device_type VARCHAR(20) COMMENT 'Mobile/PC/Tablet', " +
            "os VARCHAR(50) COMMENT '운영체제', " +
            "browser VARCHAR(50) COMMENT '브라우저', " +
            "browser_version VARCHAR(50) COMMENT '브라우저 버전', " +
            "screen_resolution VARCHAR(20) COMMENT '화면 해상도', " +
            "ip_address VARCHAR(45) COMMENT 'IP 주소', " +
            "user_agent TEXT COMMENT 'User Agent', " +
            "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '생성 시간', " +
            "INDEX idx_utm_source (utm_source), " +
            "INDEX idx_created_at (created_at), " +
            "INDEX idx_visitor_id (visitor_id), " +
            "INDEX idx_session_id (session_id)" +
            ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci",
            
            // consultation_leads 테이블
            "CREATE TABLE IF NOT EXISTS consultation_leads (" +
            "id BIGINT AUTO_INCREMENT PRIMARY KEY, " +
            "session_id VARCHAR(36) NOT NULL COMMENT '세션 ID', " +
            "name VARCHAR(50) NOT NULL COMMENT '이름', " +
            "phone VARCHAR(20) NOT NULL COMMENT '연락처', " +
            "email VARCHAR(100) COMMENT '이메일', " +
            "debt_amount VARCHAR(50) COMMENT '채무금액', " +
            "monthly_income VARCHAR(50) COMMENT '월소득', " +
            "message TEXT COMMENT '상담 내용', " +
            "status VARCHAR(20) DEFAULT 'pending' COMMENT '상태', " +
            "user_agent TEXT COMMENT '신청 당시 User Agent', " +
            "ip_address VARCHAR(45) COMMENT '신청 당시 IP', " +
            "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '신청 시간', " +
            "updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 시간', " +
            "INDEX idx_session_id (session_id), " +
            "INDEX idx_phone (phone), " +
            "INDEX idx_status (status), " +
            "INDEX idx_created_at (created_at)" +
            ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci"
        };
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {
            
            for (String sql : sqlStatements) {
                System.out.println("실행 중: " + sql.substring(0, Math.min(50, sql.length())) + "...");
                stmt.execute(sql);
            }
            
            System.out.println("\n✓ 테이블 생성 완료!");
            System.out.println("✓ traffic_logs 테이블 생성됨");
            System.out.println("✓ consultation_leads 테이블 생성됨");
            
        } catch (Exception e) {
            System.err.println("✗ 테이블 생성 실패: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
