# ACE 법무법인 웹사이트

ACE 법무법인의 개인회생·파산 상담 신청 웹사이트입니다.
Tomcat 10.0.x, JSP 3.0, Servlet 5.0, JDK 17, MariaDB 10.x 환경을 위한 웹 프로젝트입니다.

## 🎨 디자인 및 문서

### 디자인
- **Figma 디자인**: [ACE Law Office MicroSite](https://www.figma.com/design/016FHe8I3EuuAnOZvUXGyp/ACE-Law-Office-MicroSite?node-id=2-588&t=xt54obfXH2I15B1B-1)

### 참고 문서
프로젝트 관련 상세 문서는 `docs/` 폴더를 참고하세요:
- **[에이스 리뉴얼 구축_v0.1_20251204.pdf](docs/에이스%20리뉴얼%20구축_v0.1_20251204.pdf)**: 프로젝트 구축 상세 문서 (PDF)
- **[에이스 리뉴얼 구축_v0.1_20251204.pptx](docs/에이스%20리뉴얼%20구축_v0.1_20251204.pptx)**: 프로젝트 구축 프레젠테이션 (PowerPoint)

## 기술 스택

- **JDK**: 17
- **Tomcat**: 10.0.x
- **JSP**: 3.0 (Jakarta EE)
- **Servlet**: 5.0 (Jakarta EE)
- **Database**: MariaDB 10.x
- **Connection Pool**: HikariCP
- **Build Tool**: Maven
- **Encoding**: UTF-8

## 주요 기능

### 🏠 메인 페이지
- 반응형 디자인 (PC/모바일 최적화)
- 개인회생·파산 상담 신청 폼
- AI 자가진단 모달
- 성공사례 슬라이더
- 대표변호사 소개
- FAQ 아코디언

### 📱 모바일 최적화
- 햄버거 메뉴 네비게이션
- 하단 고정 상담 신청 바
- 키패드 대응 UI 조정
- 터치 친화적 인터페이스

### 💾 데이터베이스 연동
- 상담 신청 데이터 자동 저장
- MariaDB inquiries 테이블 연동
- 회사별 데이터 관리 (COMP0001)
- 연결 풀을 통한 안정적인 DB 접근

### 🔧 관리 기능
- `/db-test`: 데이터베이스 연결 테스트
- `/consultation`: 상담 신청 API 테스트
- 실시간 로그 모니터링

## 프로젝트 구조

```
├── pom.xml                           # Maven 설정
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/ace/
│   │   │       ├── dao/              # 데이터 접근 객체
│   │   │       │   ├── InquiryDAO.java
│   │   │       │   └── ConsultationDAO.java
│   │   │       ├── model/            # 데이터 모델
│   │   │       │   ├── Inquiry.java
│   │   │       │   └── ConsultationRequest.java
│   │   │       ├── servlet/          # 서블릿 클래스
│   │   │       │   ├── ConsultationServlet.java
│   │   │       │   └── DatabaseTestServlet.java
│   │   │       └── util/             # 유틸리티 클래스
│   │   │           └── DatabaseUtil.java
│   │   ├── resources/
│   │   │   └── db.properties         # DB 설정
│   │   └── webapp/
│   │       ├── images/               # 이미지 리소스
│   │       ├── index.jsp             # 메인 페이지
│   │       └── simple.html           # 간단한 테스트 페이지
└── test-consultation.html            # 상담 신청 테스트 페이지
```

## 🚀 빌드 및 배포

### 로컬 개발 환경
```bash
# 의존성 설치 및 컴파일
mvn clean compile

# Jetty 서버로 로컬 실행 (포트 8081)
mvn jetty:run
```

### 프로덕션 배포
```bash
# WAR 파일 빌드
mvn clean package

# FTP로 cafe24 서버에 배포
ftp -s:ftp_deploy.txt
```

## 🗄️ 데이터베이스 설정

### 환경별 설정
`src/main/resources/db.properties`:
```properties
# MariaDB Connection Settings for Cafe24
db.driver=org.mariadb.jdbc.Driver

# 서버 환경 (localhost)
db.url.server=jdbc:mariadb://localhost:3306/shesy11?useUnicode=true&characterEncoding=UTF-8

# 로컬 개발 환경 (외부 접속)
db.url.local=jdbc:mariadb://shesy11.cafe24.com:3306/shesy11?useUnicode=true&characterEncoding=UTF-8

db.username=shesy11
db.password=Rkdwnl24((
```

### 테이블 구조
```sql
-- inquiries 테이블 (기본 필드)
CREATE TABLE inquiries (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    company_id VARCHAR(20) NOT NULL DEFAULT 'COMP0001',
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

## 📡 API 엔드포인트

### 상담 신청 API
- **URL**: `/consultation`
- **Method**: POST
- **Content-Type**: `application/x-www-form-urlencoded`
- **Parameters**:
  - `name` (required): 이름
  - `phone` (required): 연락처
  - `debtAmount` (optional): 채무금액
  - `income` (optional): 월소득
  - `device` (optional): 디바이스 정보
  - `type` (optional): 상담 유형

### 데이터베이스 테스트
- **URL**: `/db-test`
- **Method**: GET
- **기능**: 데이터베이스 연결 상태 및 테이블 정보 확인

## 🔧 개발 도구

### 로컬 테스트 URL
- 메인 페이지: `http://localhost:8081`
- DB 테스트: `http://localhost:8081/db-test`
- 상담 API 테스트: `http://localhost:8081/consultation`
- 간단 테스트: `http://localhost:8081/test-consultation.html`

## 📱 모바일 최적화 기능

### 키패드 대응
- Visual Viewport API를 활용한 키패드 감지
- 키패드 표시 시 고정 요소 자동 숨김/조정
- 부드러운 애니메이션 전환

### 햄버거 메뉴
- z-index 최적화로 아일랜드 요소와 충돌 방지
- 메뉴 열림 시 배경 요소 자동 숨김
- ESC 키 및 외부 클릭으로 닫기

### 반응형 디자인
- 768px 이하: 모바일 최적화 레이아웃
- 1000px 이하: 태블릿 최적화
- 1200px 이상: 데스크톱 레이아웃

## 🛠️ 기술적 특징

### Jakarta EE 호환
- Jakarta Servlet 5.0
- Jakarta JSP 3.0
- Jakarta JSTL 2.0

### 데이터베이스 연동
- HikariCP 연결 풀
- 환경별 자동 URL 선택
- 트랜잭션 안전성 보장

### 보안 및 성능
- UTF-8 완전 지원
- SQL Injection 방지
- 연결 풀을 통한 성능 최적화

## 📞 연락처

**ACE 법무법인**
- 전화: 1555-1684
- 웹사이트: 개인회생·파산 전문 상담

---

## 참고사항

- Jakarta EE 네임스페이스 사용 (javax → jakarta)
- cafe24 호스팅 환경에 최적화
- UTF-8 인코딩 완전 지원
- 모던 Java 17 기능 활용