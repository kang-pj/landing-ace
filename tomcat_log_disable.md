# Tomcat 로그 비활성화 방법

## 방법 1: Cafe24 관리자 페이지에서 설정
1. Cafe24 관리자 페이지 로그인
2. 호스팅 관리 → Tomcat 설정
3. 로그 설정에서 catalina.out 비활성화

## 방법 2: SSH 접속 (가능한 경우)
```bash
# SSH 접속
ssh [계정명]@shesy11.cafe24.com

# catalina.sh 파일 편집
vi ~/tomcat/bin/catalina.sh

# 아래 라인 찾기:
# CATALINA_OUT="$CATALINA_BASE"/logs/catalina.out

# 다음으로 변경:
CATALINA_OUT=/dev/null

# 저장 후 Tomcat 재시작
~/tomcat/bin/shutdown.sh
~/tomcat/bin/startup.sh
```

## 방법 3: logging.properties 수정 (FTP 가능)
FTP로 `~/tomcat/conf/logging.properties` 파일을 다운로드하여 수정:

```properties
# 기존 설정 주석 처리
# handlers = 1catalina.org.apache.juli.AsyncFileHandler, 2localhost.org.apache.juli.AsyncFileHandler, 3manager.org.apache.juli.AsyncFileHandler, 4host-manager.org.apache.juli.AsyncFileHandler, java.util.logging.ConsoleHandler

# 콘솔 핸들러만 사용 (로그 파일 생성 안 함)
handlers = java.util.logging.ConsoleHandler

# 로그 레벨을 WARNING 이상으로 설정 (INFO 로그 제거)
.level = WARNING
java.util.logging.ConsoleHandler.level = WARNING
```

수정 후 FTP로 업로드하고 Tomcat 재시작

## 참고
- Cafe24 공유 호스팅은 SSH 접근이 제한될 수 있습니다
- 고객센터에 문의하여 SSH 접근 권한 요청 또는 로그 설정 변경 요청
- 전화: 1544-7772
