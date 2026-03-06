# 📧 이메일 발송 기능 설정 가이드

## ✅ 현재 구현 상태

상담 신청 시 자동으로 이메일이 발송되도록 구현 완료:
- **수신자**: law-87@naver.com, jinwoo5555@naver.com
- **발송 계정**: acelaw.admin@gmail.com
- **발송 시점**: 상담 신청 DB 저장 후 자동 발송

---

## 🔧 Gmail 앱 비밀번호 설정 (필수)

Gmail에서 일반 비밀번호로는 SMTP 접속이 불가능합니다. 앱 비밀번호를 생성해야 합니다.

### 1단계: Google 계정 2단계 인증 활성화

1. https://myaccount.google.com/security 접속
2. "Google에 로그인" 섹션에서 "2단계 인증" 클릭
3. 안내에 따라 2단계 인증 설정 완료

### 2단계: 앱 비밀번호 생성

1. https://myaccount.google.com/apppasswords 접속
2. "앱 선택" → "메일" 선택
3. "기기 선택" → "기타(맞춤 이름)" 선택 → "에이스법률사무소" 입력
4. "생성" 클릭
5. **16자리 앱 비밀번호 복사** (예: `abcd efgh ijkl mnop`)

### 3단계: 설정 파일 업데이트

`src/main/resources/email.properties` 파일을 열고:

```properties
# 현재 (변경 전)
mail.sender.password=dpdltm0203!!

# 변경 후 (앱 비밀번호로 교체)
mail.sender.password=abcdefghijklmnop
```

⚠️ **주의**: 앱 비밀번호는 공백 없이 16자리로 입력하세요!

---

## 🧪 테스트 방법

### 방법 1: 웹 브라우저에서 테스트

1. 서버 실행:
   ```bash
   mvn clean package
   # Tomcat에 배포 후 실행
   ```

2. 브라우저에서 http://localhost:8080/ace 접속

3. 상담 신청 폼 작성 후 제출

4. 콘솔 로그 확인:
   ```
   === 이메일 발송 시작 ===
   수신자: law-87@naver.com,jinwoo5555@naver.com
   이메일 발송 성공!
   ```

### 방법 2: 직접 API 호출 테스트

```bash
curl -X POST http://localhost:8080/ace/consultation-lead ^
  -H "Content-Type: application/x-www-form-urlencoded" ^
  -d "name=홍길동&phone=010-1234-5678&debt=5000만원&income=300만원&consultation_source=네이버광고&message=빠른상담부탁드립니다"
```

---

## 📋 이메일 발송 흐름

```
사용자 상담 신청
    ↓
DB 저장 (consultation_leads + inquiries)
    ↓
이메일 발송 시도
    ├─ 성공 → 로그 출력
    └─ 실패 → 에러 로그 (DB 저장은 유지)
    ↓
사용자에게 성공 응답
```

**중요**: 이메일 발송 실패해도 상담 신청은 정상 처리됩니다!

---

## 🎨 발송되는 이메일 형식

```
제목: [상담신청] 홍길동님의 상담 문의

내용:
┌─────────────────────────────┐
│  🏢 새로운 상담 신청         │
│  에이스 법률사무소           │
└─────────────────────────────┘

📋 신청자 정보
━━━━━━━━━━━━━━━━━━━━━━━━━━
이름:      홍길동
연락처:    010-1234-5678
채무액:    5000만원
월소득:    300만원
신청경로:  네이버광고

📝 추가 메시지:
빠른 상담 부탁드립니다

💡 빠른 시일 내에 고객에게 연락 부탁드립니다.
```

---

## ⚠️ 문제 해결

### 이메일이 발송되지 않는 경우

1. **앱 비밀번호 확인**
   - 16자리 정확히 입력했는지 확인
   - 공백 없이 입력했는지 확인

2. **Gmail 계정 확인**
   - 2단계 인증이 활성화되어 있는지 확인
   - acelaw.admin@gmail.com 계정 접속 가능한지 확인

3. **방화벽/네트워크 확인**
   - 587 포트가 열려있는지 확인
   - 회사 방화벽에서 SMTP 차단하는지 확인

4. **로그 확인**
   ```
   Tomcat 로그에서 다음 메시지 확인:
   - "이메일 설정 로드 완료"
   - "=== 이메일 발송 시작 ==="
   - "이메일 발송 성공!" 또는 에러 메시지
   ```

### 일반적인 에러 메시지

- `AuthenticationFailedException`: 앱 비밀번호가 잘못됨
- `MessagingException`: SMTP 서버 연결 실패 (네트워크/방화벽)
- `UnsupportedEncodingException`: 한글 인코딩 문제 (코드 수정 필요)

---

## 📞 지원

문제가 계속되면 다음 정보와 함께 문의하세요:
- Tomcat 콘솔 로그
- email.properties 설정 (비밀번호 제외)
- 에러 메시지 전체 내용
