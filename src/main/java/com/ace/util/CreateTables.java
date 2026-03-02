package com.ace.util;

import java.sql.Connection;
import java.sql.Statement;

public class CreateTables {
    
    public static void main(String[] args) {
        System.out.println("데이터베이스 테이블 생성 시작...");
        
        String[] sqlStatements = {
            // traffic_logs 테이블
            "CREATE TABLE IF NOT EXISTS traffic_logs (" +
            "id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '고유 식별자 (자동 증가)', " +
            "session_id VARCHAR(36) NOT NULL UNIQUE COMMENT 'UUID 세션 식별자 - 방문 세션별 고유 ID', " +
            "visitor_id VARCHAR(36) NOT NULL COMMENT 'UUID 방문자 식별자 - 쿠키 기반 재방문 추적용', " +
            "utm_source VARCHAR(100) COMMENT 'UTM 유입 소스 - 트래픽 출처 (예: google, naver, facebook)', " +
            "utm_medium VARCHAR(100) COMMENT 'UTM 유입 매체 - 마케팅 매체 (예: cpc, organic, social)', " +
            "utm_campaign VARCHAR(200) COMMENT 'UTM 캠페인명 - 특정 프로모션/캠페인 식별', " +
            "utm_content VARCHAR(200) COMMENT 'UTM 광고 콘텐츠 - A/B 테스트나 광고 소재 구분', " +
            "utm_term VARCHAR(200) COMMENT 'UTM 검색 키워드 - 유료 검색 광고의 키워드', " +
            "referrer_url TEXT COMMENT '리퍼러 URL - 방문 직전 페이지의 전체 URL', " +
            "search_keyword VARCHAR(200) COMMENT '자연 검색어 - 검색엔진을 통한 유입 시 사용한 검색어', " +
            "landing_page VARCHAR(500) COMMENT '랜딩 페이지 - 사용자가 최초로 진입한 페이지 URL', " +
            "device_type VARCHAR(20) COMMENT '디바이스 타입 - Mobile/PC/Tablet 구분', " +
            "os VARCHAR(50) COMMENT '운영체제 - Windows/MacOS/iOS/Android/Linux 등', " +
            "browser VARCHAR(50) COMMENT '브라우저 종류 - Chrome/Safari/Firefox/Edge/IE 등', " +
            "browser_version VARCHAR(50) COMMENT '브라우저 버전 - 주요 버전 번호', " +
            "screen_resolution VARCHAR(20) COMMENT '화면 해상도 - 사용자 화면 크기', " +
            "ip_address VARCHAR(45) COMMENT 'IP 주소 - 접속 IP (IPv4/IPv6 지원)', " +
            "user_agent TEXT COMMENT 'User Agent - HTTP 요청 헤더의 전체 User Agent 문자열', " +
            "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '레코드 생성 시간 - 방문 발생 시각', " +
            "INDEX idx_utm_source (utm_source), " +
            "INDEX idx_created_at (created_at), " +
            "INDEX idx_visitor_id (visitor_id), " +
            "INDEX idx_session_id (session_id)" +
            ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='방문자 유입 로그 - 페이지 방문 시 자동 수집되는 마케팅 분석 데이터'",
            
            // consultation_leads 테이블
            "CREATE TABLE IF NOT EXISTS consultation_leads (" +
            "id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '고유 식별자 (자동 증가)', " +
            "session_id VARCHAR(36) NOT NULL COMMENT '세션 ID - traffic_logs 테이블의 session_id와 연결 (FK)', " +
            "name VARCHAR(50) NOT NULL COMMENT '신청자 이름 - 실명 (필수)', " +
            "phone VARCHAR(20) NOT NULL COMMENT '연락처 - 휴대폰 번호 (필수)', " +
            "email VARCHAR(100) COMMENT '이메일 주소 - 선택 입력 항목', " +
            "debt_amount VARCHAR(50) COMMENT '채무금액 - 선택한 채무 범위', " +
            "monthly_income VARCHAR(50) COMMENT '월소득 - 선택한 소득 범위', " +
            "message TEXT COMMENT '상담 내용 - 추가 문의사항이나 상담 요청 메시지', " +
            "status VARCHAR(20) DEFAULT 'pending' COMMENT '상담 상태 - pending/processing/completed/cancelled', " +
            "user_agent TEXT COMMENT '신청 당시 User Agent - 신청 환경 확인용', " +
            "ip_address VARCHAR(45) COMMENT '신청 당시 IP 주소 - 중복 신청 방지 및 지역 분석용', " +
            "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '신청 시간 - 상담 신청이 접수된 시각', " +
            "updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 시간 - 상태 변경 등 마지막 업데이트 시각', " +
            "INDEX idx_session_id (session_id), " +
            "INDEX idx_phone (phone), " +
            "INDEX idx_status (status), " +
            "INDEX idx_created_at (created_at)" +
            ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='상담 신청 로그 - 실제 비즈니스 전환이 발생한 리드 정보'"
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
