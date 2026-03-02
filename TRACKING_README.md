# 유입 로그 및 상담 인입 추적 시스템

## 개요
방문자의 유입 경로, UTM 파라미터, 디바이스 정보 등을 자동으로 수집하고, 상담 신청 시 해당 정보와 연결하여 마케팅 효과를 분석할 수 있는 시스템입니다.

## 데이터베이스 구조

### 1. traffic_logs (방문자 유입 로그)
방문자가 페이지에 접속하는 순간의 모든 정보를 기록합니다.

**주요 필드:**
- `session_id`: UUID 세션 식별자 (PK)
- `visitor_id`: UUID 방문자 식별자 (재방문 추적용, 쿠키 기반)
- UTM 파라미터: `utm_source`, `utm_medium`, `utm_campaign`, `utm_content`, `utm_term`
- 유입 경로: `referrer_url`, `search_keyword`, `landing_page`
- 사용자 환경: `device_type`, `os`, `browser`, `screen_resolution`, `ip_address`

### 2. consultation_leads (상담 신청 로그)
실제 상담 신청 정보를 저장하며, traffic_logs와 연결됩니다.

**주요 필드:**
- `session_id`: 세션 ID (FK, traffic_logs 참조)
- 고객 정보: `name`, `phone`, `email`, `debt_amount`, `monthly_income`
- 메타 정보: `status` (pending/processing/completed/cancelled)

## 설치 및 설정

### 1. 데이터베이스 초기화
서버 배포 후 다음 URL에 접속하여 테이블을 생성합니다:
```
http://your-domain.com/admin/init-db
```

### 2. 자동 추적 동작
- 페이지 로드 시 `tracking.js`가 자동으로 실행되어 방문자 정보를 수집합니다.
- 수집된 정보는 `/api/traffic` 엔드포인트로 전송됩니다.
- 세션 ID는 서버 세션에 저장되고, 방문자 ID는 쿠키에 저장됩니다.

### 3. 상담 신청 연동
- 상담 신청 폼 제출 시 자동으로 세션 ID와 함께 저장됩니다.
- `/api/consultation` 엔드포인트로 데이터가 전송됩니다.

## UTM 파라미터 사용 예시

### 네이버 광고
```
https://newstart-law.com/?utm_source=naver&utm_medium=cpc&utm_campaign=personal_recovery&utm_term=개인회생
```

### 구글 광고
```
https://newstart-law.com/?utm_source=google&utm_medium=cpc&utm_campaign=bankruptcy&utm_term=개인파산
```

### 페이스북 광고
```
https://newstart-law.com/?utm_source=facebook&utm_medium=social&utm_campaign=spring_promotion
```

## 데이터 조회 예시

### 특정 UTM 소스의 방문자 수
```sql
SELECT utm_source, COUNT(*) as visit_count
FROM traffic_logs
WHERE created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY)
GROUP BY utm_source
ORDER BY visit_count DESC;
```

### 상담 전환율 분석
```sql
SELECT 
    t.utm_source,
    COUNT(DISTINCT t.session_id) as total_visits,
    COUNT(DISTINCT c.id) as consultations,
    ROUND(COUNT(DISTINCT c.id) * 100.0 / COUNT(DISTINCT t.session_id), 2) as conversion_rate
FROM traffic_logs t
LEFT JOIN consultation_leads c ON t.session_id = c.session_id
WHERE t.created_at >= DATE_SUB(NOW(), INTERVAL 30 DAY)
GROUP BY t.utm_source
ORDER BY conversion_rate DESC;
```

### 디바이스별 상담 신청 현황
```sql
SELECT 
    t.device_type,
    COUNT(c.id) as consultation_count
FROM consultation_leads c
JOIN traffic_logs t ON c.session_id = t.session_id
WHERE c.created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY)
GROUP BY t.device_type;
```

## API 엔드포인트

### POST /api/traffic
방문자 유입 로그를 저장합니다.

**파라미터:**
- utm_source, utm_medium, utm_campaign, utm_content, utm_term
- referrer, search_keyword, landing_page
- device_type, os, browser, browser_version, screen_resolution

### POST /api/consultation
상담 신청 정보를 저장합니다.

**파라미터:**
- name (필수)
- phone (필수)
- email
- debt (채무금액)
- income (월소득)
- message

## 주의사항

1. **개인정보 보호**: IP 주소 등 민감한 정보가 저장되므로 접근 권한을 철저히 관리해야 합니다.
2. **쿠키 동의**: visitor_id 쿠키 사용에 대한 사용자 동의가 필요할 수 있습니다.
3. **데이터 보관 기간**: 개인정보 보호법에 따라 적절한 보관 기간을 설정하고 주기적으로 삭제해야 합니다.

## 파일 구조

```
src/main/
├── java/com/ace/
│   ├── model/
│   │   ├── TrafficLog.java
│   │   └── ConsultationLead.java
│   ├── dao/
│   │   ├── TrafficLogDAO.java
│   │   └── ConsultationLeadDAO.java
│   └── servlet/
│       ├── TrafficLogServlet.java
│       ├── ConsultationLeadServlet.java
│       └── InitDatabaseServlet.java
├── resources/
│   └── schema.sql
└── webapp/
    └── js/
        └── tracking.js
```
