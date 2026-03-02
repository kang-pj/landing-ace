<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
            content="width=device-width, initial-scale=1.0, viewport-fit=cover, interactive-widget=resizes-content">
        <title>에이스 법률사무소</title>

        <!-- SEO Meta Tags -->
        <meta name="description" content="개인회생 · 개인파산 전문 변호사가 확실한 탕감률로 보답합니다!">
        <meta name="keywords"
            content="개인회생, 개인파산, 도산전문변호사, 파산면책, 비밀보호, 최대 탕감률, 빠른진행, 기각시 수임료 환불, 사업실패, 코인, 주식, 돌려막기, 성형비, 연대보증, 개인채무, 무료상담, 전국 접수 가능">

        <!-- Open Graph Meta Tags -->
        <meta property="og:type" content="website">
        <meta property="og:title" content="에이스 법률사무소">
        <meta property="og:description" content="개인회생 · 파산 전문! 확실한 탕감률로 보답합니다.">
        <meta property="og:image" content="https://newstart-law.com/images/ace_og.png">
        <meta property="og:url" content="https://newstart-law.com">
        <meta property="og:site_name" content="에이스 법률사무소">

        <!-- Twitter Card Meta Tags -->
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:title" content="에이스 법률사무소">
        <meta name="twitter:description" content="개인회생&middot;파산 전문! 확실한 탕감률로 보답합니다.">
        <meta name="twitter:image" content="https://newstart-law.com/images/ace_og.png">

        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/images/logo.ico">
        <link rel="shortcut icon" type="image/x-icon" href="/images/logo.ico">
        <!-- Pretendard Font -->
        <link rel="preconnect" href="https://cdn.jsdelivr.net">
        <link href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css"
            rel="stylesheet">
        <!-- Swiper CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
        <!-- Common CSS -->
        <link rel="stylesheet" href="/css/common.css" />
        <!-- Naver Map API v3 -->
        <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpKeyId=sw4vg0j8dd"></script>
        <!-- 네이버 태그-->
        <meta name="naver-site-verification" content="182ca703050e33ab301c1404b6128675ee1f2704" />
        <!-- Tracking Script -->
        <script src="/js/tracking.js"></script>

    </head>

    <body>
        <!-- 상단 플로팅 배너 -->
        <div class="floating-header" id="floatingHeader">
            <div class="floating-header-container">
                <div class="floating-logo">
                    <img src="/images/logo.png" alt="ACE 법률사무소" />
                </div>

                <nav class="floating-nav">
                    <a href="#intro">AI 진단</a>
                    <a href="#service">성공사례</a>
                    <a href="#about">대표변호사</a>
                    <a href="#calculator">자주묻는질문</a>
                </nav>

                <div class="floating-contact">
                    <a href="tel:1555-1684" class="floating-phone">
                        <img src="/images/top_call_icon.png" alt="전화" />
                        1555-1684
                    </a>
                    <a href="#consultation" class="floating-cta-btn" onclick="openConsultationModal()">
                        무료 상담 신청
                    </a>
                </div>
            </div>
        </div>

        <!-- 헤더 -->
        <header class="header">
            <div class="header-container">
                <div class="logo">
                    <img src="/images/logo.png" alt="ACE 법률사무소" class="logo-box" />
                </div>

                <nav class="nav-menu">
                    <a href="#intro" onclick="event.preventDefault(); smoothScrollToSection('intro')">AI 진단</a>
                    <a href="#service" onclick="event.preventDefault(); smoothScrollToSection('service')">성공사례</a>
                    <a href="#about" onclick="event.preventDefault(); smoothScrollToSection('about')">대표변호사</a>
                    <a href="#calculator"
                        onclick="event.preventDefault(); smoothScrollToSection('calculator')">자주묻는질문</a>
                    <a href="#special" onclick="event.preventDefault(); smoothScrollToSection('special')">특별한 서비스</a>
                    <a href="#contact" onclick="event.preventDefault(); smoothScrollToSection('contact')">오시는길</a>
                </nav>

                <div class="contact-phone">
                    <img src="/images/top_call_icon.png" alt="전화" class="phone-icon" />
                    1555-1684
                </div>

                <!-- 햄버거 메뉴 버튼 (모바일용) -->
                <div class="hamburger-menu" onclick="toggleMobileNav()">
                    <div class="hamburger-line"></div>
                    <div class="hamburger-line"></div>
                    <div class="hamburger-line"></div>
                </div>
            </div>
        </header>

        <!-- 모바일 네비게이션 -->
        <div class="mobile-nav" id="mobileNav" onclick="closeMobileNav(event)">
            <div class="mobile-nav-content" onclick="event.stopPropagation()">
                <!-- 로고 추가 -->
                <div class="mobile-nav-logo">
                    <img src="/images/logo.png" alt="ACE 법률사무소" />
                </div>

                <nav class="mobile-nav-menu">
                    <a href="#intro" onclick="event.preventDefault(); scrollToSection('intro')">AI 자가진단</a>
                    <a href="#service" onclick="event.preventDefault(); scrollToSection('service')">성공사례</a>
                    <a href="#about" onclick="event.preventDefault(); scrollToSection('about')">대표변호사</a>
                    <a href="#calculator" onclick="event.preventDefault(); scrollToSection('calculator')">자주묻는질문</a>
                    <a href="#special" onclick="event.preventDefault(); scrollToSection('special')">특별한 서비스</a>
                    <a href="#contact" onclick="event.preventDefault(); scrollToSection('contact')">오시는길</a>
                </nav>

                <div class="mobile-contact">
                    <!-- <div class="mobile-contact-title">상담 문의</div> -->

                    <div class="mobile-contact-buttons">
                        <a href="#" class="mobile-contact-btn consultation"
                            onclick="openConsultationModal(); return false;">
                            <img src="/images/icon_ok.png" alt="상담" />
                            상담 예약 신청
                        </a>
                        <a href="#" class="mobile-contact-btn secondary" onclick="openKakaoTalk()">
                            <img src="/images/kakao_icon.png" alt="카카오톡" />
                            카톡 상담
                        </a>
                        <a href="tel:1555-1684" class="mobile-contact-btn primary">
                            <img src="/images/call_icon.png" alt="전화" />
                            1555-1684
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- 메인 배경 영역 -->
        <div class="main-background">
            <div class="main-container">
                <!-- 메인 타이틀 -->
                <div class="main-title">
                    <div class="title-small">과도한 빚으로 힘드실 때,</div>
                    <div class="title-large"><span class="highlight-blue">7,450억</span> 빚을 줄여준</div>
                    <div class="title-subtitle">개인회생 전문가에게 답을 찾으세요!</div>
                </div>

                <!-- 통계 섹션 -->
                <div class="stats-section">
                    <div class="stats-container">
                        <div class="stat-box">
                            <div class="stat-content-wrapper">
                                <img src="/images/won_icon.png" alt="탕감" class="stat-icon" />
                                <div class="stat-number"><span class="stat-highlight">7,450억</span><span
                                        class="stat-normal">의 빚 탕감</span></div>
                            </div>
                        </div>

                        <div class="stat-box">
                            <div class="stat-content-wrapper">
                                <img src="/images/stack_icon.png" alt="경험" class="stat-icon" />
                                <div class="stat-number"><span class="stat-highlight">1만건 이상</span><span
                                        class="stat-normal">의 압도적 경험</span></div>
                            </div>
                        </div>

                        <div class="stat-box">
                            <div class="stat-content-wrapper">
                                <img src="/images/graph_icon.png" alt="탕감률" class="stat-icon" />
                                <div class="stat-number"><span class="stat-highlight">최대 96%</span><span
                                        class="stat-normal">의 따라올 수 없는 탕감률</span></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 정부 기관 로고 섹션 -->
                <div class="government-logos">
                    <div class="logo-item">
                        <img src="/images/logo_center_01.png" alt="대한민국정부" />
                    </div>
                    <div class="logo-item">
                        <img src="/images/logo_center_02.png" alt="대법원" />
                    </div>
                    <div class="logo-item">
                        <img src="/images/logo_center_03.png" alt="신용회복위원회" />
                    </div>
                </div>
            </div>
        </div>

        <!-- 상담 신청 폼 -->
        <div class="bottom-spacer">
            <div class="consultation-form">
                <form id="mainConsultationForm" onsubmit="submitMainConsultationForm(event)">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">이름 <span class="required">*</span></label>
                            <input type="text" id="name" name="name" placeholder="예)홍길동" required="">
                        </div>
                        <div class="form-group">
                            <label for="phone">연락처 <span class="required">*</span></label>
                            <input type="tel" id="phone" name="phone" placeholder="-는 제외하고 입력" required="">
                        </div>
                        <div class="form-group">
                            <label for="debt">채무금액</label>
                            <select id="debt" name="debt">
                                <option value="">채무금액 선택</option>
                                <option value="1천만원 미만">1천만원 미만</option>
                                <option value="1천만원 ~ 3천만원">1천만원 ~ 3천만원</option>
                                <option value="3천만원 ~ 5천만원">3천만원 ~ 5천만원</option>
                                <option value="5천만원 ~ 1억원">5천만원 ~ 1억원</option>
                                <option value="1억원 이상">1억원 이상</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="income">월소득</label>
                            <select id="income" name="income">
                                <option value="">월소득 선택</option>
                                <option value="소득 없음">소득 없음</option>
                                <option value="150만원 미만">150만원 미만</option>
                                <option value="150만원 ~ 250만원">150만원 ~ 250만원</option>
                                <option value="250만원 ~ 350만원">250만원 ~ 350만원</option>
                                <option value="350만원 ~ 500만원">350만원 ~ 500만원</option>
                                <option value="500만원 이상">500만원 이상</option>
                            </select>
                        </div>
                        <button type="submit" class="submit-btn">무료 상담신청</button>
                    </div>
                </form>
                <div class="privacy-notice">
                    <input type="checkbox" id="privacy-agree" class="privacy-checkbox" required="" checked>
                    <label for="privacy-agree">개인정보 수집 및 이용에 대한 동의<a href="#" class="privacy-link">자세히</a></label>
                </div>
            </div>
        </div>

        <!-- AI 자가진단 섹션 -->
        <section id="intro" class="ai-diagnosis-section"></section>
        <div class="ai-container">
            <div class="ai-title">
                <h3>내 빚은 탕감받을 수 있을까?</h3>
                <h2>AI 자가진단으로 알아보기</h2>
                <p class="ai-subtitle">원하시는 빚 탕감 방식을 선택해 주세요!</p>
            </div>

            <div class="diagnosis-cards">
                <div class="diagnosis-card" onclick="selectDiagnosis('personal')">
                    <div class="card-content">
                        <p class="card-subtitle">일정한 소득이 있으나 여유가 없는분</p>
                        <h3 class="card-title">개인회생</h3>
                        <button class="diagnosis-start-btn">진단 시작하기</button>
                    </div>
                    <img src="/images/icon_ai_01.png" alt="개인회생" class="card-icon" />
                </div>

                <div class="diagnosis-card" onclick="selectDiagnosis('bankruptcy')">
                    <div class="card-content">
                        <p class="card-subtitle">과도한 빚으로 빚 변제가 어려우신분</p>
                        <h3 class="card-title">파산면책</h3>
                        <button class="diagnosis-start-btn">진단 시작하기</button>
                    </div>
                    <img src="/images/icon_service_02.png" alt="파산면책" class="card-icon" />
                </div>
            </div>
        </div>
        </section>

        <!-- 고객 사례 섹션 -->
        <section id="service" class="customer-cases-section"></section>
        <div class="cases-container">
            <div class="cases-header">
                <p class="cases-subtitle">10,386건의 노하우가 보여주는 결과</p>
                <h2 class="cases-title">개인회생·파산 탕감 성공사례</h2>

                <div class="case-tabs">
                    <button class="tab-btn active" onclick="filterCases('all', this)">전체</button>
                    <button class="tab-btn" onclick="filterCases('personal', this)">#개인회생</button>
                    <button class="tab-btn" onclick="filterCases('bankruptcy', this)">#개인파산</button>
                </div>
            </div>

            <div class="cases-wrapper">
                <!-- 화살표를 완전히 분리된 영역에 배치 -->
                <div class="arrow-container">
                    <button class="arrow-btn prev-btn" onclick="navigateSlide('prev')">
                        <svg viewBox="0 0 12 20">
                            <polyline points="10,2 2,10 10,18"></polyline>
                        </svg>
                    </button>
                    <button class="arrow-btn next-btn" onclick="navigateSlide('next')">
                        <svg viewBox="0 0 12 20">
                            <polyline points="2,2 10,10 2,18"></polyline>
                        </svg>
                    </button>
                </div>

                <!-- Swiper -->
                <div class="swiper casesSwiper">
                    <div class="swiper-wrapper">
                        <!-- 전체 그룹 -->
                        <div class="swiper-slide">
                            <div class="case-group" data-group="all" style="padding: 20px;">
                                <div class="cases-grid"
                                    style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px;">
                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필">
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인회생</span>
                                                    <span class="case-success">96% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">김○○님</div>
                                                    <div class="case-age">50대 여성, 주부</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                162,678,791원 탕감!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">168,770,819원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">6,092,028원</span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">월 변제액</span>
                                                <span class="value">약 160,000원</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man1.png" alt="프로필"></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인파산</span>
                                                    <span class="case-success">100% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">박○○님</div>
                                                    <div class="case-age">50대 남성, 사업자</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                530,000,000원 면책!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">530,000,000원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">0원</span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">월 변제액</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man2.png" alt="프로필"></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인회생</span>
                                                    <span class="case-success">93% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">이○○님</div>
                                                    <div class="case-age">50대 남성, 회사원</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                167,437,271원 탕감!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">180,626,375원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">13,189,104원</span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">월 변제액</span>
                                                <span class="value">약 360,000원</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 개인회생 그룹 -->
                        <div class="swiper-slide">
                            <div class="case-group" data-group="personal" style="padding: 20px;">
                                <div class="cases-grid"
                                    style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px;">
                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필">
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인회생</span>
                                                    <span class="case-success">89% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">최○○님</div>
                                                    <div class="case-age">40대 여성, 주부</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                89,500,000원 면책!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">100,500,000원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">11,000,000원</span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">월 변제액</span>
                                                <span class="value">약 300,000원</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man1.png" alt="프로필"></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인회생</span>
                                                    <span class="case-success">91% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">정○○님</div>
                                                    <div class="case-age">30대 남성, 직장인</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                73,200,000원 탕감!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">80,500,000원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">7,300,000원</span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">월 변제액</span>
                                                <span class="value">약 200,000원</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필">
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인회생</span>
                                                    <span class="case-success">88% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">한○○님</div>
                                                    <div class="case-age">40대 여성, 자영업</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                105,600,000원 면책!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">120,000,000원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">14,400,000원</span>
                                            </div>
                                            <div class="detail-row monthly-payment">
                                                <span class="label">월 변제액</span>
                                                <span class="value">약 400,000원</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 개인파산 그룹 -->
                        <div class="swiper-slide">
                            <div class="case-group" data-group="bankruptcy" style="padding: 20px;">
                                <div class="cases-grid"
                                    style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px;">
                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필">
                                            </div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인파산</span>
                                                    <span class="case-success">100% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">강○○님</div>
                                                    <div class="case-age">60대 여성, 무직</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                95,000,000원 탕감!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">95,000,000원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">0원</span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">월 변제액</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man1.png" alt="프로필"></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인파산</span>
                                                    <span class="case-success">100% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">윤○○님</div>
                                                    <div class="case-age">50대 남성, 자영업</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                320,000,000원 탕감!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">320,000,000원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">0원</span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">월 변제액</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="case-card">
                                        <div class="case-profile">
                                            <div class="profile-img"><img src="/images/man2.png" alt="프로필"></div>
                                            <div class="case-info">
                                                <div class="case-badges">
                                                    <span class="case-type">개인파산</span>
                                                    <span class="case-success">100% 탕감</span>
                                                </div>
                                                <div class="case-name-row">
                                                    <div class="case-name">조○○님</div>
                                                    <div class="case-age">40대 남성, 사업자</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="case-result">
                                            <div class="result-badge"><img src="/images/icon_money.png" alt="💰"
                                                    style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액
                                                180,000,000원 면책!</div>
                                        </div>
                                        <div class="case-details">
                                            <div class="detail-row total-debt">
                                                <span class="label">총 채무액</span>
                                                <span class="value">180,000,000원</span>
                                            </div>
                                            <div class="detail-row reduced-principal">
                                                <span class="label">탕감 후 원금</span>
                                                <span class="value">0원</span>
                                            </div>
                                            <div class="detail-row monthly-payment empty">
                                                <span class="label">월 변제액</span>
                                                <span class="value"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

        <!-- 상담 신청 알림 -->
        <div class="consultation-alerts">
            <div class="alert-row">
                <div class="alert-item"><span class="time-badge">5분 전</span>40세 김***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">10분 전</span>50세 김***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">20분 전</span>45세 박***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">30분 전</span>30세 이***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">1시간 전</span>35세 최***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">2분 전</span>42세 정***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">15분 전</span>38세 한***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">25분 전</span>55세 조***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">40분 전</span>33세 윤***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">1시간 전</span>47세 강***님이 상담 신청했습니다.</div>
            </div>
            <div class="alert-row">
                <div class="alert-item"><span class="time-badge">3시간 전</span>30세 최***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">4시간 전</span>35세 송***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">5시간 전</span>52세 김***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">6시간 전</span>29세 김***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">8시간 전</span>41세 이***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">2시간 전</span>36세 박***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">7시간 전</span>44세 장***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">9시간 전</span>31세 오***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">10시간 전</span>48세 임***님이 상담 신청했습니다.</div>
                <div class="alert-item"><span class="time-badge">12시간 전</span>39세 신***님이 상담 신청했습니다.</div>
            </div>

            <!-- 모바일용 Swiper -->
            <div class="swiper mobile-consultation-swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">5분 전</span>40세 김***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">10분 전</span>50세 김***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">20분 전</span>45세 박***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">30분 전</span>30세 이***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">1시간 전</span>35세 최***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">2분 전</span>42세 정***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">15분 전</span>38세 한***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">25분 전</span>55세 조***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">40분 전</span>33세 윤***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">1시간 전</span>47세 강***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">3시간 전</span>30세 최***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">4시간 전</span>35세 송***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">5시간 전</span>52세 김***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">6시간 전</span>29세 김***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">8시간 전</span>41세 이***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">2시간 전</span>36세 박***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">7시간 전</span>44세 장***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">9시간 전</span>31세 오***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">10시간 전</span>48세 임***님이 상담 신청했습니다.</div>
                    </div>
                    <div class="swiper-slide">
                        <div class="mobile-alert-item"><span class="time-badge">12시간 전</span>39세 신***님이 상담 신청했습니다.</div>
                    </div>
                </div>

                <!-- 스와이프 컨트롤 버튼 -->
                <!-- 버튼 제거됨 -->
            </div>
        </div>

        <!-- 대표 변호사 소개 섹션 -->
        <section id="about" class="lawyer-intro-section"></section>
        <div class="lawyer-container">
            <div class="lawyer-header">
                <p class="lawyer-subtitle">대표 변호사 소개</p>
                <h2 class="lawyer-title">개인회생·파산 전문 황선택 변호사</h2>
            </div>

            <div class="lawyer-content">
                <div class="lawyer-image-area">
                    <div class="swiper certificateSwiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="certificate-image">
                                    <img src="/images/certificate1.jpg" alt="변호사 등록증서" />
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="certificate-image">
                                    <img src="/images/ceo.png" alt="대표변호사" />
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>

                <div class="lawyer-info-area">
                    <div class="lawyer-description">
                        <p>채무 관련 모든 문제에 대하여</p>
                        <p><strong>최선의 해결책을 제시</strong>하고</p>
                        <p>채무 탕감 <strong>소송의 경험이 풍부</strong>합니다.</p>
                    </div>

                    <div class="lawyer-details">
                        <div class="detail-section">
                            <h4>학력</h4>
                            <ul>
                                <li>성균관대학교 경상대학 졸업</li>
                                <li>원광대학교 법학전문대학원 졸업</li>
                                <li>세무사자격증 보유</li>
                            </ul>
                        </div>

                        <div class="detail-section">
                            <h4>경력</h4>
                            <ul>
                                <li>현) 에이스법률사무소 대표변호사</li>
                                <li>전) 법무법인 밝음</li>
                                <li>전) 법무법인 창비</li>
                                <li>전) 황선택변호사 사무소</li>
                            </ul>
                        </div>

                        <div class="detail-section">
                            <h4>활동</h4>
                            <ul>
                                <li>화성시의회 볍률고문변호사</li>
                                <li>화성시의회 윤리심사자문위원회</li>
                                <li>한국무선인터넷솔루션협회 비즈니스자문단 전문위원</li>
                                <li>영동로구청 지방세심의위원회 심의의원</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

        <!-- 특별한 서비스 섹션 -->
        <section id="special" class="special-services-section"></section>
        <div class="services-container">
            <div class="services-header">
                <p class="services-subtitle">쉽다! 빠르다! 안전하다!</p>
                <h2 class="services-title">에이스 법률사무소의<br class="mobile-br">특별한 서비스 8가지</h2>
            </div>

            <div class="services-grid">
                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_01.png" alt="비밀 보장" />
                    </div>
                    <div class="service-text">비밀 보장</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_02.png" alt="체계적인 관리" />
                    </div>
                    <div class="service-text">체계추심 관리</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_03.png" alt="서류 철저 대행" />
                    </div>
                    <div class="service-text">서류 발급 대행</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_04.png" alt="빠른 사건 접수" />
                    </div>
                    <div class="service-text">빠른 사건 접수</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_05.png" alt="무료상담" />
                    </div>
                    <div class="service-text">무료상담</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_06.png" alt="가격 시 100% 환불" />
                    </div>
                    <div class="service-text">기각 시 100% 환불</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_07.png" alt="수임료 분납" />
                    </div>
                    <div class="service-text">수임료 분납</div>
                </div>

                <div class="service-item">
                    <div class="service-icon">
                        <img src="/images/icon_service_08.png" alt="본인별 전담 관리사" />
                    </div>
                    <div class="service-text">분야별 전문 관리단</div>
                </div>
            </div>
        </div>
        </section>

        <!-- FAQ 섹션 -->
        <section id="calculator" class="faq-section"></section>
        <div class="faq-container">
            <div class="faq-header">
                <h2 class="faq-title">자주하는 질문</h2>
            </div>

            <div class="faq-list">
                <div class="faq-item">
                    <button class="faq-question active" onclick="toggleFaq(this)">
                        <span>아무도 모르게 비밀로 진행가능한가요?</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer active">
                        <div class="faq-answer-content">
                            네, 가능합니다.<br>
                            개인회생 및 파산 등의 도산절차는 채무자 본인과 채권자 등 이해관계인 있을 때만 통지되며 가족이나 지인, 회사 등 제3자에게는 비밀을 보장합니다.
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>빚 독촉이 심한데 추심을 멈출 수 있나요?</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            개인회생 신청 시, 가능합니다.<br>
                            개인회생이 신청되면 법원을 통해 중지명령을 발부 받는데, 금지명령이 내려지면 채권자 측에서 변제 요구를 할 수 없고 독촉전화, 방문, 문자 발송 등의 모든
                            채권추심 및 변제 독촉 행위가 법적으로 금지되기 때문입니다.
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>누구나 개인회생이나 파산을 신청할 수 있나요?</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            네, 가능합니다. 다만, 아래의 경우에 해당한다면 어려울 수 있습니다.<br><br>
                            <strong>· 신청할 수 없는 경우</strong><br>
                            지속적인 수입원이 없는 경우<br>
                            최근 개인회생 및 파산 면책을 받은 경우<br>
                            빚이 너무 많은 경우 (개인회생 신청 조건은 담보 채무 15억원 이하, 무담보 채무 10억원 이하)
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>과거에 개인회생이나 파산을 진행했는데 또 진행할 수 있나요?</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            네, 가능합니다.<br>
                            개인회생 재신청은 면책 확정일로부터 5년이 경과하면 가능합니다.<br>
                            개인파산 재신청은 면책 확정일로부터 5~7년이 경과하면 가능합니다.
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <button class="faq-question" onclick="toggleFaq(this)">
                        <span>가족에게 피해는 없나요?</span>
                        <span class="faq-icon">
                            <svg viewBox="0 0 12 8">
                                <polyline points="1,1 6,6 11,1"></polyline>
                            </svg>
                        </span>
                    </button>
                    <div class="faq-answer">
                        <div class="faq-answer-content">
                            네, 전혀 없습니다.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

        <!-- 오시는 길 섹션 -->
        <section id="contact" class="location-section"></section>
        <div class="location-container">
            <div class="location-header">
                <h2 class="location-title">오시는 길</h2>

                <div class="location-info">
                    <div class="location-text">
                        <div class="location-address"><span class="label">주소:</span> 서울특별시 서초구 사임당로8길 9, 명화빌딩 2층
                        </div>
                        <div class="location-phone"><span class="label">대표번호:</span> 1555-1684</div>
                    </div>

                    <div class="location-buttons">
                        <a href="#" class="location-btn" onclick="shareLocation(event)">
                            <img src="/images/icon_share.png" alt="위치공유" />
                            위치공유
                        </a>
                        <a href="https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9" target="_blank"
                            class="location-btn">
                            <img src="/images/icon_search.png" alt="길찾기" />
                            길찾기
                        </a>
                    </div>
                </div>
            </div>

            <div class="location-map" id="map" style="width:100%;height:400px;">
                <!-- 네이버 지도가 여기에 표시됩니다 -->
            </div>
        </div>
        </section>

        <!-- 누적 탕감액 섹션 -->
        <section class="total-reduction-section">
            <div class="reduction-container">
                <div class="reduction-content">
                    <p class="reduction-subtitle">최대 탕감률 96%의 신화!</p>
                    <h2 class="reduction-title">개인회생·파산 누적 탕감액</h2>
                    <div class="amount-display">
                        <div class="wheel-picker">
                            <div class="digit-container" data-digit="0">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="1">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="2">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="comma">,</div>
                            <div class="digit-container" data-digit="3">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="4">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="5">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="comma">,</div>
                            <div class="digit-container" data-digit="6">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="7">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="8">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="comma">,</div>
                            <div class="digit-container" data-digit="9">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="10">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <div class="digit-container" data-digit="11">
                                <div class="digit-wheel">
                                    <span>0</span><span>1</span><span>2</span><span>3</span><span>4</span>
                                    <span>5</span><span>6</span><span>7</span><span>8</span><span>9</span>
                                </div>
                            </div>
                            <span class="currency">원</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 푸터 섹션 -->
        <footer class="footer-section">
            <div class="footer-container">
                <div class="footer-content">
                    <div class="footer-left">
                        <div class="company-info">
                            <h3>에이스법률사무소</h3>
                            <p>주소: 서울특별시 서초구 사임당로8길 9, 명화빌딩 2층</p>
                            <p>대표변호사: 황선택</p>
                            <p>사업자번호: 159-08-00292</p>
                            <p>대표전화: 1555-1684</p>
                        </div>
                        <div class="copyright">
                            <p>Copyright (c) 에이스법률사무소 All rights reserved</p>
                        </div>
                    </div>

                    <div class="footer-right">
                        <div class="contact-info">
                            <p>개인정보 보호 책임 담당</p>
                            <p>(전화 24시간 가능)</p>
                            <div class="phone-number">1555-1684</div>
                            <div class="ace-logo">
                                <img src="/images/logo.png" alt="ACE 법률사무소">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- PC용 하단 상담 신청 바 -->
        <div class="pc-consultation-bar">
            <div class="pc-consultation-container">
                <div class="pc-consultation-message">
                    <span class="pc-highlight">전국, 365일</span><br>
                    <span>화상상담 가능!</span>
                </div>

                <div class="pc-consultation-form">
                    <div class="pc-input-group">
                        <input type="text" placeholder="이름" class="pc-input name-input" required>
                        <div class="error-message" id="pcNameError"></div>
                        <div class="pc-privacy-check">
                            <input type="checkbox" id="pcPrivacyCheck" class="privacy-checkbox" checked>
                            <label for="pcPrivacyCheck">개인정보 수집 및 이용에 대한 동의 <a href="#"
                                    class="privacy-link">자세히</a></label>
                        </div>
                    </div>
                    <div class="pc-input-group">
                        <input type="tel" placeholder="연락처 (10~11자리 입력)" class="pc-input phone-input" maxlength="11"
                            oninput="formatPcPhoneNumber(this)" required>
                        <div class="error-message" id="pcPhoneError"></div>
                    </div>
                    <button class="pc-consultation-btn primary" onclick="submitPcConsultation()">무료 상담신청</button>
                    <button class="pc-consultation-btn secondary" onclick="openKakaoTalk()">
                        <img src="/images/icon_talk.png" alt="카카오톡">
                        카톡상담
                    </button>
                </div>
            </div>
        </div>

        <!-- 하단 상담 신청 바 -->
        <div class="bottom-consultation-bar">
            <div class="consultation-bar-container">
                <div class="mobile-toggle-header" onclick="toggleConsultationForm()">
                    <div class="consultation-message">
                        <span class="highlight">무료 상담신청</span><br>
                    </div>
                    <button class="toggle-btn" id="toggleBtn">
                        <!-- 펼치기 아이콘 (기본 상태) -->
                        <svg class="expand-icon" width="20" height="12" viewBox="0 0 20 12" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path d="M2 2L10 10L18 2" stroke="#333" stroke-width="3" stroke-linecap="round"
                                stroke-linejoin="round" />
                        </svg>
                        <!-- 닫기 아이콘 (펼쳐진 상태) -->
                        <svg class="close-icon" width="20" height="20" viewBox="0 0 20 20" fill="none"
                            xmlns="http://www.w3.org/2000/svg" style="display: none;">
                            <path d="M15 5L5 15M5 5L15 15" stroke="#333" stroke-width="3" stroke-linecap="round"
                                stroke-linejoin="round" />
                        </svg>
                    </button>
                </div>

                <div class="consultation-message desktop-message">
                    <span class="highlight">무료 상담신청</span><br>
                </div>

                <div class="consultation-form-inline" id="consultationForm">
                    <!-- 기본 입력 필드들 -->
                    <div class="form-row-mobile">
                        <div class="input-group">
                            <div class="input-with-label">
                                <label class="input-label">이름 <span class="required">*</span></label>
                                <input type="text" class="inline-input name-input" id="mobileNameInput" required
                                    oninput="validateMobileForm()" placeholder="이름을 입력하세요">
                            </div>
                        </div>
                        <div class="input-group">
                            <div class="input-with-label">
                                <label class="input-label">연락처 <span class="required">*</span></label>
                                <input type="tel" class="inline-input phone-input" id="mobilePhoneInput" required
                                    oninput="formatPhoneNumber(this); validateMobileForm();" placeholder="연락처를 입력하세요">
                            </div>
                        </div>
                    </div>

                    <!-- 확장 폼 (토글 시 보임) -->
                    <div class="expanded-form" id="expandedForm">
                        <!-- 채무액, 월소득 필드 주석처리
                        <div class="form-row-mobile">
                            <div class="input-group">
                                <select class="inline-input" id="mobileDebtAmount" style="border: 1px solid #ddd;"
                                    onchange="validateMobileForm()">
                                    <option value="">채무금액 선택</option>
                                    <option value="1000만원 미만">1000만원 미만</option>
                                    <option value="1000만원~3000만원">1000만원~3000만원</option>
                                    <option value="3000만원~5000만원">3000만원~5000만원</option>
                                    <option value="5000만원~1억원">5000만원~1억원</option>
                                    <option value="1억원 이상">1억원 이상</option>
                                </select>
                            </div>
                            <div class="input-group">
                                <select class="inline-input" id="mobileIncome" style="border: 1px solid #ddd;"
                                    onchange="validateMobileForm()">
                                    <option value="">월소득 선택</option>
                                    <option value="100만원 미만">100만원 미만</option>
                                    <option value="100만원~200만원">100만원~200만원</option>
                                    <option value="200만원~300만원">200만원~300만원</option>
                                    <option value="300만원~500만원">300만원~500만원</option>
                                    <option value="500만원 이상">500만원 이상</option>
                                </select>
                            </div>
                        </div>
                        -->

                        <div class="privacy-check-mobile">
                            <label class="privacy-check">
                                <input type="checkbox" class="privacy-checkbox" id="mobilePrivacyAgree" required
                                    onchange="validateMobileForm()" checked>
                                개인정보 수집 및 이용에 대한 동의 <a href="#" class="privacy-link">자세히</a> <span
                                    class="required">*</span>
                            </label>
                        </div>

                        <button type="button" class="mobile-submit-btn" id="mobileSubmitBtn"
                            onclick="submitMobileConsultation()" disabled>무료
                            상담신청</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- 상단 고정 버튼 컨테이너 -->
        <div class="floating-btn-container" id="floatingBtnContainer">
            <div class="floating-btn-content">
                <a href="tel:1555-1684" class="floating-btn-phone">
                    <img src="/images/call_icon.png" alt="전화" />
                    1555-1684
                </a>
                <button class="consultation-btn primary" onclick="openConsultationModal()">
                    상담하기
                </button>
                <button class="consultation-btn secondary" onclick="openKakaoTalk()">
                    <img src="/images/kakao_icon.png" alt="카카오톡">
                    카톡상담
                </button>
            </div>
        </div>

        <!-- TOP 버튼 -->
        <button class="top-button" id="topButton" onclick="scrollToTop()">
            <img src="/images/icon_top.png" alt="TOP" class="top-button-icon" />
            <div class="top-button-text">TOP</div>
        </button>

        <!-- 상담 신청 팝업 -->
        <div id="consultationPopup" class="consultation-popup-overlay">
            <div class="consultation-popup-content">
                <div class="consultation-popup-header">
                    <h2>무료 상담신청</h2>
                    <button class="consultation-popup-close" onclick="closeConsultationPopup()">×</button>
                </div>

                <div class="consultation-popup-body">
                    <form id="consultationPopupForm" onsubmit="submitConsultationForm(event)">
                        <div class="popup-form-group">
                            <label for="popupName">이름 <span class="required">*</span></label>
                            <input type="text" id="popupName" name="name" placeholder="이름을 입력해 주세요" required
                                oninput="validateSecondPopupForm()">
                        </div>

                        <div class="popup-form-group">
                            <label for="popupPhone">연락처 <span class="required">*</span></label>
                            <input type="tel" id="popupPhone" name="phone" placeholder="연락처를 입력해 주세요 (- 없이)" required
                                oninput="formatPhoneNumber(this); validateSecondPopupForm()">
                        </div>

                        <div class="popup-form-group">
                            <label for="popupDebtAmount">채무금액</label>
                            <select id="popupDebtAmount" name="debtAmount" onchange="validateSecondPopupForm()">
                                <option value="">선택해 주세요</option>
                                <option value="1000만원 미만">1000만원 미만</option>
                                <option value="1000만원~3000만원">1000만원~3000만원</option>
                                <option value="3000만원~5000만원">3000만원~5000만원</option>
                                <option value="5000만원~1억원">5000만원~1억원</option>
                                <option value="1억원 이상">1억원 이상</option>
                            </select>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupIncome">월소득</label>
                            <select id="popupIncome" name="income" onchange="validateSecondPopupForm()">
                                <option value="">선택해 주세요</option>
                                <option value="100만원 미만">100만원 미만</option>
                                <option value="100만원~200만원">100만원~200만원</option>
                                <option value="200만원~300만원">200만원~300만원</option>
                                <option value="300만원~500만원">300만원~500만원</option>
                                <option value="500만원 이상">500만원 이상</option>
                            </select>
                        </div>

                        <!-- 숨겨진 디바이스 정보 필드 -->
                        <input type="hidden" id="popupDevice" name="device" value="">

                        <div class="popup-form-group">
                            <label class="privacy-check-popup">
                                <input type="checkbox" id="popupPrivacyAgree" name="privacyAgree" required
                                    onchange="validateSecondPopupForm()" checked>
                                개인정보 수집 및 이용에 대한 동의 <a href="#" class="privacy-link">자세히</a><span
                                    class="required">*</span>
                            </label>
                        </div>

                        <button type="submit" class="consultation-submit-popup-btn" id="secondPopupSubmitBtn" disabled
                            style="background: #ccc !important; opacity: 0.6 !important; cursor: not-allowed !important; color: #999 !important;">무료
                            상담신청</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- 상담 신청 완료 팝업 -->
        <div id="consultationSuccessPopup" class="consultation-popup-overlay">
            <div class="consultation-popup-content success-popup">
                <div class="consultation-popup-header">
                    <h2>상담 신청 완료</h2>
                    <button class="consultation-popup-close" onclick="closeSuccessPopup()">×</button>
                </div>

                <div class="consultation-popup-body">
                    <div class="success-message">
                        <div class="success-icon">✓</div>
                        <p>상담 신청이 완료되었습니다.</p>
                        <p>빠른 시일 내에 연락드리겠습니다.</p>
                    </div>
                    <button class="success-confirm-btn" onclick="closeSuccessPopup()">확인</button>
                </div>
            </div>
        </div>

        <!-- AI 자가 진단 모달 -->
        <div id="aiDiagnosisModal" class="modal-overlay">
            <div class="modal-content">
                <button class="modal-close">×</button>

                <!-- 공통 헤더 -->
                <div class="modal-header">
                    <h2 class="modal-title">AI 진단으로 알아보기</h2>
                    <p class="modal-subtitle">에이스법률사무소가 진행한 개인회생 법률에 근거하여<br>회생 가능성을 진단해 드려요.</p>
                </div>

                <!-- 공통 디바이더 -->
                <div class="modal-divider"></div>

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
                    <!-- 진단 단계 표시 -->
                    <div class="diagnosis-steps">
                        <div class="step active">채무액</div>
                        <div class="step non-active">월 소득</div>
                        <div class="step non-active">보유재산</div>
                        <div class="step non-active">부양가족</div>
                    </div>

                    <!-- 질문 영역 -->
                    <div class="question-area">
                        <h3 class="question-title">Q. 채무 금액이 얼마인가요?</h3>

                        <div class="input-area">
                            <input type="text" id="debtAmount" class="debt-input" placeholder="예) 2000"
                                oninput="validateInput()" />
                            <span class="unit">만 원</span>
                        </div>

                        <button class="modal-next-btn disabled" id="nextBtn" onclick="nextQuestion()"
                            disabled>다음</button>
                    </div>
                </div>

                <!-- 세 번째 화면: 월 소득 질문 -->
                <div id="incomeScreen" class="screen">
                    <!-- 진단 단계 표시 -->
                    <div class="diagnosis-steps">
                        <div class="step completed">채무액</div>
                        <div class="step active">월 소득</div>
                        <div class="step non-active">보유재산</div>
                        <div class="step non-active">부양가족</div>
                    </div>

                    <!-- 질문 영역 -->
                    <div class="question-area">
                        <h3 class="question-title">Q. 월 소득은 얼마인가요?</h3>

                        <div class="input-area">
                            <input type="text" id="incomeAmount" class="debt-input" placeholder="예) 200"
                                oninput="validateIncomeInput()" />
                            <span class="unit">만 원</span>
                        </div>

                        <button class="modal-next-btn disabled" id="incomeNextBtn" onclick="nextIncomeQuestion()"
                            disabled>다음</button>
                    </div>
                </div>

                <!-- 네 번째 화면: 보유재산 질문 -->
                <div id="assetsScreen" class="screen">
                    <!-- 진단 단계 표시 -->
                    <div class="diagnosis-steps">
                        <div class="step completed">채무액</div>
                        <div class="step completed">월 소득</div>
                        <div class="step active">보유재산</div>
                        <div class="step non-active">부양가족</div>
                    </div>

                    <!-- 질문 영역 -->
                    <div class="question-area">
                        <h3 class="question-title">Q. 본인 명의 부동산이 있으신가요?</h3>

                        <div class="choice-area">
                            <div class="choice-option" onclick="selectAssets(true)">
                                <div class="choice-content">
                                    <div class="choice-icon">⭕</div>
                                    <div class="choice-text">네</div>
                                </div>
                            </div>
                            <div class="choice-option" onclick="selectAssets(false)">
                                <div class="choice-content">
                                    <div class="choice-icon">❌</div>
                                    <div class="choice-text">아니오</div>
                                </div>
                            </div>
                        </div>

                        <button class="modal-next-btn disabled" id="assetsNextBtn" onclick="nextAssetsQuestion()"
                            disabled>다음</button>
                    </div>
                </div>

                <!-- 다섯 번째 화면: 부양가족 질문 -->
                <div id="dependentsScreen" class="screen">
                    <!-- 진단 단계 표시 -->
                    <div class="diagnosis-steps">
                        <div class="step completed">채무액</div>
                        <div class="step completed">월 소득</div>
                        <div class="step completed">보유재산</div>
                        <div class="step active">부양가족</div>
                    </div>

                    <!-- 질문 영역 -->
                    <div class="question-area">
                        <h3 class="question-title">Q. 부양가족이 있으신가요?</h3>

                        <div class="choice-area">
                            <div class="choice-option" onclick="selectDependents(true)">
                                <div class="choice-content">
                                    <div class="choice-icon">⭕</div>
                                    <div class="choice-text">네</div>
                                </div>
                            </div>
                            <div class="choice-option" onclick="selectDependents(false)">
                                <div class="choice-content">
                                    <div class="choice-icon">❌</div>
                                    <div class="choice-text">아니오</div>
                                </div>
                            </div>
                        </div>

                        <button class="modal-next-btn disabled" id="dependentsNextBtn"
                            onclick="nextDependentsQuestion()" disabled>다음</button>
                    </div>
                </div>

                <!-- 여섯 번째 화면: 로딩 -->
                <div id="loadingScreen" class="screen">
                    <div class="loading-area">
                        <div class="loading-spinner">
                            <div class="spinner-dots">
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                                <div class="spinner-dot"></div>
                            </div>
                        </div>
                        <div class="loading-text">
                            <h3>AI 진단 중이에요.</h3>
                            <p>잠시만 기다려 주세요.</p>
                        </div>
                    </div>
                </div>

                <!-- 일곱 번째 화면: 상담 신청 -->
                <div id="consultationScreen" class="screen">
                    <div class="consultation-area">
                        <div class="consultation-result">
                            <h3><span id="diagnosisResultType">개인회생</span> <span class="highlight">신청이 가능</span>합니다.
                            </h3>
                        </div>

                        <div class="consultation-form-area">
                            <div class="form-group">
                                <div class="input-with-label">
                                    <span class="input-label">이름</span>
                                    <input type="text" id="consultName" placeholder="예) 홍길동"
                                        oninput="validateConsultationForm()" />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="input-with-label">
                                    <span class="input-label">휴대폰번호</span>
                                    <input type="tel" id="consultPhone" placeholder="- 는 제외하고 입력" maxlength="11"
                                        oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 11); validateConsultationForm()" />
                                </div>
                            </div>

                            <div class="privacy-agreement">
                                <label class="checkbox-label">
                                    <input type="checkbox" id="privacyAgree" onchange="validateConsultationForm()"
                                        checked />
                                    <span class="checkmark"></span>
                                    개인정보 수집 및 이용에 대한 동의 <span class="privacy-link"> 자세히</span>
                                </label>
                            </div>

                            <button class="consultation-submit-btn disabled" id="consultationSubmitBtn"
                                onclick="submitConsultation()" disabled>무료 상담 신청</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 상담 신청 성공 모달 -->
        <div id="successModal" class="modal-overlay">
            <div class="modal-content success-modal-content">
                <button class="modal-close" onclick="closeSuccessModal()">×</button>

                <div class="success-popup">
                    <div class="success-icon-wrapper">
                        <div class="success-icon-circle">
                            <img src="/images/icon_ok.png" alt="완료" class="success-icon-img">
                        </div>
                    </div>

                    <div class="success-message">
                        <h3>상담 신청 완료</h3>
                        <p>빠르게 안내드리겠습니다.</p>
                    </div>

                    <button class="success-confirm-btn" onclick="closeSuccessModal()">확인</button>
                </div>
            </div>
        </div>

        <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

        <!-- Common JS -->
        <script src="/js/common.js"></script>

        <!-- 상담 신청 팝업 -->
        <div class="consultation-popup-overlay" id="consultationPopup">
            <div class="consultation-popup-content">
                <div class="consultation-popup-header">
                    <h2>무료 상담 신청</h2>
                    <button class="consultation-popup-close" onclick="closeConsultationPopup()">&times;</button>
                </div>
                <div class="consultation-popup-body">
                    <form id="consultationPopupForm" onsubmit="submitConsultationForm(event)">
                        <div class="popup-form-group">
                            <label for="popupName">이름 *</label>
                            <input type="text" id="popupName" name="name" placeholder="예) 홍길동" required
                                oninput="validatePopupForm()">
                        </div>

                        <div class="popup-form-group">
                            <label for="popupPhone">연락처 *</label>
                            <input type="tel" id="popupPhone" name="phone" placeholder="- 는 제외하고 입력"
                                oninput="formatPhoneNumber(this); validatePopupForm()" required>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupDebt">채무금액</label>
                            <select id="popupDebt" name="debtAmount" onchange="validatePopupForm()">
                                <option value="">채무금액을 선택해주세요</option>
                                <option value="1000만원 미만">1000만원 미만</option>
                                <option value="1000만원~3000만원">1000만원~3000만원</option>
                                <option value="3000만원~5000만원">3000만원~5000만원</option>
                                <option value="5000만원~1억원">5000만원~1억원</option>
                                <option value="1억원 이상">1억원 이상</option>
                            </select>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupIncome">월소득</label>
                            <select id="popupIncome" name="income" onchange="validatePopupForm()">
                                <option value="">월소득을 선택해주세요</option>
                                <option value="100만원 미만">100만원 미만</option>
                                <option value="100만원~200만원">100만원~200만원</option>
                                <option value="200만원~300만원">200만원~300만원</option>
                                <option value="300만원~500만원">300만원~500만원</option>
                                <option value="500만원 이상">500만원 이상</option>
                            </select>
                        </div>

                        <input type="hidden" id="popupDevice" name="device" value="PC">

                        <div class="privacy-check-popup">
                            <input type="checkbox" id="popupPrivacyAgree" name="privacyAgree" required
                                onchange="validatePopupForm()" checked>
                            <label for="popupPrivacyAgree">개인정보 수집 및 이용에 대한 동의 <a href="#"
                                    class="privacy-link">자세히</a><span class="required">*</span></label>
                        </div>

                        <button type="submit" class="consultation-submit-popup-btn" id="popupSubmitBtn"
                            disabled="disabled" style="background-color: #cccccc !important; 
                                       opacity: 0.6 !important; 
                                       cursor: not-allowed !important; 
                                       color: #999999 !important;
                                       pointer-events: none !important;">
                            무료 상담 신청
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- 상담 신청 성공 팝업 -->
        <div class="consultation-popup-overlay" id="consultationSuccessPopup">
            <div class="consultation-popup-content success-popup">
                <div class="consultation-popup-header">
                    <h2>상담 신청 완료</h2>
                    <button class="consultation-popup-close" onclick="closeSuccessPopup()">&times;</button>
                </div>
                <div class="consultation-popup-body">
                    <div class="success-message">
                        <div class="success-icon">✓</div>
                        <p><strong>상담 신청이 완료되었습니다!</strong></p>
                        <p>빠른 시일 내에 전문 상담사가<br>연락드리겠습니다.</p>
                        <button class="success-confirm-btn" onclick="closeSuccessPopup()">확인</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- 키패드 대응 CSS -->
        <style>
            /* 키패드가 열렸을 때 추가 스타일 */
            body.keyboard-open {
                position: fixed;
                width: 100%;
            }

            /* iOS Safari 키패드 대응 */
            @supports (-webkit-touch-callout: none) {

                body.keyboard-open .floating-btn-container,
                body.keyboard-open .bottom-consultation-bar {
                    display: none !important;
                }
            }

            /* 상담 신청 팝업 스타일 */
            .consultation-popup-overlay {
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: rgba(0, 0, 0, 0.5);
                z-index: 2000;
                display: none;
                align-items: center;
                justify-content: center;
                opacity: 0;
                transition: opacity 0.3s ease;
            }

            .consultation-popup-overlay.show {
                display: flex;
                opacity: 1;
            }

            .consultation-popup-content {
                background: white;
                border-radius: 15px;
                width: 90%;
                max-width: 500px;
                max-height: 90vh;
                overflow-y: auto;
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
                transform: scale(0.9);
                transition: transform 0.3s ease;
            }

            .consultation-popup-overlay.show .consultation-popup-content {
                transform: scale(1);
            }

            .consultation-popup-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 25px 30px 20px;
                border-bottom: 1px solid #e9ecef;
            }

            .consultation-popup-header h2 {
                font-size: 24px;
                font-weight: bold;
                color: #333;
                margin: 0;
            }

            .consultation-popup-close {
                background: none;
                border: none;
                font-size: 28px;
                color: #999;
                cursor: pointer;
                padding: 0;
                width: 30px;
                height: 30px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 50%;
                transition: all 0.3s;
            }

            .consultation-popup-close:hover {
                background: #f5f5f5;
                color: #333;
            }

            .consultation-popup-body {
                padding: 30px;
            }

            .popup-form-group {
                margin-bottom: 25px;
            }

            .popup-form-group label {
                display: block;
                font-size: 16px;
                font-weight: 600;
                color: #333;
                margin-bottom: 8px;
            }

            .popup-form-group input,
            .popup-form-group select {
                width: 100%;
                padding: 15px 18px;
                border: 2px solid #e5e5e5;
                border-radius: 8px;
                font-size: 16px;
                background: white;
                color: #333;
                transition: border-color 0.3s;
                box-sizing: border-box;
            }

            .popup-form-group input:focus,
            .popup-form-group select:focus {
                outline: none;
                border-color: #4865FF;
                background: white;
            }

            .popup-form-group input::placeholder {
                color: #aaa;
            }

            .popup-form-group select {
                color: #666;
            }

            .popup-form-group select:focus,
            .popup-form-group select:valid {
                color: #333;
            }

            .privacy-check-popup {
                display: flex;
                align-items: center;
                gap: 10px;
                font-size: 14px;
                color: #666;
                cursor: pointer;
                margin-bottom: 20px;
            }

            .privacy-check-popup input[type="checkbox"] {
                width: auto;
                margin: 0;
            }

            /* 성공 팝업 스타일 */
            .success-popup {
                text-align: center;
            }

            .success-message {
                padding: 20px 0;
            }

            .success-icon {
                width: 80px;
                height: 80px;
                background: #4865FF;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 40px;
                color: white;
                margin: 0 auto 20px;
            }

            .success-message p {
                font-size: 18px;
                color: #333;
                margin: 10px 0;
                line-height: 1.5;
            }

            .success-confirm-btn {
                background: #4865FF;
                color: white;
                border: none;
                padding: 15px 40px;
                border-radius: 10px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background 0.3s;
                margin-top: 20px;
            }

            .success-confirm-btn:hover {
                background: #365a9b;
            }

            /* 모바일 팝업 스타일 */
            @media (max-width: 768px) {
                .consultation-popup-content {
                    width: 95%;
                    margin: 20px;
                }

                .consultation-popup-header {
                    padding: 20px 25px 15px;
                }

                .consultation-popup-header h2 {
                    font-size: 20px;
                }

                .consultation-popup-body {
                    padding: 25px;
                }

                .popup-form-group {
                    margin-bottom: 20px;
                }

                .popup-form-group label {
                    font-size: 15px;
                }

                .popup-form-group input,
                .popup-form-group select {
                    padding: 12px 15px;
                    font-size: 15px;
                }

                .consultation-submit-popup-btn {
                    padding: 15px;
                    font-size: 16px;
                }
            }
        </style>

        <script>
            // 성공 모달 관련 함수들
            function showSuccessModal() {
                const successModal = document.getElementById('successModal');
                if (successModal) {
                    successModal.style.display = 'flex';
                    setTimeout(() => {
                        successModal.classList.add('show');
                    }, 10);
                    document.body.style.overflow = 'hidden';
                }
            }

            function closeSuccessModal() {
                const successModal = document.getElementById('successModal');
                if (successModal) {
                    successModal.classList.remove('show');
                    setTimeout(() => {
                        successModal.style.display = 'none';
                        document.body.style.overflow = '';
                    }, 300);
                }
            }

            // 네이버 지도 초기화
            function initNaverMap() {
                try {
                    // 에이스법률사무소 위치 좌표 (서울특별시 서초구 사임당로8길 9, 명화빌딩 2층)
                    var aceLocation = new naver.maps.LatLng(37.4838, 127.0084);

                    // 지도 옵션 설정
                    var mapOptions = {
                        center: aceLocation,
                        zoom: 17,
                        mapTypeId: naver.maps.MapTypeId.NORMAL,
                        zoomControl: false,  // 줌 컨트롤 비활성화
                        zoomControlOptions: {
                            position: naver.maps.Position.TOP_RIGHT,
                            style: naver.maps.ZoomControlStyle.SMALL
                        },
                        mapDataControl: false,
                        scaleControl: false,  // 스케일 컨트롤 비활성화
                        logoControl: true,
                        mapTypeControl: false,
                        minZoom: 17,  // 최소 줌 레벨을 현재 줌과 동일하게
                        maxZoom: 17,  // 최대 줌 레벨을 현재 줌과 동일하게
                        draggable: false,  // 드래그 비활성화
                        pinchZoom: false,  // 핀치 줌 비활성화
                        scrollWheel: false,  // 스크롤 휠 줌 비활성화
                        keyboardShortcuts: false,  // 키보드 단축키 비활성화
                        disableDoubleClickZoom: true,  // 더블클릭 줌 비활성화
                        disableDoubleTapZoom: true,  // 더블탭 줌 비활성화
                        disableTwoFingerTapZoom: true  // 두 손가락 탭 줌 비활성화
                    };

                    // 지도 생성
                    var map = new naver.maps.Map(document.getElementById('map'), mapOptions);

                    // 커스텀 마커 아이콘 생성 (더 큰 크기로 명칭 강조)
                    var marker = new naver.maps.Marker({
                        position: aceLocation,
                        map: map,
                        title: '에이스법률사무소',
                        icon: {
                            content: [
                                '<div style="position: relative;">',
                                '   <div style="',
                                '       background: linear-gradient(135deg, #4865FF 0%, #667EEA 100%);',
                                '       color: white;',
                                '       padding: 10px 16px;',
                                '       border-radius: 25px;',
                                '       font-size: 14px;',
                                '       font-weight: bold;',
                                '       box-shadow: 0 4px 12px rgba(72, 101, 255, 0.4);',
                                '       border: 2px solid white;',
                                '       white-space: nowrap;',
                                '       text-align: center;',
                                '       font-family: Pretendard, sans-serif;',
                                '   ">',
                                '       🏢 에이스법률사무소',
                                '   </div>',
                                '   <div style="',
                                '       position: absolute;',
                                '       bottom: -8px;',
                                '       left: 50%;',
                                '       transform: translateX(-50%);',
                                '       width: 0;',
                                '       height: 0;',
                                '       border-left: 8px solid transparent;',
                                '       border-right: 8px solid transparent;',
                                '       border-top: 8px solid #4865FF;',
                                '   "></div>',
                                '</div>'
                            ].join(''),
                            anchor: new naver.maps.Point(85, 45)
                        }
                    });

                    // 정보창 생성
                    var infoWindow = new naver.maps.InfoWindow({
                        content: [
                            '<div style="padding: 20px; min-width: 280px; line-height: 1.6; font-family: Pretendard, sans-serif;">',
                            '   <div style="font-size: 18px; font-weight: bold; color: #333; margin-bottom: 12px; text-align: center;">',
                            '       🏢 에이스법률사무소',
                            '   </div>',
                            '   <div style="font-size: 14px; color: #666; margin-bottom: 10px; text-align: center;">',
                            '       📍 서울특별시 서초구 사임당로8길 9<br>',
                            '       &nbsp;&nbsp;&nbsp;&nbsp;명화빌딩 2층',
                            '   </div>',
                            '   <div style="font-size: 16px; color: #4865FF; font-weight: bold; margin-bottom: 15px; text-align: center;">',
                            '       📞 1555-1684',
                            '   </div>',
                            '   <div style="display: flex; gap: 10px; justify-content: center;">',
                            '       <a href="tel:1555-1684" style="background: #4865FF; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">📞 전화걸기</a>',
                            '       <a href="https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9" target="_blank" style="background: #03C75A; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">🗺️ 길찾기</a>',
                            '   </div>',
                            '</div>'
                        ].join('')
                    });

                    // 마커 클릭 이벤트
                    naver.maps.Event.addListener(marker, 'click', function () {
                        if (infoWindow.getMap()) {
                            infoWindow.close();
                        } else {
                            infoWindow.open(map, marker);
                        }
                    });

                    // 지도 클릭 시 정보창 닫기
                    naver.maps.Event.addListener(map, 'click', function () {
                        infoWindow.close();
                    });

                    // 지도 로드 완료 후 잠시 정보창 표시
                    naver.maps.Event.addListener(map, 'idle', function () {
                        setTimeout(function () {
                            infoWindow.open(map, marker);
                            setTimeout(function () {
                                infoWindow.close();
                            }, 4000); // 4초 후 자동 닫기
                        }, 1000);
                    });

                    console.log('네이버 지도가 성공적으로 초기화되었습니다.');

                } catch (error) {
                    console.error('네이버 지도 초기화 중 오류 발생:', error);
                    showAlternativeMap();
                }
            }

            // 페이지 로드 시 지도 초기화
            document.addEventListener('DOMContentLoaded', function () {
                if (typeof naver !== 'undefined' && naver.maps) {
                    initNaverMap();
                } else {
                    console.error('네이버 지도 API가 로드되지 않았습니다.');
                }
            });

            // 대체 지도 표시 함수
            function showAlternativeMap() {
                const mapContainer = document.getElementById('map');
                if (mapContainer) {
                    mapContainer.innerHTML = `
                        <div style="
                            width: 100%;
                            height: 100%;
                            background: #f0f0f0;
                            display: flex;
                            flex-direction: column;
                            align-items: center;
                            justify-content: center;
                            border-radius: 10px;
                            border: 2px dashed #ddd;
                            text-align: center;
                            padding: 20px;
                        ">
                            <div style="font-size: 18px; font-weight: bold; color: #333; margin-bottom: 10px;">
                                📍 에이스법률사무소
                            </div>
                            <div style="font-size: 14px; color: #666; margin-bottom: 15px; line-height: 1.4;">
                                서울특별시 서초구 사임당로8길 9<br>
                                명화빌딩 2층
                            </div>
                            <div style="display: flex; gap: 10px; flex-wrap: wrap; justify-content: center;">
                                <a href="https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9" target="_blank" 
                                   style="
                                       background: #03C75A;
                                       color: white;
                                       padding: 8px 16px;
                                       border-radius: 6px;
                                       text-decoration: none;
                                       font-size: 14px;
                                       font-weight: 500;
                                   ">
                                    네이버 지도
                                </a>
                                <a href="https://map.kakao.com/link/search/서울특별시 서초구 사임당로8길 9" target="_blank"
                                   style="
                                       background: #FEE500;
                                       color: #000;
                                       padding: 8px 16px;
                                       border-radius: 6px;
                                       text-decoration: none;
                                       font-size: 14px;
                                       font-weight: 500;
                                   ">
                                    카카오맵
                                </a>
                            </div>
                        </div>
                    `;
                }
            }

            // 위치공유 함수
            function shareLocation(event) {
                event.preventDefault();

                const locationUrl = 'https://map.naver.com/p/search/서울특별시 서초구 사임당로8길 9';
                const locationText = '에이스법률사무소 - 서울특별시 서초구 사임당로8길 9, 명화빌딩 2층';

                // Web Share API 지원 여부 확인
                if (navigator.share) {
                    navigator.share({
                        title: '에이스법률사무소',
                        text: locationText,
                        url: locationUrl
                    }).then(() => {
                        console.log('위치 공유 성공');
                    }).catch((error) => {
                        console.log('위치 공유 취소:', error);
                    });
                } else {
                    // Web Share API를 지원하지 않는 경우 클립보드에 복사
                    if (navigator.clipboard) {
                        navigator.clipboard.writeText(locationUrl).then(() => {
                            alert('위치 링크가 클립보드에 복사되었습니다.');
                        }).catch(() => {
                            alert('위치 링크: ' + locationUrl);
                        });
                    } else {
                        alert('위치 링크: ' + locationUrl);
                    }
                }
            }

            // 개인정보 약관 모달 열기
            function openPrivacyModal(event) {
                if (event) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                const modal = document.getElementById('privacyModal');
                if (modal) {
                    modal.style.display = 'flex';
                    setTimeout(() => {
                        modal.classList.add('show');
                    }, 10);
                    document.body.style.overflow = 'hidden';
                }
            }

            // 개인정보 약관 모달 닫기
            function closePrivacyModal() {
                const modal = document.getElementById('privacyModal');
                if (modal) {
                    modal.classList.remove('show');
                    setTimeout(() => {
                        modal.style.display = 'none';
                        document.body.style.overflow = '';
                    }, 300);
                }
            }

            // 페이지 로드 시 모든 "자세히" 링크에 이벤트 연결
            document.addEventListener('DOMContentLoaded', function () {
                const privacyLinks = document.querySelectorAll('.privacy-link');
                privacyLinks.forEach(link => {
                    link.addEventListener('click', openPrivacyModal);
                });

                // 모달 외부 클릭 시 닫기
                const privacyModal = document.getElementById('privacyModal');
                if (privacyModal) {
                    privacyModal.addEventListener('click', function (event) {
                        if (event.target === privacyModal) {
                            closePrivacyModal();
                        }
                    });
                }
            });
        </script>

        <!-- 개인정보 약관 모달 -->
        <div id="privacyModal" class="consultation-popup-overlay" style="z-index: 100000;">
            <div class="consultation-popup-content" style="max-width: 600px;">
                <div class="consultation-popup-header">
                    <h2>개인정보 수집 및 이용 동의</h2>
                    <button class="consultation-popup-close" onclick="closePrivacyModal()">&times;</button>
                </div>
                <div class="consultation-popup-body" style="padding: 30px;">
                    <div style="line-height: 1.8; color: #333;">
                        <p style="margin-bottom: 20px;">
                            <strong style="font-size: 16px;">○ 개인정보 수집/이용 목적</strong><br>
                            문의에 대한 다양한 정보 제공
                        </p>

                        <p style="margin-bottom: 20px;">
                            <strong style="font-size: 16px;">○ 수집하는 개인정보의 항목</strong><br>
                            성명, 연락처
                        </p>

                        <p style="margin-bottom: 20px; padding-left: 20px; color: #666; font-size: 14px;">
                            ※ 상담예약서비스 이용과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.<br>
                            - 서비스이용기록, 접속로그, 쿠키, 접속IP정보
                        </p>

                        <p style="margin-bottom: 20px;">
                            <strong style="font-size: 16px;">○ 개인정보의 보유 및 이용기간</strong><br>
                            - 보존기간은 5년이며, 정보 제공자가 삭제를 요청할 경우 즉시 파기합니다.<br>
                            - 고객님의 정보는 개인정보 보호법에 따라 보호되며 위의 이용목적 외에 별도로 사용하지 않을 것을 약속드립니다.
                        </p>
                    </div>
                    <button class="success-confirm-btn" onclick="closePrivacyModal()"
                        style="margin-top: 20px; width: 100%;">확인</button>
                </div>
            </div>
        </div>

        <!-- 네이버 애널리틱스 -->
        <script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
        <script type="text/javascript">
            if (!wcs_add) var wcs_add = {};
            wcs_add["wa"] = "s_151455092998";
            if (!_nasa) var _nasa = {};
            if (window.wcs) { wcs.inflow(); wcs_do(); }
        </script>
    </body>

    </html>