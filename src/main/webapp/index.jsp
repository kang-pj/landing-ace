<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
            content="width=device-width, initial-scale=1.0, viewport-fit=cover, interactive-widget=resizes-content">
        <title>ACE 법률사무소</title>
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
                    <a href="#intro">AI 진단</a>
                    <a href="#service">성공사례</a>
                    <a href="#about">대표변호사</a>
                    <a href="#calculator">자주묻는질문</a>
                    <a href="#special">특별한 서비스</a>
                    <a href="#contact">오시는길</a>
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

                <nav class="mobile-nav-menu">
                    <a href="#intro" onclick="event.preventDefault(); scrollToSection('intro')">AI 자가진단</a>
                    <a href="#service" onclick="event.preventDefault(); scrollToSection('service')">성공사례</a>
                    <a href="#about" onclick="event.preventDefault(); scrollToSection('about')">대표변호사</a>
                    <a href="#calculator" onclick="event.preventDefault(); scrollToSection('calculator')">자주묻는질문</a>
                    <a href="#special" onclick="event.preventDefault(); scrollToSection('special')">특별한 서비스</a>
                    <a href="#contact" onclick="event.preventDefault(); scrollToSection('contact')">오시는길</a>
                </nav>

                <div class="mobile-contact">
                    <div class="mobile-contact-title">상담 문의</div>
                    <a href="tel:1555-1684" class="mobile-contact-phone">
                        <img src="/images/top_call_icon.png" alt="전화" />
                        1555-1684
                    </a>

                    <div class="mobile-contact-buttons">
                        <a href="tel:1555-1684" class="mobile-contact-btn primary">
                            <img src="/images/call_icon.png" alt="전화" />
                            전화 상담
                        </a>
                        <a href="#" class="mobile-contact-btn secondary" onclick="openKakaoTalk()">
                            <img src="/images/kakao_icon.png" alt="카카오톡" />
                            카카오톡 상담
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
                            <select id="debt" name="debt" required="">
                                <option value="">채무금액 선택</option>
                                <option value="1000">1천만원 미만</option>
                                <option value="3000">1천만원 ~ 3천만원</option>
                                <option value="5000">3천만원 ~ 5천만원</option>
                                <option value="10000">5천만원 ~ 1억원</option>
                                <option value="over">1억원 이상</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="income">월소득</label>
                            <select id="income" name="income" required="">
                                <option value="">월소득 선택</option>
                                <option value="0">소득 없음</option>
                                <option value="150">150만원 미만</option>
                                <option value="250">150만원 ~ 250만원</option>
                                <option value="350">250만원 ~ 350만원</option>
                                <option value="500">350만원 ~ 500만원</option>
                                <option value="over">500만원 이상</option>
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
                <div class="diagnosis-card" onclick="selectDiagnosis('personal')"
                    style="cursor: pointer; padding: 20px 40px; margin: 10px; border-radius: 10px; background: #fff;">
                    <div class="card-content">
                        <p class="card-subtitle">일정한 소득이 있으나 여유가 없는분</p>
                        <h3 class="card-title">개인회생</h3>
                    </div>
                    <img src="/images/icon_ai_01.png" alt="개인회생" class="card-icon" />
                </div>

                <div class="diagnosis-card" onclick="selectDiagnosis('bankruptcy')"
                    style="cursor: pointer; padding: 20px 40px; margin: 10px; border-radius: 10px; background: #fff;">
                    <div class="card-content">
                        <p class="card-subtitle">과도한 빚으로 빚 변제가 어려우신분</p>
                        <h3 class="card-title">파산면책</h3>
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
                        <p>채무에 관련해 힘 다양한 문제에 대하여</p>
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
                        <div class="location-address"><span class="label">주소:</span> 서울특별시 서초구 사임당로17길 9, 2층 (반포동)
                        </div>
                        <div class="location-phone"><span class="label">대표번호:</span> 1555-1684</div>
                    </div>

                    <div class="location-buttons">
                        <a href="#" class="location-btn" onclick="shareLocation(event)">
                            <img src="/images/icon_share.png" alt="위치공유" />
                            위치공유
                        </a>
                        <a href="https://map.naver.com/p/directions/-/14135817.8893127,4516088.8840108,%EC%97%90%EC%9D%B4%EC%8A%A4%EB%B2%95%EB%AC%B4%EB%B2%95%EC%9D%B8,1862068169,PLACE_POI/-/transit?c=15.00,0,0,0,dh"
                            target="_blank" class="location-btn">
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
                            <p>주소: 서울특별시 서초구 사평대로28길 2층 (방배동)</p>
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
                                <img src="/images/logo_gray.png" alt="ACE 법률사무소">
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
                        <div class="pc-privacy-check">
                            <input type="checkbox" id="pcPrivacyCheck" class="privacy-checkbox" checked>
                            <label for="pcPrivacyCheck">개인정보 수집 및 이용에 대한 동의 <a href="#"
                                    class="privacy-link">자세히</a></label>
                        </div>
                    </div>
                    <div class="pc-input-group">
                        <input type="tel" placeholder="연락처 (- 없이 입력)" class="pc-input phone-input" required>
                    </div>
                    <button class="pc-consultation-btn primary">무료 상담신청</button>
                    <button class="pc-consultation-btn secondary">
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
                            <label for="popupDebtAmount">채무금액 <span class="required">*</span></label>
                            <select id="popupDebtAmount" name="debtAmount" required
                                onchange="validateSecondPopupForm()">
                                <option value="">선택해 주세요</option>
                                <option value="1000만원 미만">1000만원 미만</option>
                                <option value="1000만원~3000만원">1000만원~3000만원</option>
                                <option value="3000만원~5000만원">3000만원~5000만원</option>
                                <option value="5000만원~1억원">5000만원~1억원</option>
                                <option value="1억원 이상">1억원 이상</option>
                            </select>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupIncome">월소득 <span class="required">*</span></label>
                            <select id="popupIncome" name="income" required onchange="validateSecondPopupForm()">
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
                            <h3>개인회생 <span class="highlight">신청이 가능</span>합니다.</h3>
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

        <script>
            let casesSwiper;
            let certificateSwiper;

            // 안전한 슬라이드 네비게이션 함수
            function navigateSlide(direction) {
                if (casesSwiper) {
                    if (direction === 'prev') {
                        casesSwiper.slidePrev();
                    } else if (direction === 'next') {
                        casesSwiper.slideNext();
                    }
                }
            }

            function filterCases(type, element) {
                // 탭 활성화
                document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
                element.classList.add('active');

                // 모바일과 PC 구분
                const isMobile = window.innerWidth <= 1000;

                // 해당 그룹으로 이동
                let slideIndex = 0;

                if (isMobile) {
                    // 모바일: 인덱스 2, 1로 매핑
                    if (type === 'all') slideIndex = 0;
                    else if (type === 'personal') slideIndex = 2;
                    else if (type === 'bankruptcy') slideIndex = 1;
                } else {
                    // PC: 정상 인덱스 0, 1, 2로 매핑
                    if (type === 'all') slideIndex = 0;
                    else if (type === 'personal') slideIndex = 1;
                    else if (type === 'bankruptcy') slideIndex = 2;
                }

                if (casesSwiper) {
                    casesSwiper.slideTo(slideIndex);
                }
            }

            function toggleFaq(element) {
                const faqAnswer = element.nextElementSibling;
                const isActive = element.classList.contains('active');

                if (isActive) {
                    element.classList.remove('active');
                    faqAnswer.classList.remove('active');
                } else {
                    element.classList.add('active');
                    faqAnswer.classList.add('active');
                }
            }

            let selectedDiagnosisType = '';

            // 진단 데이터 저장 객체
            let diagnosisData = {
                type: '', // 개인회생 또는 파산면책
                debtAmount: 0, // 채무액 (만원)
                monthlyIncome: 0, // 월 소득 (만원)
                assets: 0, // 보유재산 (만원)
                dependents: 0 // 부양가족 수
            };

            function selectDiagnosis(type) {
                // 선택한 타입 저장
                selectedDiagnosisType = type;
                diagnosisData.type = type;
                // 모달 열기
                openAiDiagnosisModal();
            }

            function openAiDiagnosisModal() {
                // 선택한 타입에 따라 텍스트 업데이트
                let typeText = '개인회생';
                if (selectedDiagnosisType === 'personal') {
                    typeText = '개인회생';
                } else if (selectedDiagnosisType === 'bankruptcy') {
                    typeText = '파산면책';
                }

                const descriptionElement = document.querySelector('.modal-description');

                if (descriptionElement) {
                    // DOM 조작 방식 사용
                    descriptionElement.innerHTML = '';

                    const highlightSpan = document.createElement('span');
                    highlightSpan.className = 'highlight';
                    highlightSpan.textContent = typeText;
                    descriptionElement.appendChild(highlightSpan);

                    descriptionElement.appendChild(document.createTextNode('으로 AI진단을 시작합니다.'));
                }

                // 첫 번째 화면 표시
                showScreen('startScreen');

                const modal = document.getElementById('aiDiagnosisModal');
                if (modal) {
                    modal.style.display = 'flex';
                    setTimeout(() => {
                        modal.classList.add('show');
                    }, 10);
                }
            }

            function showScreen(screenId) {
                console.log('Showing screen:', screenId);
                // 모든 화면 숨기기
                document.querySelectorAll('.screen').forEach(screen => {
                    screen.classList.remove('active');
                });

                // 선택한 화면 보이기
                const targetScreen = document.getElementById(screenId);
                if (targetScreen) {
                    targetScreen.classList.add('active');
                    console.log('Screen activated:', screenId);
                } else {
                    console.log('Screen not found:', screenId);
                }
            }

            function startDiagnosis() {
                // 질문 화면으로 전환
                showScreen('questionScreen');
            }

            function nextQuestion() {
                const debtAmount = document.getElementById('debtAmount').value;
                if (!debtAmount) {
                    alert('채무 금액을 입력해주세요.');
                    return;
                }

                // 채무액 저장 (콤마 제거 후 숫자로 변환)
                diagnosisData.debtAmount = parseInt(debtAmount.replace(/,/g, ''));
                console.log('저장된 채무액:', diagnosisData.debtAmount, '만원');

                // 월소득 화면으로 전환
                showScreen('incomeScreen');
            }

            function nextIncomeQuestion() {
                const incomeAmount = document.getElementById('incomeAmount').value;
                if (!incomeAmount) {
                    alert('월소득을 입력해주세요.');
                    return;
                }

                // 월소득 저장 (콤마 제거 후 숫자로 변환)
                diagnosisData.monthlyIncome = parseInt(incomeAmount.replace(/,/g, ''));
                console.log('저장된 월소득:', diagnosisData.monthlyIncome, '만원');

                // 보유자산 화면으로 전환
                showScreen('assetsScreen');
            }

            function selectAssets(hasAssets) {
                // 선택 상태 업데이트
                document.querySelectorAll('#assetsScreen .choice-option').forEach(option => {
                    option.classList.remove('selected');
                });

                // 선택된 옵션 표시
                const selectedOption = hasAssets ?
                    document.querySelector('#assetsScreen .choice-option:first-child') :
                    document.querySelector('#assetsScreen .choice-option:last-child');
                if (selectedOption) {
                    selectedOption.classList.add('selected');
                }

                // 데이터 저장
                diagnosisData.assets = hasAssets ? 1 : 0; // 1: 있음, 0: 없음
                console.log('저장된 보유자산:', hasAssets ? '있음' : '없음');

                // 다음 버튼 활성화
                const nextBtn = document.getElementById('assetsNextBtn');
                if (nextBtn) {
                    nextBtn.classList.remove('disabled');
                    nextBtn.disabled = false;
                }
            }

            function nextAssetsQuestion() {
                console.log('현재 진단 데이터:', diagnosisData);
                // 부양가족 화면으로 전환
                showScreen('dependentsScreen');
            }

            function selectDependents(hasDependents) {
                // 선택 상태 업데이트
                document.querySelectorAll('#dependentsScreen .choice-option').forEach(option => {
                    option.classList.remove('selected');
                });

                // 선택된 옵션 표시
                const selectedOption = hasDependents ?
                    document.querySelector('#dependentsScreen .choice-option:first-child') :
                    document.querySelector('#dependentsScreen .choice-option:last-child');
                if (selectedOption) {
                    selectedOption.classList.add('selected');
                }

                // 데이터 저장
                diagnosisData.dependents = hasDependents ? 1 : 0; // 1: 있음, 0: 없음
                console.log('저장된 부양가족:', hasDependents ? '있음' : '없음');

                // 다음 버튼 활성화
                const nextBtn = document.getElementById('dependentsNextBtn');
                if (nextBtn) {
                    nextBtn.classList.remove('disabled');
                    nextBtn.disabled = false;
                }
            }

            function nextDependentsQuestion() {
                console.log('최종 진단 데이터:', diagnosisData);
                // 로딩 화면으로 전환
                showScreen('loadingScreen');

                // 2초 후 상담 신청 화면으로 이동
                setTimeout(() => {
                    showScreen('consultationScreen');
                }, 2000);
            }

            function validateInput() {
                const input = document.getElementById('debtAmount');
                const nextBtn = document.getElementById('nextBtn');

                if (!input || !nextBtn) return;

                // 숫자만 입력 허용 (콤마 제거 후 검증)
                let value = input.value.replace(/[^0-9]/g, '');

                // 콤마 추가 (천단위 구분)
                if (value) {
                    value = parseInt(value).toLocaleString();
                }

                input.value = value;

                // 버튼 활성화/비활성화
                if (value && value !== '0') {
                    nextBtn.classList.remove('disabled');
                    nextBtn.disabled = false;
                } else {
                    nextBtn.classList.add('disabled');
                    nextBtn.disabled = true;
                }
            }

            function validateIncomeInput() {
                const input = document.getElementById('incomeAmount');
                const nextBtn = document.getElementById('incomeNextBtn');

                if (!input || !nextBtn) return;

                // 숫자만 입력 허용 (콤마 제거 후 검증)
                let value = input.value.replace(/[^0-9]/g, '');

                // 콤마 추가 (천단위 구분)
                if (value) {
                    value = parseInt(value).toLocaleString();
                }

                input.value = value;

                // 버튼 활성화/비활성화
                if (value && value !== '0') {
                    nextBtn.classList.remove('disabled');
                    nextBtn.disabled = false;
                } else {
                    nextBtn.classList.add('disabled');
                    nextBtn.disabled = true;
                }
            }

            function nextQuestion() {
                const debtAmount = document.getElementById('debtAmount').value;
                if (!debtAmount) {
                    alert('채무 금액을 입력해주세요.');
                    return;
                }

                // 채무액 저장 (콤마 제거 후 숫자로 변환)
                diagnosisData.debtAmount = parseInt(debtAmount.replace(/,/g, ''));
                console.log('저장된 채무액:', diagnosisData.debtAmount, '만원');

                // 월 소득 화면으로 전환
                showScreen('incomeScreen');
            }

            function nextIncomeQuestion() {
                const incomeAmount = document.getElementById('incomeAmount').value;
                if (!incomeAmount) {
                    alert('월 소득을 입력해주세요.');
                    return;
                }

                // 월 소득 저장 (콤마 제거 후 숫자로 변환)
                diagnosisData.monthlyIncome = parseInt(incomeAmount.replace(/,/g, ''));
                console.log('저장된 월 소득:', diagnosisData.monthlyIncome, '만원');

                // 보유재산 화면으로 전환
                showScreen('assetsScreen');
            }

            function selectAssets(hasAssets) {
                // 선택 상태 업데이트
                document.querySelectorAll('#assetsScreen .choice-option').forEach(option => {
                    option.classList.remove('selected');
                });

                // 선택된 옵션 표시
                const selectedOption = hasAssets ?
                    document.querySelector('#assetsScreen .choice-option:first-child') :
                    document.querySelector('#assetsScreen .choice-option:last-child');
                selectedOption.classList.add('selected');

                // 데이터 저장
                diagnosisData.assets = hasAssets ? 1 : 0; // 1: 있음, 0: 없음
                console.log('저장된 보유재산:', hasAssets ? '있음' : '없음');

                // 다음 버튼 활성화
                const nextBtn = document.getElementById('assetsNextBtn');
                nextBtn.classList.remove('disabled');
                nextBtn.disabled = false;
            }

            function nextAssetsQuestion() {
                console.log('현재 진단 데이터:', diagnosisData);
                // 부양가족 화면으로 전환
                showScreen('dependentsScreen');
            }

            function selectDependents(hasDependents) {
                // 선택 상태 업데이트
                document.querySelectorAll('#dependentsScreen .choice-option').forEach(option => {
                    option.classList.remove('selected');
                });

                // 선택된 옵션 표시
                const selectedOption = hasDependents ?
                    document.querySelector('#dependentsScreen .choice-option:first-child') :
                    document.querySelector('#dependentsScreen .choice-option:last-child');
                selectedOption.classList.add('selected');

                // 데이터 저장
                diagnosisData.dependents = hasDependents ? 1 : 0; // 1: 있음, 0: 없음
                console.log('저장된 부양가족:', hasDependents ? '있음' : '없음');

                // 다음 버튼 활성화
                const nextBtn = document.getElementById('dependentsNextBtn');
                nextBtn.classList.remove('disabled');
                nextBtn.disabled = false;
            }

            function nextDependentsQuestion() {
                console.log('최종 진단 데이터:', diagnosisData);
                // 로딩 화면으로 전환
                showScreen('loadingScreen');

                // 2초 후 상담 신청 화면으로 이동
                setTimeout(() => {
                    showScreen('consultationScreen');

                    // 디버깅: 폼 요소들이 존재하는지 확인
                    setTimeout(() => {
                        const consultationArea = document.querySelector('.consultation-area');
                        const formArea = document.querySelector('.consultation-form-area');
                        const nameInput = document.getElementById('consultName');
                        const phoneInput = document.getElementById('consultPhone');

                        console.log('Consultation area found:', !!consultationArea);
                        console.log('Form area found:', !!formArea);
                        console.log('Name input found:', !!nameInput);
                        console.log('Phone input found:', !!phoneInput);

                        if (formArea) {
                            console.log('Form area display:', window.getComputedStyle(formArea).display);
                            console.log('Form area visibility:', window.getComputedStyle(formArea).visibility);
                            console.log('Form area opacity:', window.getComputedStyle(formArea).opacity);
                        }
                    }, 100);
                }, 2000);
            }

            function validateConsultationForm() {
                const name = document.getElementById('consultName').value.trim();
                const phone = document.getElementById('consultPhone').value.trim();
                const privacyAgree = document.getElementById('privacyAgree').checked;
                const submitBtn = document.getElementById('consultationSubmitBtn');

                console.log('Form validation:', { name, phone, privacyAgree });

                // 휴대폰 번호 숫자만 허용
                const phoneInput = document.getElementById('consultPhone');
                let phoneValue = phoneInput.value.replace(/[^0-9]/g, '');
                phoneInput.value = phoneValue;

                console.log('Phone value after cleaning:', phoneValue);

                // 모든 조건이 만족되면 버튼 활성화
                if (name && phoneValue.length >= 10 && privacyAgree) {
                    console.log('All conditions met - enabling button');
                    submitBtn.classList.remove('disabled');
                    submitBtn.disabled = false;
                } else {
                    console.log('Conditions not met - disabling button');
                    submitBtn.classList.add('disabled');
                    submitBtn.disabled = true;
                }
            }

            function submitConsultation() {
                const name = document.getElementById('consultName').value.trim();
                const phone = document.getElementById('consultPhone').value.trim();

                console.log('AI 진단 상담 신청 데이터:', {
                    name: name,
                    phone: phone,
                    diagnosisData: diagnosisData
                });

                console.log('전송할 데이터 상세:', {
                    debtAmount: diagnosisData.debtAmount,
                    monthlyIncome: diagnosisData.monthlyIncome,
                    assets: diagnosisData.assets,
                    dependents: diagnosisData.dependents,
                    type: diagnosisData.type
                });

                // 필수 항목 검증
                if (!name) {
                    alert('이름을 입력해 주세요');
                    return;
                }

                if (!phone) {
                    alert('연락처를 입력해 주세요');
                    return;
                }

                // 연락처 형식 검증 (숫자만, 10-11자리)
                const phoneRegex = /^[0-9]{10,11}$/;
                if (!phoneRegex.test(phone)) {
                    alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
                    return;
                }

                // 제출 버튼 비활성화
                const submitBtn = document.getElementById('consultationSubmitBtn');
                const originalText = submitBtn.textContent;
                submitBtn.disabled = true;
                submitBtn.textContent = '처리중...';

                // 폼 데이터 구성 (AI 진단 데이터 포함)
                const apiFormData = new URLSearchParams();
                apiFormData.append('name', name);
                apiFormData.append('phone', phone);
                apiFormData.append('debtAmount', diagnosisData.debtAmount || '');
                apiFormData.append('income', diagnosisData.monthlyIncome || '');
                apiFormData.append('device', window.innerWidth <= 768 ? 'Mobile' : 'PC');
                apiFormData.append('type', 'AI진단상담신청');

                // AI 진단 추가 데이터
                apiFormData.append('diagnosisType', diagnosisData.type || '');
                apiFormData.append('assets', diagnosisData.assets || '');
                apiFormData.append('dependents', diagnosisData.dependents || '');

                // UTM 파라미터 추가 (URL에서 추출)
                const urlParams = new URLSearchParams(window.location.search);
                apiFormData.append('utm_source', urlParams.get('utm_source') || '');
                apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
                apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
                apiFormData.append('utm_term', urlParams.get('utm_term') || '');
                apiFormData.append('utm_content', urlParams.get('utm_content') || '');

                // 서버에 데이터 전송
                fetch('/consultation', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: apiFormData
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            console.log('AI 진단 상담 신청 성공:', data);

                            // 기존 모달 닫기
                            const modal = document.getElementById('aiDiagnosisModal');
                            if (modal) {
                                modal.classList.remove('show');
                                setTimeout(() => {
                                    modal.style.display = 'none';
                                    // 성공 모달 표시
                                    showSuccessModal();
                                }, 400);
                            }
                        } else {
                            console.error('AI 진단 상담 신청 실패:', data.message);
                            alert(data.message || '상담 신청 중 오류가 발생했습니다.');
                        }
                    })
                    .catch(error => {
                        console.error('네트워크 오류:', error);
                        alert('네트워크 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
                    })
                    .finally(() => {
                        // 제출 버튼 복원
                        if (submitBtn) {
                            submitBtn.disabled = false;
                            submitBtn.textContent = originalText;
                        }
                    });
            }

            function validateInput() {
                const input = document.getElementById('debtAmount');
                const nextBtn = document.getElementById('nextBtn');

                // 숫자만 입력 허용 (콤마 제거 후 검증)
                let value = input.value.replace(/[^0-9]/g, '');

                // 콤마 추가 (천 단위 구분)
                if (value) {
                    value = parseInt(value).toLocaleString();
                }

                input.value = value;

                // 버튼 활성화/비활성화
                if (value && value !== '0') {
                    nextBtn.classList.remove('disabled');
                    nextBtn.disabled = false;
                } else {
                    nextBtn.classList.add('disabled');
                    nextBtn.disabled = true;
                }
            }

            function validateIncomeInput() {
                const input = document.getElementById('incomeAmount');
                const nextBtn = document.getElementById('incomeNextBtn');

                // 숫자만 입력 허용 (콤마 제거 후 검증)
                let value = input.value.replace(/[^0-9]/g, '');

                // 콤마 추가 (천 단위 구분)
                if (value) {
                    value = parseInt(value).toLocaleString();
                }

                input.value = value;

                // 버튼 활성화/비활성화
                if (value && value !== '0') {
                    nextBtn.classList.remove('disabled');
                    nextBtn.disabled = false;
                } else {
                    nextBtn.classList.add('disabled');
                    nextBtn.disabled = true;
                }
            }

            document.addEventListener('DOMContentLoaded', function () {
                // 토글 버튼 초기 상태 설정 (접힌 상태 - 위쪽 화살표)
                const toggleBtn = document.getElementById('toggleBtn');
                if (toggleBtn) {
                    // 초기에는 collapsed 클래스 제거하여 위쪽 화살표 표시
                    toggleBtn.classList.remove('collapsed');
                }

                // 모바일에서 상담 폼 초기 상태 설정 (접힌 상태)
                if (window.innerWidth <= 768) {
                    const form = document.getElementById('consultationForm');
                    if (form && toggleBtn) {
                        form.classList.add('collapsed');
                        // 폼은 접혀있지만 버튼은 위쪽 화살표 유지
                    }
                }

                // 상담 폼 초기 검증 실행
                if (typeof validateConsultationForm === 'function') {
                    console.log('Running initial form validation');
                    validateConsultationForm();
                } else {
                    console.log('validateConsultationForm function not found');
                }

                // 페이지 로드 시 즉시 랜덤 숫자로 설정
                function initializeRandomNumbers() {
                    const targetNumber = "750000000000";
                    const digitContainers = document.querySelectorAll('.digit-container');
                    const isMobile = window.innerWidth <= 768;
                    const digitHeight = isMobile ? 35 : 45;

                    digitContainers.forEach((container, index) => {
                        if (index >= targetNumber.length) return;

                        const wheel = container.querySelector('.digit-wheel');
                        if (!wheel) return;

                        const targetDigit = parseInt(targetNumber[index]);

                        // 목표 숫자와 다른 랜덤 숫자로 즉시 설정
                        let randomDigit;
                        do {
                            randomDigit = Math.floor(Math.random() * 10);
                        } while (randomDigit === targetDigit);

                        wheel.style.transition = 'none';
                        wheel.style.transform = 'translateY(' + (-randomDigit * digitHeight) + 'px)';
                    });
                }

                // 페이지 로드 시 즉시 실행
                initializeRandomNumbers();

                // 누적 탕감액 휠 피커 애니메이션
                function startAmountAnimation() {
                    const targetNumber = "745280126000"; // 745,280,126,000 (12자리)
                    const digitContainers = document.querySelectorAll('.digit-container');
                    const isMobile = window.innerWidth <= 768;
                    const digitHeight = isMobile ? 35 : 45;

                    console.log('Starting animation...');
                    console.log('Total containers:', digitContainers.length);
                    console.log('Target number:', targetNumber);
                    console.log('Is mobile:', isMobile, 'Digit height:', digitHeight);

                    // 200ms 후 모든 휠이 동시에 목표 숫자로 움직임
                    setTimeout(() => {
                        digitContainers.forEach((container, index) => {
                            if (index >= targetNumber.length) return;

                            const targetDigit = parseInt(targetNumber[index]);
                            const wheel = container.querySelector('.digit-wheel');

                            if (!wheel) return;

                            // 최종 위치 계산
                            const finalPosition = -targetDigit * digitHeight;

                            console.log('Container ' + index + ': Target digit = ' + targetDigit + ', Final position = ' + finalPosition);

                            // 자연스럽게 목표 위치로 이동
                            wheel.style.transition = 'transform 2s cubic-bezier(0.25, 0.46, 0.45, 0.94)';
                            wheel.style.transform = 'translateY(' + finalPosition + 'px)';
                        });
                    }, 200);
                }

                let animationStarted = false;

                // Intersection Observer로 섹션이 보일 때 애니메이션 시작 (한 번만)
                const reductionSection = document.querySelector('.total-reduction-section');
                if (reductionSection) {
                    console.log('Intersection Observer 설정됨');

                    const observer = new IntersectionObserver((entries) => {
                        entries.forEach(entry => {
                            console.log('Intersection 감지:', entry.isIntersecting, 'animationStarted:', animationStarted);

                            if (entry.isIntersecting && !animationStarted) {
                                console.log('애니메이션 시작!');
                                animationStarted = true;
                                setTimeout(() => {
                                    startAmountAnimation();
                                }, 100);
                                observer.unobserve(entry.target);
                            }
                        });
                    }, {
                        threshold: 0.05,
                        rootMargin: '300px 0px 0px 0px'
                    });

                    observer.observe(reductionSection);
                } else {
                    console.log('total-reduction-section을 찾을 수 없음');
                }

                // Swiper 초기화
                function initializeSwiper() {
                    // 기존 Swiper 제거
                    if (casesSwiper) {
                        casesSwiper.destroy(true, true);
                    }

                    if (window.innerWidth <= 1000) {
                        // 모바일에서 Swiper 활성화
                        casesSwiper = new Swiper('.casesSwiper', {
                            slidesPerView: 1,
                            spaceBetween: 20,
                            loop: true,
                            autoplay: {
                                delay: 3000,
                                disableOnInteraction: false,
                                pauseOnMouseEnter: false,
                            },
                            on: {
                                slideChange: function () {
                                    // 모바일에서는 케이스 타입에 따라 탭 활성화
                                    const currentSlide = this.slides[this.activeIndex];
                                    const caseTypeElement = currentSlide.querySelector('.case-type');

                                    if (caseTypeElement) {
                                        const caseType = caseTypeElement.textContent.trim();
                                        const tabs = document.querySelectorAll('.tab-btn');

                                        // 모든 탭 비활성화
                                        tabs.forEach(tab => tab.classList.remove('active'));

                                        // 케이스 타입에 따라 해당 탭 활성화
                                        if (caseType === '개인회생') {
                                            const personalTab = document.querySelector('.tab-btn[onclick*="personal"]');
                                            if (personalTab) personalTab.classList.add('active');
                                        } else if (caseType === '개인파산') {
                                            const bankruptcyTab = document.querySelector('.tab-btn[onclick*="bankruptcy"]');
                                            if (bankruptcyTab) bankruptcyTab.classList.add('active');
                                        } else {
                                            // 모바일에서는 기본적으로 개인회생 탭 활성화
                                            const personalTab = document.querySelector('.tab-btn[onclick*="personal"]');
                                            if (personalTab) personalTab.classList.add('active');
                                        }
                                    }
                                }
                            }
                        });
                    } else {
                        // PC에서도 Swiper 활성화 (탭 전환용)
                        casesSwiper = new Swiper('.casesSwiper', {
                            slidesPerView: 1,
                            spaceBetween: 30,
                            loop: true,
                            autoplay: {
                                delay: 4000,
                                disableOnInteraction: false,
                                pauseOnMouseEnter: true,
                            },
                            on: {
                                slideChange: function () {
                                    // PC에서는 슬라이드 인덱스에 따라 탭 활성화
                                    const tabs = document.querySelectorAll('.tab-btn');
                                    tabs.forEach(tab => tab.classList.remove('active'));

                                    const realIndex = this.realIndex;
                                    if (tabs[realIndex]) {
                                        tabs[realIndex].classList.add('active');
                                    }
                                }
                            }
                        });
                    }
                }

                // 원본 HTML 데이터 저장
                let originalCasesHTML = '';

                // 모바일에서 케이스 카드를 개별 슬라이드로 재구성
                function restructureCasesForMobile() {
                    const swiperWrapper = document.querySelector('.casesSwiper .swiper-wrapper');
                    console.log('restructureCasesForMobile called, window width:', window.innerWidth);
                    console.log('swiperWrapper found:', !!swiperWrapper);

                    // 처음 실행 시 원본 HTML 저장
                    if (!originalCasesHTML && swiperWrapper) {
                        originalCasesHTML = swiperWrapper.innerHTML;
                        console.log('Original HTML saved, length:', originalCasesHTML.length);
                    }

                    if (window.innerWidth <= 1000) {
                        // 모바일: 각 케이스 카드를 개별 슬라이드로 변경
                        // 원본 HTML에서 케이스 카드 추출
                        const tempDiv = document.createElement('div');
                        tempDiv.innerHTML = originalCasesHTML;
                        const allCaseCards = tempDiv.querySelectorAll('.case-card');
                        console.log('Mobile mode - case cards found:', allCaseCards.length);

                        // 기존 슬라이드 제거
                        swiperWrapper.innerHTML = '';

                        // 각 케이스 카드를 개별 슬라이드로 추가
                        allCaseCards.forEach(card => {
                            const slide = document.createElement('div');
                            slide.className = 'swiper-slide';

                            // 케이스 타입 정보를 데이터 속성으로 추가
                            const caseTypeElement = card.querySelector('.case-type');
                            if (caseTypeElement) {
                                const caseType = caseTypeElement.textContent.trim();
                                slide.setAttribute('data-case-type', caseType);
                            }

                            slide.appendChild(card.cloneNode(true));
                            swiperWrapper.appendChild(slide);
                        });
                        console.log('Mobile slides created:', swiperWrapper.children.length);

                        // Swiper 업데이트
                        if (casesSwiper) {
                            casesSwiper.update();
                            casesSwiper.updateSlides();
                        }
                    } else {
                        // PC: 원래 HTML 구조로 복원
                        console.log('PC mode - restoring original HTML');
                        swiperWrapper.innerHTML = originalCasesHTML;
                        console.log('PC HTML restored, children:', swiperWrapper.children.length);

                        // Swiper 업데이트
                        if (casesSwiper) {
                            casesSwiper.update();
                            casesSwiper.updateSlides();
                        }
                    }
                }

                // 모바일에서 초기 탭 설정
                function initializeMobileTabs() {
                    if (window.innerWidth <= 1000) {
                        const tabs = document.querySelectorAll('.tab-btn');
                        tabs.forEach(tab => tab.classList.remove('active'));

                        // 개인회생 탭을 기본으로 활성화
                        const personalTab = document.querySelector('.tab-btn[onclick*="personal"]');
                        if (personalTab) personalTab.classList.add('active');
                    }
                }

                // 초기 실행
                restructureCasesForMobile();
                initializeSwiper();
                initializeMobileTabs();

                // 윈도우 리사이즈 시 재구성
                window.addEventListener('resize', function () {
                    restructureCasesForMobile();
                    initializeSwiper();
                    initializeMobileTabs();
                });

                // 증서 Swiper 초기화
                certificateSwiper = new Swiper('.certificateSwiper', {
                    slidesPerView: 1,
                    loop: false,
                    autoplay: {
                        delay: 2000,
                        disableOnInteraction: false,
                    },
                    pagination: {
                        el: '.certificateSwiper .swiper-pagination',
                        clickable: true,
                    },
                    on: {
                        init: function () {
                            // 마우스 호버 이벤트 추가
                            const swiperEl = this.el;
                            swiperEl.addEventListener('mouseenter', () => {
                                this.autoplay.stop();
                            });
                            swiperEl.addEventListener('mouseleave', () => {
                                this.autoplay.start();
                            });
                        }
                    }
                });

                const form = document.querySelector('form');
                if (form) {
                    form.addEventListener('submit', function (e) {
                        e.preventDefault();
                        const privacyCheckbox = document.getElementById('privacy-agree');
                        if (!privacyCheckbox.checked) {
                            alert('개인정보 수집 및 이용에 동의해주세요.');
                            return;
                        }
                        // 상담 신청 완료 - alert 제거
                        console.log('상담 신청이 접수되었습니다. 빠른 시일 내에 연락드리겠습니다.');
                    });
                }

                const topBtn = document.querySelector('.top-btn');
                if (topBtn) {
                    topBtn.addEventListener('click', function (e) {
                        e.preventDefault();
                        window.scrollTo({ top: 0, behavior: 'smooth' });
                    });
                }

                // 모달 관련 기능
                const modal = document.getElementById('aiDiagnosisModal');
                const modalOverlay = document.querySelector('.modal-overlay');
                const closeBtn = document.querySelector('.modal-close');

                // 모달 닫기 함수
                function closeModal() {
                    const modal = document.getElementById('aiDiagnosisModal');
                    if (modal) {
                        modal.classList.remove('show');
                        // 애니메이션 완료 후 display none
                        setTimeout(() => {
                            modal.style.display = 'none';
                        }, 400);
                    }
                }

                // 닫기 버튼 클릭 시 모달 닫기
                if (closeBtn) {
                    closeBtn.addEventListener('click', closeModal);
                }
            });

            // 햄버거 메뉴 함수들
            function toggleMobileNav() {
                const mobileNav = document.getElementById('mobileNav');
                const hamburgerMenu = document.querySelector('.hamburger-menu');
                const floatingBtnContainer = document.getElementById('floatingBtnContainer');

                if (mobileNav.classList.contains('active')) {
                    closeMobileNav();
                } else {
                    mobileNav.classList.add('active');
                    hamburgerMenu.classList.add('active');
                    document.body.style.overflow = 'hidden'; // 스크롤 방지

                    // 아일랜드(상단 고정 버튼) 숨기기
                    if (floatingBtnContainer) {
                        floatingBtnContainer.style.display = 'none';
                    }
                }
            }

            function closeMobileNav(event) {
                // 배경 클릭 시에만 닫기 (event가 있고 target이 mobile-nav인 경우)
                if (event && event.target !== document.getElementById('mobileNav')) {
                    return;
                }

                const mobileNav = document.getElementById('mobileNav');
                const hamburgerMenu = document.querySelector('.hamburger-menu');
                const floatingBtnContainer = document.getElementById('floatingBtnContainer');

                mobileNav.classList.remove('active');
                hamburgerMenu.classList.remove('active');
                document.body.style.overflow = ''; // 스크롤 복원

                // 아일랜드(상단 고정 버튼) 다시 보이기 (조건부)
                if (floatingBtnContainer && window.innerWidth <= 768) {
                    // 스크롤 위치에 따라 표시 여부 결정
                    const scrollY = window.scrollY;
                    const mainBackground = document.querySelector('.main-background');
                    if (mainBackground) {
                        const rect = mainBackground.getBoundingClientRect();
                        const consultationSectionBottom = rect.bottom + window.scrollY;

                        if (scrollY > consultationSectionBottom - 100) {
                            floatingBtnContainer.style.display = 'block';
                        }
                    }
                }
            }

            function scrollToSection(sectionId) {
                // 먼저 모바일 네비게이션 닫기
                closeMobileNav();

                // 네비게이션 닫기 애니메이션 완료 후 스크롤 (더 긴 지연)
                setTimeout(() => {
                    const targetSection = document.getElementById(sectionId);
                    if (targetSection) {
                        const headerHeight = document.querySelector('.header').offsetHeight;
                        const targetPosition = targetSection.offsetTop - headerHeight - 20;
                        const startPosition = window.pageYOffset;
                        const distance = targetPosition - startPosition;
                        const duration = 600; // 600ms 동안 스크롤
                        let start = null;

                        // easeInOutCubic 애니메이션 함수
                        function easeInOutCubic(t) {
                            return t < 0.5
                                ? 4 * t * t * t
                                : 1 - Math.pow(-2 * t + 2, 3) / 2;
                        }

                        function animation(currentTime) {
                            if (start === null) start = currentTime;
                            const timeElapsed = currentTime - start;
                            const progress = Math.min(timeElapsed / duration, 1);
                            const ease = easeInOutCubic(progress);

                            window.scrollTo(0, startPosition + distance * ease);

                            if (timeElapsed < duration) {
                                requestAnimationFrame(animation);
                            }
                        }

                        requestAnimationFrame(animation);
                    }
                }, 500);
            }

            function openKakaoTalk() {
                // 카카오톡 상담 링크 (실제 링크로 교체 필요)
                window.open('https://pf.kakao.com/_your_kakao_link', '_blank');
            }

            // ESC 키로 모바일 메뉴 닫기
            document.addEventListener('keydown', function (event) {
                if (event.key === 'Escape') {
                    closeMobileNav();
                }
            });

            // TOP 버튼 부드러운 스크롤
            document.addEventListener('DOMContentLoaded', function () {
                // 플로팅 헤더와 버튼 컨테이너 제어
                const floatingHeader = document.getElementById('floatingHeader');
                const floatingBtnContainer = document.getElementById('floatingBtnContainer');
                const topButton = document.getElementById('topButton');
                const consultationSection = document.querySelector('.consultation-section');
                const mainBackground = document.querySelector('.main-background');

                let consultationSectionBottom = 0;

                // 상담 섹션의 하단 위치 계산
                function calculateConsultationBottom() {
                    if (mainBackground) {
                        const rect = mainBackground.getBoundingClientRect();
                        consultationSectionBottom = rect.bottom + window.scrollY;
                    }
                }

                // 초기 계산
                calculateConsultationBottom();

                // 리사이즈 시 재계산
                window.addEventListener('resize', calculateConsultationBottom);

                // 스크롤에 따른 상단 고정 요소들 제어
                window.addEventListener('scroll', function () {
                    const scrollY = window.scrollY;
                    const consultationForm = document.querySelector('.consultation-form');
                    const pcConsultationContainer = document.querySelector('.pc-consultation-container');

                    // consultation-form의 위치 확인
                    if (consultationForm && pcConsultationContainer) {
                        const formRect = consultationForm.getBoundingClientRect();
                        const isFormVisible = formRect.top < window.innerHeight && formRect.bottom > 0;

                        // consultation-form이 화면에서 사라지면 pc-consultation-container 표시
                        if (!isFormVisible && formRect.bottom < 0) {
                            pcConsultationContainer.classList.add('show');
                        } else {
                            pcConsultationContainer.classList.remove('show');
                        }
                    }

                    // 상담 섹션을 벗어나면 상단 고정 요소들 표시
                    if (scrollY > consultationSectionBottom - 100) {
                        // 플로팅 헤더는 숨기고 버튼 컨테이너만 표시
                        floatingHeader.classList.remove('show');
                        floatingBtnContainer.classList.add('show');
                        document.body.classList.add('floating-btn-visible');
                    } else {
                        floatingHeader.classList.remove('show');
                        floatingBtnContainer.classList.remove('show');
                        document.body.classList.remove('floating-btn-visible');
                    }

                    // TOP 버튼 표시/숨김 (스크롤이 생기는 시점부터)
                    if (scrollY > 200) {
                        topButton.classList.add('show');
                    } else {
                        topButton.classList.remove('show');
                    }
                });
            });

            // TOP 버튼 클릭 시 최상단으로 스크롤
            function scrollToTop() {
                window.scrollTo({
                    top: 0,
                    behavior: 'smooth'
                });
            }

            // 연락처 입력 시 숫자만 허용
            function formatPhoneNumber(input) {
                // 숫자만 남기기
                let value = input.value.replace(/[^0-9]/g, '');

                // 11자리 제한
                if (value.length > 11) {
                    value = value.slice(0, 11);
                }

                input.value = value;
            }

            // 메인 상담 신청 폼 제출 함수
            function submitMainConsultationForm(event) {
                event.preventDefault();

                // 필수 항목 검증
                const name = document.getElementById('name').value.trim();
                const phone = document.getElementById('phone').value.trim();
                const debt = document.getElementById('debt').value;
                const income = document.getElementById('income').value;
                const privacyAgree = document.getElementById('privacy-agree').checked;

                if (!name) {
                    alert('이름을 입력해 주세요');
                    return;
                }

                if (!phone) {
                    alert('연락처를 입력해 주세요');
                    return;
                }

                if (!debt) {
                    alert('채무금액을 선택해 주세요');
                    return;
                }

                if (!income) {
                    alert('월소득을 선택해 주세요');
                    return;
                }

                if (!privacyAgree) {
                    alert('개인정보 수집 및 이용에 동의해 주세요');
                    return;
                }

                // 연락처 형식 검증 (숫자만, 10-11자리)
                const phoneRegex = /^[0-9]{10,11}$/;
                if (!phoneRegex.test(phone)) {
                    alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
                    return;
                }

                // 제출 버튼 비활성화
                const submitBtn = document.querySelector('.submit-btn');
                const originalText = submitBtn.textContent;
                submitBtn.disabled = true;
                submitBtn.textContent = '처리중...';

                // 폼 데이터 구성
                const apiFormData = new URLSearchParams();
                apiFormData.append('name', name);
                apiFormData.append('phone', phone);
                apiFormData.append('debtAmount', debt);
                apiFormData.append('income', income);
                apiFormData.append('device', window.innerWidth <= 768 ? 'Mobile' : 'PC');
                apiFormData.append('type', '무료상담신청(메인폼)');

                // UTM 파라미터 추가
                const urlParams = new URLSearchParams(window.location.search);
                apiFormData.append('utm_source', urlParams.get('utm_source') || '');
                apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
                apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
                apiFormData.append('utm_term', urlParams.get('utm_term') || '');
                apiFormData.append('utm_content', urlParams.get('utm_content') || '');

                // 서버에 데이터 전송
                fetch('/consultation', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: apiFormData
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            console.log('상담 신청 성공:', data);

                            // 성공 모달 표시
                            showSuccessModal('상담 신청이 완료되었습니다!', '빠른 시일 내에 연락드리겠습니다.');

                            // 폼 초기화
                            document.getElementById('mainConsultationForm').reset();

                        } else {
                            console.error('상담 신청 실패:', data);
                            alert('상담 신청 중 오류가 발생했습니다. 다시 시도해 주세요.');
                        }
                    })
                    .catch(error => {
                        console.error('상담 신청 오류:', error);
                        alert('상담 신청 중 오류가 발생했습니다. 다시 시도해 주세요.');
                    })
                    .finally(() => {
                        // 제출 버튼 복원
                        submitBtn.disabled = false;
                        submitBtn.textContent = originalText;
                    });
            }

            // 상담 팝업 관련 함수들
            function openConsultationPopup() {
                const popup = document.getElementById('consultationPopup');
                const deviceField = document.getElementById('popupDevice');

                // 디바이스 정보 설정 (PC/Mobile)
                const isMobile = window.innerWidth <= 768;
                deviceField.value = isMobile ? 'Mobile' : 'PC';

                // 기존 폼에서 입력된 정보를 팝업으로 전달
                const mainFormName = document.getElementById('name').value.trim();
                const mainFormPhone = document.getElementById('phone').value.trim();
                const mainFormDebt = document.getElementById('debt').value;
                const mainFormIncome = document.getElementById('income').value;

                // 팝업 폼의 필드들에 값 설정
                if (mainFormName) {
                    document.getElementById('popupName').value = mainFormName;
                }
                if (mainFormPhone) {
                    document.getElementById('popupPhone').value = mainFormPhone;
                }
                if (mainFormDebt) {
                    document.getElementById('popupDebt').value = mainFormDebt;
                }
                if (mainFormIncome) {
                    document.getElementById('popupIncome').value = mainFormIncome;
                }

                if (popup) {
                    popup.style.display = 'flex';
                    setTimeout(() => {
                        popup.classList.add('show');
                    }, 10);
                    document.body.style.overflow = 'hidden';
                }
            }

            function closeConsultationPopup() {
                const popup = document.getElementById('consultationPopup');
                if (popup) {
                    popup.classList.remove('show');
                    setTimeout(() => {
                        popup.style.display = 'none';
                        document.body.style.overflow = '';
                        // 폼 초기화
                        document.getElementById('consultationPopupForm').reset();
                    }, 300);
                }
            }

            function closeSuccessPopup() {
                const popup = document.getElementById('consultationSuccessPopup');
                if (popup) {
                    popup.classList.remove('show');
                    setTimeout(() => {
                        popup.style.display = 'none';
                        document.body.style.overflow = '';
                    }, 300);
                }
            }

            function submitConsultationForm(event) {
                event.preventDefault();

                const form = document.getElementById('consultationPopupForm');
                const formData = new FormData(form);

                // 필수 항목 검증
                const name = formData.get('name').trim();
                const phone = formData.get('phone').trim();
                const privacyAgree = formData.get('privacyAgree');

                if (!name) {
                    alert('이름을 입력해 주세요');
                    return;
                }

                if (!phone) {
                    alert('연락처를 입력해 주세요');
                    return;
                }

                if (!privacyAgree) {
                    alert('개인정보 수집 및 이용에 동의해 주세요');
                    return;
                }

                // 연락처 형식 검증 (숫자만, 10-11자리)
                const phoneRegex = /^[0-9]{10,11}$/;
                if (!phoneRegex.test(phone)) {
                    alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
                    return;
                }

                // 제출 버튼 비활성화
                const submitBtn = form.querySelector('.consultation-submit-popup-btn');
                const originalText = submitBtn.textContent;
                submitBtn.disabled = true;
                submitBtn.textContent = '처리중...';

                // 폼 데이터 재구성 (서버 API에 맞게) - URLSearchParams 사용
                const apiFormData = new URLSearchParams();
                apiFormData.append('name', name);
                apiFormData.append('phone', phone);
                apiFormData.append('debtAmount', formData.get('debtAmount') || '');
                apiFormData.append('income', formData.get('income') || '');
                apiFormData.append('device', formData.get('device'));
                apiFormData.append('type', '무료상담신청(팝업)');

                // UTM 파라미터 추가 (URL에서 추출)
                const urlParams = new URLSearchParams(window.location.search);
                apiFormData.append('utm_source', urlParams.get('utm_source') || '');
                apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
                apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
                apiFormData.append('utm_term', urlParams.get('utm_term') || '');
                apiFormData.append('utm_content', urlParams.get('utm_content') || '');

                // 서버에 데이터 전송
                fetch('/consultation', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: apiFormData
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            console.log('상담 신청 성공:', data);

                            // 상담 신청 팝업 닫기
                            closeConsultationPopup();

                            // 성공 팝업 표시
                            setTimeout(() => {
                                const successPopup = document.getElementById('consultationSuccessPopup');
                                if (successPopup) {
                                    successPopup.style.display = 'flex';
                                    setTimeout(() => {
                                        successPopup.classList.add('show');
                                    }, 10);
                                    document.body.style.overflow = 'hidden';
                                }
                            }, 400);

                        } else {
                            console.error('상담 신청 실패:', data.message);
                            alert(data.message || '상담 신청 중 오류가 발생했습니다.');
                        }
                    })
                    .catch(error => {
                        console.error('네트워크 오류:', error);
                        alert('네트워크 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
                    })
                    .finally(() => {
                        // 제출 버튼 복원
                        submitBtn.disabled = false;
                        submitBtn.textContent = originalText;
                    });
            }

            // 팝업 외부 클릭 시 닫기
            document.addEventListener('click', function (event) {
                const consultationPopup = document.getElementById('consultationPopup');
                const successPopup = document.getElementById('consultationSuccessPopup');

                if (event.target === consultationPopup) {
                    closeConsultationPopup();
                }

                if (event.target === successPopup) {
                    closeSuccessPopup();
                }
            });

            // ESC 키로 팝업 닫기
            document.addEventListener('keydown', function (event) {
                if (event.key === 'Escape') {
                    closeConsultationPopup();
                    closeSuccessPopup();
                }
            });

            // 상담 모달 열기 함수
            function openConsultationModal() {
                // 기존 AI 진단 모달 대신 상담 팝업 열기
                openConsultationPopup();
            }

            // 카카오톡 상담 열기 함수
            function openKakaoTalk() {
                // 카카오톡 상담 링크 (실제 링크로 교체 필요)
                window.open('https://pf.kakao.com/_your_kakao_link', '_blank');
            }

            // 하단 상담바 토글 함수
            function toggleConsultationForm() {
                const expandedForm = document.getElementById('expandedForm');
                const toggleBtn = document.getElementById('toggleBtn');
                const expandIcon = toggleBtn.querySelector('.expand-icon');
                const closeIcon = toggleBtn.querySelector('.close-icon');

                if (expandedForm && toggleBtn) {
                    if (expandedForm.classList.contains('show')) {
                        // 폼 닫기
                        expandedForm.classList.remove('show');
                        toggleBtn.classList.remove('collapsed');
                        // 펼치기 아이콘 보이기, 닫기 아이콘 숨기기
                        expandIcon.style.display = 'block';
                        closeIcon.style.display = 'none';
                    } else {
                        // 폼 열기
                        expandedForm.classList.add('show');
                        toggleBtn.classList.add('collapsed');
                        // 닫기 아이콘 보이기, 펼치기 아이콘 숨기기
                        expandIcon.style.display = 'none';
                        closeIcon.style.display = 'block';
                    }
                }
            }

            // 하단 상담바 폼 열기 함수
            function openConsultationForm() {
                const expandedForm = document.getElementById('expandedForm');
                const toggleBtn = document.getElementById('toggleBtn');
                const expandIcon = toggleBtn ? toggleBtn.querySelector('.expand-icon') : null;
                const closeIcon = toggleBtn ? toggleBtn.querySelector('.close-icon') : null;

                if (expandedForm && !expandedForm.classList.contains('show')) {
                    expandedForm.classList.add('show');
                    if (toggleBtn) {
                        toggleBtn.classList.add('collapsed');
                    }
                    if (expandIcon && closeIcon) {
                        expandIcon.style.display = 'none';
                        closeIcon.style.display = 'block';
                    }
                }
            }

            // 이름/연락처 입력창 포커스 이벤트 리스너 추가
            document.addEventListener('DOMContentLoaded', function () {
                const nameInput = document.getElementById('mobileNameInput');
                const phoneInput = document.getElementById('mobilePhoneInput');
                const consultationBar = document.querySelector('.bottom-consultation-bar');

                if (nameInput) {
                    nameInput.addEventListener('focus', function () {
                        openConsultationForm();
                        adjustBarForKeyboard();
                    });

                    nameInput.addEventListener('blur', function () {
                        resetBarPosition();
                    });
                }

                if (phoneInput) {
                    phoneInput.addEventListener('focus', function () {
                        openConsultationForm();
                        adjustBarForKeyboard();
                    });

                    phoneInput.addEventListener('blur', function () {
                        resetBarPosition();
                    });
                }

                // 키보드가 올라올 때 상담바를 키보드 위로 이동
                function adjustBarForKeyboard() {
                    if (window.innerWidth <= 768 && consultationBar) {
                        // Visual Viewport API를 사용하여 키보드 높이 감지
                        if (window.visualViewport) {
                            const viewportHeight = window.visualViewport.height;
                            const windowHeight = window.innerHeight;
                            const keyboardHeight = windowHeight - viewportHeight;

                            // 키보드가 충분히 올라왔을 때만 조정 (100px 이상)
                            if (keyboardHeight > 100) {
                                consultationBar.style.bottom = keyboardHeight + 'px';
                                consultationBar.style.transition = 'bottom 0.3s ease';
                            }
                        }
                    }
                }

                // 키보드가 내려갈 때 상담바를 원래 위치로 복원
                function resetBarPosition() {
                    if (consultationBar) {
                        setTimeout(() => {
                            consultationBar.style.bottom = '0px';
                            consultationBar.style.transition = 'bottom 0.3s ease';
                        }, 200);
                    }
                }

                // Visual Viewport 변경 감지 (키보드 올라오고 내려갈 때)
                let keyboardTimeout;
                if (window.visualViewport) {
                    window.visualViewport.addEventListener('resize', function () {
                        // 기존 타이머 클리어
                        if (keyboardTimeout) {
                            clearTimeout(keyboardTimeout);
                        }

                        // 300ms 후에 실행하여 불필요한 호출 방지
                        keyboardTimeout = setTimeout(() => {
                            const activeElement = document.activeElement;
                            const isInputFocused = activeElement &&
                                (activeElement.id === 'mobileNameInput' ||
                                    activeElement.id === 'mobilePhoneInput' ||
                                    activeElement.id === 'mobileDebtAmount' ||
                                    activeElement.id === 'mobileIncome');

                            if (isInputFocused) {
                                adjustBarForKeyboard();
                            } else {
                                resetBarPosition();
                            }
                        }, 300);
                    });
                }

                // 확장 폼의 다른 입력 필드들에도 동일한 이벤트 추가
                const debtAmountSelect = document.getElementById('mobileDebtAmount');
                const incomeSelect = document.getElementById('mobileIncome');

                if (debtAmountSelect) {
                    debtAmountSelect.addEventListener('focus', function () {
                        adjustBarForKeyboard();
                    });
                    debtAmountSelect.addEventListener('blur', function () {
                        resetBarPosition();
                    });
                }

                if (incomeSelect) {
                    incomeSelect.addEventListener('focus', function () {
                        adjustBarForKeyboard();
                    });
                    incomeSelect.addEventListener('blur', function () {
                        resetBarPosition();
                    });
                }
            });

            // 모바일용 상담 알림 Swiper 초기화 (768px 이하에서만)
            let mobileConsultationSwiper = null;
            let isAutoplayRunning = true;

            function initMobileConsultationSwiper() {
                if (window.innerWidth <= 768) {
                    // 기존 Swiper 인스턴스가 있으면 제거
                    if (mobileConsultationSwiper) {
                        mobileConsultationSwiper.destroy(true, true);
                        mobileConsultationSwiper = null;
                    }

                    // 새 Swiper 초기화
                    setTimeout(() => {
                        mobileConsultationSwiper = new Swiper('.mobile-consultation-swiper', {
                            direction: 'vertical',
                            slidesPerView: 5,
                            slidesPerGroup: 1,
                            spaceBetween: 0,
                            loop: true,
                            loopedSlides: 20,
                            loopAdditionalSlides: 10,
                            autoplay: {
                                delay: 1000,
                                disableOnInteraction: false,
                                pauseOnMouseEnter: false,
                                reverseDirection: true,
                            },
                            speed: 300,
                            allowTouchMove: false,
                            freeMode: false,
                            watchSlidesProgress: true,
                            centeredSlides: false,
                            normalizeSlideIndex: true,
                        });
                        isAutoplayRunning = true;
                    }, 100);
                }
            }

            // 페이지 로드 시 모바일 Swiper 초기화
            document.addEventListener('DOMContentLoaded', function () {
                initMobileConsultationSwiper();
            });

            // 윈도우 리사이즈 시 Swiper 재초기화
            window.addEventListener('resize', function () {
                setTimeout(() => {
                    initMobileConsultationSwiper();
                }, 100);
            });

            // 모바일 폼 유효성 검증 함수
            function validateMobileForm() {
                const name = document.getElementById('mobileNameInput').value.trim();
                const phone = document.getElementById('mobilePhoneInput').value.trim();
                // 채무액, 월소득 필드 제외
                // const debtAmount = document.getElementById('mobileDebtAmount').value;
                // const income = document.getElementById('mobileIncome').value;
                const privacyAgree = document.getElementById('mobilePrivacyAgree').checked;
                const submitBtn = document.getElementById('mobileSubmitBtn');

                // 이름, 연락처, 개인정보 동의만 확인
                if (name && phone && privacyAgree) {
                    submitBtn.disabled = false;
                    submitBtn.style.opacity = '1';
                    submitBtn.style.cursor = 'pointer';
                } else {
                    submitBtn.disabled = true;
                    submitBtn.style.opacity = '0.5';
                    submitBtn.style.cursor = 'not-allowed';
                }
            }

            // 모바일 상담 신청 제출
            function submitMobileConsultation() {
                console.log('=== 모바일 상담 신청 시작 ===');

                // 요소 존재 확인 (채무액, 월소득 제외)
                const nameElement = document.getElementById('mobileNameInput');
                const phoneElement = document.getElementById('mobilePhoneInput');
                // const debtAmountElement = document.getElementById('mobileDebtAmount');
                // const incomeElement = document.getElementById('mobileIncome');
                const privacyElement = document.getElementById('mobilePrivacyAgree');

                console.log('요소 존재 확인:');
                console.log('nameElement:', nameElement);
                console.log('phoneElement:', phoneElement);
                console.log('privacyElement:', privacyElement);

                if (!nameElement) {
                    console.error('mobileNameInput 요소를 찾을 수 없습니다!');
                    alert('폼 요소를 찾을 수 없습니다. 페이지를 새로고침해 주세요.');
                    return;
                }

                if (!phoneElement) {
                    console.error('mobilePhoneInput 요소를 찾을 수 없습니다!');
                    alert('폼 요소를 찾을 수 없습니다. 페이지를 새로고침해 주세요.');
                    return;
                }

                const name = nameElement.value.trim();
                const phone = phoneElement.value.trim();
                // const debtAmount = debtAmountElement ? debtAmountElement.value : '';
                // const income = incomeElement ? incomeElement.value : '';
                const privacyAgree = privacyElement ? privacyElement.checked : false;

                console.log('입력값 확인:');
                console.log('name:', "'" + name + "'");
                console.log('phone:', "'" + phone + "'");
                console.log('privacyAgree:', privacyAgree);

                // 필수 항목 검증
                if (!name) {
                    console.log('이름 검증 실패 - 값:', "'" + name + "'");
                    alert('이름을 입력해 주세요');
                    nameElement.focus();
                    return;
                }

                if (!phone) {
                    console.log('연락처 검증 실패 - 값:', "'" + phone + "'");
                    alert('연락처를 입력해 주세요');
                    phoneElement.focus();
                    return;
                }

                if (!privacyAgree) {
                    console.log('개인정보 동의 검증 실패');
                    alert('개인정보 수집 및 이용에 동의해 주세요');
                    return;
                }

                // 연락처 형식 검증 (숫자만, 10-11자리)
                const phoneRegex = /^[0-9]{10,11}$/;
                if (!phoneRegex.test(phone)) {
                    console.log('연락처 형식 검증 실패:', phone);
                    alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
                    phoneElement.focus();
                    return;
                }

                console.log('모든 검증 통과!');

                // 디바이스 정보 설정
                const isMobile = window.innerWidth <= 768;

                // URLSearchParams로 폼 데이터 수집 (채무액, 월소득 제외)
                const formData = new URLSearchParams();
                formData.append('name', name);
                formData.append('phone', phone);
                formData.append('debtAmount', ''); // 빈 값으로 전송
                formData.append('income', ''); // 빈 값으로 전송
                formData.append('device', isMobile ? 'Mobile' : 'PC');
                formData.append('type', '무료상담신청(모바일)');

                // UTM 파라미터 추가 (URL에서 추출)
                const urlParams = new URLSearchParams(window.location.search);
                formData.append('utm_source', urlParams.get('utm_source') || '');
                formData.append('utm_medium', urlParams.get('utm_medium') || '');
                formData.append('utm_campaign', urlParams.get('utm_campaign') || '');
                formData.append('utm_term', urlParams.get('utm_term') || '');
                formData.append('utm_content', urlParams.get('utm_content') || '');

                // FormData 내용 확인
                console.log('전송할 데이터:');
                for (let [key, value] of formData.entries()) {
                    console.log(key + ':', "'" + value + "'");
                }

                // 제출 버튼 비활성화
                const submitBtn = document.getElementById('mobileSubmitBtn');
                let originalText = '무료 상담 신청'; // 기본값 설정
                if (submitBtn) {
                    originalText = submitBtn.textContent;
                    submitBtn.disabled = true;
                    submitBtn.textContent = '처리중...';

                    // 복원 함수
                    window.restoreSubmitBtn = function () {
                        submitBtn.disabled = false;
                        submitBtn.textContent = originalText;
                    };
                } else {
                    console.error('mobileSubmitBtn 요소를 찾을 수 없습니다!');
                }

                console.log('서버로 데이터 전송 시작...');

                // 서버에 데이터 전송 (URLSearchParams 사용)
                fetch('/consultation', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: formData
                })
                    .then(response => {
                        console.log('서버 응답 상태:', response.status);
                        if (!response.ok) {
                            throw new Error('HTTP ' + response.status);
                        }
                        return response.json();
                    })
                    .then(data => {
                        console.log('서버 응답 데이터:', data);

                        if (data.success) {
                            console.log('상담 신청 성공:', data);

                            // 성공 팝업 표시
                            const successPopup = document.getElementById('consultationSuccessPopup');
                            if (successPopup) {
                                successPopup.style.display = 'flex';
                                setTimeout(() => {
                                    successPopup.classList.add('show');
                                }, 10);
                                document.body.style.overflow = 'hidden';
                            }

                            // 폼 초기화
                            nameElement.value = '';
                            phoneElement.value = '';
                            if (debtAmountElement) debtAmountElement.value = '';
                            if (incomeElement) incomeElement.value = '';
                            if (privacyElement) privacyElement.checked = false;

                            // 폼 닫기
                            const expandedForm = document.getElementById('expandedForm');
                            const toggleBtn = document.getElementById('toggleBtn');
                            if (expandedForm && toggleBtn) {
                                expandedForm.classList.remove('show');
                                toggleBtn.classList.remove('collapsed');
                            }

                        } else {
                            console.error('상담 신청 실패:', data.message);
                            alert(data.message || '상담 신청 중 오류가 발생했습니다.');
                        }
                    })
                    .catch(error => {
                        console.error('네트워크 오류:', error);
                        alert('네트워크 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
                    })
                    .finally(() => {
                        // 제출 버튼 복원
                        if (submitBtn) {
                            submitBtn.disabled = false;
                            submitBtn.textContent = originalText;
                        }
                    });
            }

            // 팝업 폼 유효성 검증 함수
            function validatePopupForm() {
                console.log('validatePopupForm 호출됨');

                const name = document.getElementById('popupName')?.value?.trim() || '';
                const phone = document.getElementById('popupPhone')?.value?.trim() || '';
                const debtAmount = document.getElementById('popupDebt')?.value || '';
                const income = document.getElementById('popupIncome')?.value || '';
                const privacyAgree = document.getElementById('popupPrivacyAgree')?.checked || false;
                const submitBtn = document.getElementById('popupSubmitBtn');

                console.log('검증 데이터:', {
                    name: name,
                    phone: phone,
                    debtAmount: debtAmount,
                    income: income,
                    privacyAgree: privacyAgree
                });

                if (!submitBtn) {
                    console.error('submitBtn을 찾을 수 없습니다');
                    return;
                }

                // 모든 필수 항목이 입력되었는지 확인
                const isValid = name.length > 0 &&
                    phone.length >= 10 &&
                    debtAmount !== '' &&
                    income !== '' &&
                    privacyAgree === true;

                console.log('유효성 검사 결과:', isValid);

                if (isValid) {
                    submitBtn.disabled = false;
                    submitBtn.removeAttribute('disabled');
                    submitBtn.classList.remove('disabled');
                    submitBtn.style.setProperty('background-color', '#4865FF', 'important');
                    submitBtn.style.setProperty('opacity', '1', 'important');
                    submitBtn.style.setProperty('cursor', 'pointer', 'important');
                    submitBtn.style.setProperty('color', 'white', 'important');
                    submitBtn.style.setProperty('pointer-events', 'auto', 'important');
                } else {
                    submitBtn.disabled = true;
                    submitBtn.setAttribute('disabled', 'disabled');
                    submitBtn.classList.add('disabled');
                    submitBtn.style.setProperty('background-color', '#cccccc', 'important');
                    submitBtn.style.setProperty('opacity', '0.6', 'important');
                    submitBtn.style.setProperty('cursor', 'not-allowed', 'important');
                    submitBtn.style.setProperty('color', '#999999', 'important');
                    submitBtn.style.setProperty('pointer-events', 'none', 'important');
                }
            }

            // 두 번째 팝업 폼 유효성 검증 함수
            function validateSecondPopupForm() {
                console.log('validateSecondPopupForm 호출됨');

                const name = document.getElementById('popupName')?.value?.trim() || '';
                const phone = document.getElementById('popupPhone')?.value?.trim() || '';
                const debtAmount = document.getElementById('popupDebtAmount')?.value || '';
                const income = document.getElementById('popupIncome')?.value || '';
                const privacyAgree = document.getElementById('popupPrivacyAgree')?.checked || false;
                const submitBtn = document.getElementById('secondPopupSubmitBtn');

                console.log('두 번째 팝업 검증 데이터:', {
                    name: name,
                    phone: phone,
                    debtAmount: debtAmount,
                    income: income,
                    privacyAgree: privacyAgree
                });

                if (!submitBtn) {
                    console.error('secondPopupSubmitBtn을 찾을 수 없습니다');
                    return;
                }

                // 모든 필수 항목이 입력되었는지 확인
                const isValid = name.length > 0 &&
                    phone.length >= 10 &&
                    debtAmount !== '' &&
                    income !== '' &&
                    privacyAgree === true;

                console.log('두 번째 팝업 유효성 검사 결과:', isValid);

                if (isValid) {
                    submitBtn.disabled = false;
                    submitBtn.classList.remove('disabled');
                    submitBtn.style.setProperty('background', '#4865FF', 'important');
                    submitBtn.style.setProperty('opacity', '1', 'important');
                    submitBtn.style.setProperty('cursor', 'pointer', 'important');
                    submitBtn.style.setProperty('color', 'white', 'important');
                } else {
                    submitBtn.disabled = true;
                    submitBtn.classList.add('disabled');
                    submitBtn.style.setProperty('background', '#ccc', 'important');
                    submitBtn.style.setProperty('opacity', '0.6', 'important');
                    submitBtn.style.setProperty('cursor', 'not-allowed', 'important');
                    submitBtn.style.setProperty('color', '#999', 'important');
                }
            }

            // 상담 팝업 열기 함수
            function openConsultationPopup() {
                const popup = document.getElementById('consultationPopup');
                const deviceField = document.getElementById('popupDevice');

                // 디바이스 정보 설정 (PC/Mobile)
                const isMobile = window.innerWidth <= 768;
                if (deviceField) {
                    deviceField.value = isMobile ? 'Mobile' : 'PC';
                }

                // 기존 폼에서 입력된 정보를 팝업으로 전달
                const mainFormName = document.getElementById('name').value.trim();
                const mainFormPhone = document.getElementById('phone').value.trim();
                const mainFormDebt = document.getElementById('debt').value;
                const mainFormIncome = document.getElementById('income').value;

                // 팝업 폼의 필드들에 값 설정
                if (mainFormName && document.getElementById('popupName')) {
                    document.getElementById('popupName').value = mainFormName;
                }
                if (mainFormPhone && document.getElementById('popupPhone')) {
                    document.getElementById('popupPhone').value = mainFormPhone;
                }
                if (mainFormDebt && document.getElementById('popupDebt')) {
                    document.getElementById('popupDebt').value = mainFormDebt;
                }
                if (mainFormIncome && document.getElementById('popupIncome')) {
                    document.getElementById('popupIncome').value = mainFormIncome;
                }

                if (popup) {
                    popup.style.display = 'flex';
                    setTimeout(() => {
                        popup.classList.add('show');
                        // 팝업이 열린 후 초기 검증 실행
                        setTimeout(() => {
                            validatePopupForm();
                            validateSecondPopupForm(); // 두 번째 팝업도 검증
                        }, 100);
                    }, 10);
                    document.body.style.overflow = 'hidden';
                }
            }

            // 상담 팝업 닫기 함수
            function closeConsultationPopup() {
                const popup = document.getElementById('consultationPopup');
                if (popup) {
                    popup.classList.remove('show');
                    setTimeout(() => {
                        popup.style.display = 'none';
                        document.body.style.overflow = '';
                        // 폼 초기화
                        const form = document.getElementById('consultationPopupForm');
                        if (form) {
                            form.reset();
                        }
                        // 버튼 상태 초기화 (비활성화)
                        setTimeout(() => {
                            validatePopupForm();
                            validateSecondPopupForm(); // 두 번째 팝업도 초기화
                        }, 50);
                    }, 300);
                }
            }

            // 성공 팝업 닫기 함수
            function closeSuccessPopup() {
                const popup = document.getElementById('consultationSuccessPopup');
                if (popup) {
                    popup.classList.remove('show');
                    setTimeout(() => {
                        popup.style.display = 'none';
                        document.body.style.overflow = '';
                    }, 300);
                }
            }

            // 팝업 상담 신청 제출 함수
            function submitConsultationForm(event) {
                event.preventDefault();

                const form = document.getElementById('consultationPopupForm');
                const formData = new FormData(form);

                // 필수 항목 검증
                const name = formData.get('name').trim();
                const phone = formData.get('phone').trim();
                const debtAmount = formData.get('debtAmount');
                const income = formData.get('income');
                const privacyAgree = formData.get('privacyAgree');

                if (!name) {
                    alert('이름을 입력해 주세요');
                    return;
                }

                if (!phone) {
                    alert('연락처를 입력해 주세요');
                    return;
                }

                if (!debtAmount) {
                    alert('채무금액을 선택해 주세요');
                    return;
                }

                if (!income) {
                    alert('월소득을 선택해 주세요');
                    return;
                }

                if (!privacyAgree) {
                    alert('개인정보 수집 및 이용에 동의해 주세요');
                    return;
                }

                // 연락처 형식 검증 (숫자만, 10-11자리)
                const phoneRegex = /^[0-9]{10,11}$/;
                if (!phoneRegex.test(phone)) {
                    alert('올바른 연락처를 입력해 주세요 (10-11자리 숫자)');
                    return;
                }

                // 제출 버튼 비활성화
                const submitBtn = form.querySelector('.consultation-submit-popup-btn');
                const originalText = submitBtn.textContent;
                submitBtn.disabled = true;
                submitBtn.textContent = '처리중...';

                // 폼 데이터 재구성 (서버 API에 맞게) - URLSearchParams 사용
                const apiFormData = new URLSearchParams();
                apiFormData.append('name', name);
                apiFormData.append('phone', phone);
                apiFormData.append('debtAmount', debtAmount);
                apiFormData.append('income', income);
                apiFormData.append('device', formData.get('device'));
                apiFormData.append('type', '무료상담신청(팝업)');

                // UTM 파라미터 추가 (URL에서 추출)
                const urlParams = new URLSearchParams(window.location.search);
                apiFormData.append('utm_source', urlParams.get('utm_source') || '');
                apiFormData.append('utm_medium', urlParams.get('utm_medium') || '');
                apiFormData.append('utm_campaign', urlParams.get('utm_campaign') || '');
                apiFormData.append('utm_term', urlParams.get('utm_term') || '');
                apiFormData.append('utm_content', urlParams.get('utm_content') || '');

                // 서버에 데이터 전송
                fetch('/consultation', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: apiFormData
                })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            console.log('상담 신청 성공:', data);

                            // 상담 신청 팝업 닫기
                            closeConsultationPopup();

                            // 성공 팝업 표시
                            setTimeout(() => {
                                const successPopup = document.getElementById('consultationSuccessPopup');
                                if (successPopup) {
                                    successPopup.style.display = 'flex';
                                    setTimeout(() => {
                                        successPopup.classList.add('show');
                                    }, 10);
                                    document.body.style.overflow = 'hidden';
                                }
                            }, 400);

                        } else {
                            console.error('상담 신청 실패:', data.message);
                            alert(data.message || '상담 신청 중 오류가 발생했습니다.');
                        }
                    })
                    .catch(error => {
                        console.error('네트워크 오류:', error);
                        alert('네트워크 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.');
                    })
                    .finally(() => {
                        // 제출 버튼 복원
                        submitBtn.disabled = false;
                        submitBtn.textContent = originalText;
                    });
            }

            // 팝업 외부 클릭 시 닫기
            document.addEventListener('click', function (event) {
                const consultationPopup = document.getElementById('consultationPopup');
                const successPopup = document.getElementById('consultationSuccessPopup');

                if (event.target === consultationPopup) {
                    closeConsultationPopup();
                }

                if (event.target === successPopup) {
                    closeSuccessPopup();
                }
            });

            // ESC 키로 팝업 닫기
            document.addEventListener('keydown', function (event) {
                if (event.key === 'Escape') {
                    closeConsultationPopup();
                    closeSuccessPopup();
                }
            });
        </script>

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
                            <label for="popupDebt">채무금액 *</label>
                            <select id="popupDebt" name="debtAmount" required onchange="validatePopupForm()">
                                <option value="">채무금액을 선택해주세요</option>
                                <option value="1000만원 미만">1000만원 미만</option>
                                <option value="1000만원~3000만원">1000만원~3000만원</option>
                                <option value="3000만원~5000만원">3000만원~5000만원</option>
                                <option value="5000만원~1억원">5000만원~1억원</option>
                                <option value="1억원 이상">1억원 이상</option>
                            </select>
                        </div>

                        <div class="popup-form-group">
                            <label for="popupIncome">월소득 *</label>
                            <select id="popupIncome" name="income" required onchange="validatePopupForm()">
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
                    // 에이스법률사무소 위치 좌표 (서울특별시 서초구 사임당로17길 9, 2층)
                    var aceLocation = new naver.maps.LatLng(37.4838, 127.0084);

                    // 지도 옵션 설정
                    var mapOptions = {
                        center: aceLocation,
                        zoom: 17,
                        mapTypeId: naver.maps.MapTypeId.NORMAL,
                        zoomControl: true,
                        zoomControlOptions: {
                            position: naver.maps.Position.TOP_RIGHT,
                            style: naver.maps.ZoomControlStyle.SMALL
                        },
                        mapDataControl: false,
                        scaleControl: true,
                        logoControl: true,
                        mapTypeControl: false,
                        minZoom: 10,
                        maxZoom: 21
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
                            '       📍 서울특별시 서초구 사임당로17길 9, 2층<br>',
                            '       &nbsp;&nbsp;&nbsp;&nbsp;(서초동, 서초타워)',
                            '   </div>',
                            '   <div style="font-size: 16px; color: #4865FF; font-weight: bold; margin-bottom: 15px; text-align: center;">',
                            '       📞 1555-1684',
                            '   </div>',
                            '   <div style="display: flex; gap: 10px; justify-content: center;">',
                            '       <a href="tel:1555-1684" style="background: #4865FF; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">📞 전화걸기</a>',
                            '       <a href="https://map.naver.com/p/directions/-/14135817.8893127,4516088.8840108" target="_blank" style="background: #03C75A; color: white; padding: 8px 16px; border-radius: 6px; text-decoration: none; font-size: 13px; font-weight: 500;">🗺️ 길찾기</a>',
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
                                서울특별시 서초구 사임당로17길 9, 2층<br>
                                (서초동, 서초타워)
                            </div>
                            <div style="display: flex; gap: 10px; flex-wrap: wrap; justify-content: center;">
                                <a href="https://map.naver.com/p/entry/place/1862068169" target="_blank" 
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
                                <a href="https://map.kakao.com/link/map/에이스법률사무소,37.4838,127.0084" target="_blank"
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

                const locationUrl = 'https://map.naver.com/p/entry/place/1862068169';
                const locationText = '에이스법률사무소 - 서울특별시 서초구 사임당로17길 9, 2층';

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
    </body>

    </html>