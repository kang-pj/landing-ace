-- traffic_logs 테이블 코멘트 수정
ALTER TABLE traffic_logs COMMENT='방문자 유입 로그 - 페이지 방문 시 자동 수집되는 마케팅 분석 데이터';

-- traffic_logs 컬럼 코멘트 수정
ALTER TABLE traffic_logs MODIFY COLUMN id BIGINT AUTO_INCREMENT COMMENT '고유 식별자 (자동 증가)';
ALTER TABLE traffic_logs MODIFY COLUMN session_id VARCHAR(36) NOT NULL COMMENT 'UUID 세션 식별자 - 방문 세션별 고유 ID';
ALTER TABLE traffic_logs MODIFY COLUMN visitor_id VARCHAR(36) NOT NULL COMMENT 'UUID 방문자 식별자 - 쿠키 기반 재방문 추적용';
ALTER TABLE traffic_logs MODIFY COLUMN utm_source VARCHAR(100) COMMENT 'UTM 유입 소스 - 트래픽 출처 (예: google, naver, facebook, instagram)';
ALTER TABLE traffic_logs MODIFY COLUMN utm_medium VARCHAR(100) COMMENT 'UTM 유입 매체 - 마케팅 매체 (예: cpc, organic, social, email, banner)';
ALTER TABLE traffic_logs MODIFY COLUMN utm_campaign VARCHAR(200) COMMENT 'UTM 캠페인명 - 특정 프로모션/캠페인 식별 (예: spring_sale_2024)';
ALTER TABLE traffic_logs MODIFY COLUMN utm_content VARCHAR(200) COMMENT 'UTM 광고 콘텐츠 - A/B 테스트나 광고 소재 구분 (예: banner_v1, text_ad)';
ALTER TABLE traffic_logs MODIFY COLUMN utm_term VARCHAR(200) COMMENT 'UTM 검색 키워드 - 유료 검색 광고의 키워드 (예: 개인회생, 개인파산)';
ALTER TABLE traffic_logs MODIFY COLUMN referrer_url TEXT COMMENT '리퍼러 URL - 방문 직전 페이지의 전체 URL (어디서 왔는지)';
ALTER TABLE traffic_logs MODIFY COLUMN search_keyword VARCHAR(200) COMMENT '자연 검색어 - 검색엔진을 통한 유입 시 사용한 검색어 (네이버/구글/다음)';
ALTER TABLE traffic_logs MODIFY COLUMN landing_page VARCHAR(500) COMMENT '랜딩 페이지 - 사용자가 최초로 진입한 페이지 URL';
ALTER TABLE traffic_logs MODIFY COLUMN device_type VARCHAR(20) COMMENT '디바이스 타입 - Mobile/PC/Tablet 구분';
ALTER TABLE traffic_logs MODIFY COLUMN os VARCHAR(50) COMMENT '운영체제 - Windows/MacOS/iOS/Android/Linux 등';
ALTER TABLE traffic_logs MODIFY COLUMN browser VARCHAR(50) COMMENT '브라우저 종류 - Chrome/Safari/Firefox/Edge/IE 등';
ALTER TABLE traffic_logs MODIFY COLUMN browser_version VARCHAR(50) COMMENT '브라우저 버전 - 주요 버전 번호 (예: 120, 17)';
ALTER TABLE traffic_logs MODIFY COLUMN screen_resolution VARCHAR(20) COMMENT '화면 해상도 - 사용자 화면 크기 (예: 1920x1080, 375x667)';
ALTER TABLE traffic_logs MODIFY COLUMN ip_address VARCHAR(45) COMMENT 'IP 주소 - 접속 IP (IPv4/IPv6 지원, 지역 분석 가능)';
ALTER TABLE traffic_logs MODIFY COLUMN user_agent TEXT COMMENT 'User Agent - HTTP 요청 헤더의 전체 User Agent 문자열';
ALTER TABLE traffic_logs MODIFY COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '레코드 생성 시간 - 방문 발생 시각';

-- consultation_leads 테이블 코멘트 수정
ALTER TABLE consultation_leads COMMENT='상담 신청 로그 - 실제 비즈니스 전환이 발생한 리드 정보 (유입 로그와 연결)';

-- consultation_leads 컬럼 코멘트 수정
ALTER TABLE consultation_leads MODIFY COLUMN id BIGINT AUTO_INCREMENT COMMENT '고유 식별자 (자동 증가)';
ALTER TABLE consultation_leads MODIFY COLUMN session_id VARCHAR(36) NOT NULL COMMENT '세션 ID - traffic_logs 테이블의 session_id와 연결 (FK)';
ALTER TABLE consultation_leads MODIFY COLUMN name VARCHAR(50) NOT NULL COMMENT '신청자 이름 - 실명 (필수)';
ALTER TABLE consultation_leads MODIFY COLUMN phone VARCHAR(20) NOT NULL COMMENT '연락처 - 휴대폰 번호 (필수, 하이픈 제외)';
ALTER TABLE consultation_leads MODIFY COLUMN email VARCHAR(100) COMMENT '이메일 주소 - 선택 입력 항목';
ALTER TABLE consultation_leads MODIFY COLUMN debt_amount VARCHAR(50) COMMENT '채무금액 - 선택한 채무 범위 (예: 1천만원~3천만원, 1억원 이상)';
ALTER TABLE consultation_leads MODIFY COLUMN monthly_income VARCHAR(50) COMMENT '월소득 - 선택한 소득 범위 (예: 150만원~250만원, 소득 없음)';
ALTER TABLE consultation_leads MODIFY COLUMN message TEXT COMMENT '상담 내용 - 추가 문의사항이나 상담 요청 메시지';
ALTER TABLE consultation_leads MODIFY COLUMN status VARCHAR(20) DEFAULT 'pending' COMMENT '상담 상태 - pending(대기), processing(진행중), completed(완료), cancelled(취소)';
ALTER TABLE consultation_leads MODIFY COLUMN user_agent TEXT COMMENT '신청 당시 User Agent - 신청 환경 확인용 (모바일/PC 구분)';
ALTER TABLE consultation_leads MODIFY COLUMN ip_address VARCHAR(45) COMMENT '신청 당시 IP 주소 - 중복 신청 방지 및 지역 분석용';
ALTER TABLE consultation_leads MODIFY COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '신청 시간 - 상담 신청이 접수된 시각';
ALTER TABLE consultation_leads MODIFY COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정 시간 - 상태 변경 등 마지막 업데이트 시각';
