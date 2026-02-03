<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover, interactive-widget=resizes-content">
    <title>ACE 법무법인</title>
    
    <!-- Pretendard Font -->
    <link rel="preconnect" href="https://cdn.jsdelivr.net">
    <link href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css" rel="stylesheet">
    
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    
    <!-- 커스텀 CSS -->
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <!-- 헤더 -->
    <header class="header">
        <div class="header-container">
            <div class="logo">
                <div class="logo-box">ACE</div>
            </div>
            <nav class="nav">
                <ul class="nav-links">
                    <li><a href="#service">서비스</a></li>
                    <li><a href="#cases">고객사례</a></li>
                    <li><a href="#about">회사소개</a></li>
                </ul>
                <div class="contact-info">
                    <a href="tel:1555-1684" class="phone-number">1555-1684</a>
                    <button class="consultation-btn" onclick="openConsultationModal()">상담하기</button>
                </div>
            </nav>
        </div>
    </header>

    <!-- 메인 콘텐츠 -->
    <main>
        <!-- AI 자가진단 섹션 -->
        <section class="ai-diagnosis-section">
            <div class="ai-container">
                <div class="ai-title">
                    <h3>내 빚은 탕감받을 수 있을까?</h3>
                    <h2>AI 자가진단으로 알아보기</h2>
                    <p class="ai-subtitle">원하시는 빚 탕감 방식을 선택해 주세요!</p>
                </div>

                <div class="diagnosis-cards">
                    <div class="diagnosis-card" onclick="testModal()" style="cursor: pointer; padding: 20px 40px; margin: 10px; border-radius: 10px; background: #fff;">
                        <div class="card-content">
                            <p class="card-subtitle">일정한 소득이 있으나 여유가 없는분</p>
                            <h3 class="card-title">개인회생</h3>
                        </div>
                        <img src="/images/icon_ai_01.png" alt="개인회생" class="card-icon" />
                    </div>

                    <div class="diagnosis-card" onclick="testModal()" style="cursor: pointer; padding: 20px 40px; margin: 10px; border-radius: 10px; background: #fff;">
                        <div class="card-content">
                            <p class="card-subtitle">과도한 빚으로 빚 변제가 어려우신분</p>
                            <h3 class="card-title">파산면책</h3>
                        </div>
                        <img src="/images/icon_service_02.png" alt="파산면책" class="card-icon" />
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- AI 자가 진단 모달 -->
    <div id="aiDiagnosisModal" class="modal-overlay">
        <div class="modal-content">
            <button class="modal-close" onclick="closeModal()">×</button>
            
            <!-- 공통 헤더 -->
            <div class="modal-header">
                <h2 class="modal-title">AI 진단으로 알아보기</h2>
                <p class="modal-subtitle">에이스법률사무소가 진행한 개인회생 법률에 근거하여<br>회생 가능성을 진단해 드려요.</p>
            </div>

            <!-- 첫 번째 화면: 진단 시작 -->
            <div id="startScreen" class="screen active">
                <div class="modal-body">
                    <div class="modal-icon"></div>
                    <div class="modal-description">
                        <span class="highlight">개인회생</span>으로 AI진단을 시작합니다.
                    </div>
                    <button class="diagnosis-start-btn" onclick="startDiagnosis()">진단 시작하기</button>
                </div>
            </div>

            <!-- 두 번째 화면: 질문 -->
            <div id="questionScreen" class="screen">
                <div class="question-area">
                    <h3 class="question-title">Q. 채무 금액이 얼마인가요?</h3>
                    <div class="input-area">
                        <input type="text" id="debtAmount" class="debt-input" placeholder="예) 2000" />
                        <span class="unit">만 원</span>
                    </div>
                    <button class="modal-next-btn" onclick="alert('AI 진단 기능 구현 중입니다')">다음</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    
    <!-- 커스텀 JavaScript -->
    <script src="/js/main.js"></script>
</body>
</html>