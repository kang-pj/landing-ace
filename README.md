# 웹 애플리케이션 프로젝트

Tomcat 10.0.x, JSP 3.0, Servlet 5.0, JDK 17, MariaDB 10.x 환경을 위한 웹 프로젝트입니다.

## 기술 스택

- **JDK**: 17
- **Tomcat**: 10.0.x
- **JSP**: 3.0 (Jakarta EE)
- **Servlet**: 5.0 (Jakarta EE)
- **Database**: MariaDB 10.x
- **Build Tool**: Maven
- **Encoding**: UTF-8

## 프로젝트 구조

```
├── pom.xml                           # Maven 설정
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/
│   │   │       ├── filter/           # 필터 클래스
│   │   │       ├── servlet/          # 서블릿 클래스
│   │   │       └── util/             # 유틸리티 클래스
│   │   ├── resources/
│   │   │   └── database.properties   # DB 설정
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   ├── web.xml           # 웹 애플리케이션 설정
│   │       │   └── views/            # JSP 뷰 파일
│   │       ├── error/                # 에러 페이지
│   │       ├── index.jsp             # 메인 페이지
│   │       └── test.jsp              # JSP 테스트 페이지
```

## 빌드 및 배포

### 1. 빌드
```bash
mvn clean package
```

### 2. ROOT.war 파일 생성
빌드 후 `target/ROOT.war` 파일이 생성됩니다.

### 3. cafe24 호스팅 배포
1. cafe24 호스팅 관리자에서 Tomcat 관리 메뉴로 이동
2. 기존 ROOT 디렉토리 삭제 또는 백업
3. `ROOT.war` 파일을 업로드
4. Tomcat 재시작

## 데이터베이스 설정

`src/main/resources/database.properties` 파일에서 cafe24 데이터베이스 정보를 설정하세요:

```properties
db.url=jdbc:mariadb://your_host:3306/your_database?useUnicode=true&characterEncoding=UTF-8
db.username=your_username
db.password=your_password
```

## 주요 기능

- UTF-8 인코딩 자동 설정
- 커넥션 풀 (HikariCP)
- 에러 페이지 처리
- JSTL 지원
- Jakarta EE 9+ 호환

## 개발 환경 실행

로컬에서 테스트하려면:

1. Tomcat 10.0.x 설치
2. JDK 17 설정
3. MariaDB 설치 및 설정
4. 프로젝트 빌드 후 Tomcat에 배포

## 참고사항

- Jakarta EE 네임스페이스 사용 (javax → jakarta)
- cafe24 호스팅 환경에 최적화
- UTF-8 인코딩 완전 지원
- 모던 Java 17 기능 활용 가능