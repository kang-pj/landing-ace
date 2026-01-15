<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>ACE 법무법인 - 모바일</title>
    <link rel="preconnect" href="https://cdn.jsdelivr.net">
    <link href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Pretendard", -apple-system, BlinkMacSystemFont, system-ui, sans-serif;
            background: #ffffff;
            min-height: 100vh;
            padding-bottom: 80px;
        }

        /* 모바일 헤더 */
        .mobile-header {
            background: #ffffff;
            padding: 12px 20px;
            border-bottom: 1px solid #e0e0e0;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo-box {
            height: 32px;
            object-fit: contain;
        }

        .menu-btn {
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
            padding: 5px;
        }

        /* 메인 배너 */
        .main-banner {
            background: linear-gradient(135deg, #4865FF 0%, #365a9b 100%);
            padding: 40px 20px;
            text-align: center;
            color: white;
        }

        .banner-title {
            font-size: 24px;
            font-weight: 700;
            line-height: 1.4;
            margin-bottom: 10px;
        }

        .banner-subtitle {
            font-size: 16px;
            font-weight: 500;
            opacity: 0.9;
            margin-bottom: 30px;
        }

        .highlight {
            color: #FFD700;
        }

        /* 통계 박스 */
        .stats-section {
            padding: 30px 20px;
            background: #f8f9fa;
        }

        .stat-box {
            background: white;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 15px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .stat-icon {
            width: 40px;
            height: 40px;
            background: #4865FF;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .stat-icon img {
            width: 24px;
            height: 24px;
        }

        .stat-text {
            flex: 1;
            font-size: 16px;
            font-weight: 600;
            color: #333;
        }

        .stat-highlight {
            color: #4865FF;
        }

        /* 상담 신청 폼 */
        .consultation-form {
            background: white;
            padding: 25px 20px;
            margin: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .form-title {
            font-size: 20px;
            font-weight: 700;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            font-weight: 500;
            color: #333;
            margin-bottom: 8px;
        }

        .required {
            color: #ff0000;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 14px;
            border: 2px solid #e5e5e5;
            border-radius: 8px;
            font-size: 15px;
            background: white;
        }

        .form-group input:focus,
        .form-group select:focus {
            outline: none;
            border-color: #4865FF;
        }

        .submit-btn {
            width: 100%;
            background: #4865FF;
            color: white;
            border: none;
            padding: 16px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            margin-top: 10px;
        }

        .privacy-notice {
            text-align: center;
            font-size: 12px;
            color: #666;
            margin-top: 15px;
        }

        /* 누적 탕감액 */
        .reduction-section {
            background: linear-gradient(135deg, #4865FF 0%, #365a9b 100%);
            color: white;
            padding: 40px 20px;
            text-align: center;
        }

        .reduction-title {
            font-size: 18px;
            margin-bottom: 15px;
        }

        .amount-display {
            background: white;
            color: #4865FF;
            padding: 15px;
            border-radius: 30px;
            font-size: 28px;
            font-weight: 700;
            margin: 0 auto;
            max-width: 300px;
        }

        /* AI 자가진단 */
        .diagnosis-section {
            padding: 40px 20px;
            background: white;
        }

        .section-title {
            font-size: 22px;
            font-weight: 700;
            text-align: center;
            margin-bottom: 10px;
            color: #333;
        }

        .section-subtitle {
            font-size: 14px;
            color: #666;
            text-align: center;
            margin-bottom: 30px;
        }

        .diagnosis-card {
            background: #f8f9fa;
            border-radius: 15px;
            padding: 25px 20px;
            margin-bottom: 15px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .diagnosis-card:active {
            background: #e8f2ff;
            transform: scale(0.98);
        }

        .card-subtitle {
            font-size: 14px;
            color: #666;
            margin-bottom: 8px;
        }

        .card-title {
            font-size: 20px;
            font-weight: 700;
            color: #333;
        }

        /* 고객 사례 */
        .cases-section {
            padding: 40px 20px;
            background: #f8f9fa;
        }

        .case-tabs {
            display: flex;
            gap: 8px;
            margin-bottom: 20px;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
        }

        .tab-btn {
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            background: white;
            color: #666;
            font-size: 14px;
            font-weight: 500;
            white-space: nowrap;
            cursor: pointer;
        }

        .tab-btn.active {
            background: #333;
            color: white;
        }

        .case-card {
            background: white;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 15px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
        }

        .case-profile {
            display: flex;
            gap: 15px;
            margin-bottom: 15px;
        }

        .profile-img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
        }

        .profile-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .case-badges {
            display: flex;
            gap: 8px;
            margin-bottom: 8px;
        }

        .case-type {
            background: #4865FF;
            color: white;
            padding: 4px 12px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: 600;
        }

        .case-success {
            background: #FFD700;
            color: #333;
            padding: 4px 12px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: 600;
        }

        .case-name {
            font-size: 16px;
            font-weight: 700;
            color: #333;
        }

        .case-age {
            font-size: 13px;
            color: #666;
        }

        .case-result {
            background: #fff3cd;
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 15px;
            font-size: 14px;
            font-weight: 600;
            color: #856404;
        }

        .case-details {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            font-size: 14px;
        }

        .detail-row .label {
            font-weight: 400;
        }

        .detail-row .value {
            font-weight: 600;
        }

        .detail-row.total-debt .label,
        .detail-row.total-debt .value {
            color: #727272;
        }

        .detail-row.reduced-principal .label,
        .detail-row.reduced-principal .value {
            color: #424242;
        }

        .detail-row.monthly-payment .label,
        .detail-row.monthly-payment .value {
            color: #4865FF;
        }

        /* 하단 고정 버튼 */
        .bottom-bar {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            background: white;
            border-top: 1px solid #e0e0e0;
            padding: 12px 20px;
            display: flex;
            gap: 10px;
            z-index: 100;
        }

        .bottom-btn {
            flex: 1;
            padding: 14px;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
        }

        .btn-call {
            background: #4865FF;
            color: white;
        }

        .btn-kakao {
            background: #FEE500;
            color: #333;
        }

        /* 플로팅 버튼 */
        .floating-top {
            position: fixed;
            right: 20px;
            bottom: 90px;
            width: 50px;
            height: 50px;
            background: white;
            border-radius: 50%;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            z-index: 99;
        }

        .floating-top img {
            width: 20px;
            height: 20px;
        }
    </style>
</head>
<body>
    <!-- 모바일 헤더 -->
    <header class="mobile-header">
        <div class="header-content">
            <img src="/images/logo.png" alt="ACE 법무법인" class="logo-box">
            <button class="menu-btn">☰</button>
        </div>
    </header>

    <!-- 메인 배너 -->
    <section class="main-banner">
        <h1 class="banner-title">
            대한민국 1등<br>
            <span class="highlight">채무 탕감 전문</span><br>
            ACE 법무법인
        </h1>
        <p class="banner-subtitle">빠르고 정확한 채무 해결</p>
    </section>

    <!-- 통계 섹션 -->
    <section class="stats-section">
        <div class="stat-box">
            <div class="stat-icon">
                <img src="/images/icon_service_01.png" alt="아이콘">
            </div>
            <div class="stat-text">
                누적 상담 건수 <span class="stat-highlight">10,000건+</span>
            </div>
        </div>
        <div class="stat-box">
            <div class="stat-icon">
                <img src="/images/icon_service_02.png" alt="아이콘">
            </div>
            <div class="stat-text">
                평균 탕감률 <span class="stat-highlight">92%</span>
            </div>
        </div>
        <div class="stat-box">
            <div class="stat-icon">
                <img src="/images/won_icon.png" alt="아이콘">
            </div>
            <div class="stat-text">
                누적 탕감액 <span class="stat-highlight">1,000억원+</span>
            </div>
        </div>
    </section>

    <!-- 상담 신청 폼 -->
    <section class="consultation-form">
        <h2 class="form-title">무료 상담 신청</h2>
        <form>
            <div class="form-group">
                <label>이름 <span class="required">*</span></label>
                <input type="text" placeholder="이름을 입력하세요" required>
            </div>
            <div class="form-group">
                <label>연락처 <span class="required">*</span></label>
                <input type="tel" placeholder="010-0000-0000" required>
            </div>
            <div class="form-group">
                <label>상담 유형 <span class="required">*</span></label>
                <select required>
                    <option value="">선택하세요</option>
                    <option value="개인회생">개인회생</option>
                    <option value="개인파산">개인파산</option>
                    <option value="법인회생">법인회생</option>
                    <option value="법인파산">법인파산</option>
                </select>
            </div>
            <button type="submit" class="submit-btn">무료 상담 신청하기</button>
            <div class="privacy-notice">
                <input type="checkbox" id="privacy" required>
                <label for="privacy">개인정보 수집 및 이용에 동의합니다</label>
            </div>
        </form>
    </section>

    <!-- 누적 탕감액 -->
    <section class="reduction-section">
        <h2 class="reduction-title">ACE 법무법인 누적 탕감액</h2>
        <div class="amount-display">
            1,234,567,890원
        </div>
    </section>

    <!-- AI 자가진단 -->
    <section class="diagnosis-section">
        <h2 class="section-title">AI 자가진단</h2>
        <p class="section-subtitle">간단한 정보 입력으로 예상 탕감액을 확인하세요</p>
        
        <div class="diagnosis-card">
            <p class="card-subtitle">개인 채무자를 위한</p>
            <h3 class="card-title">개인회생/파산 진단</h3>
        </div>
        
        <div class="diagnosis-card">
            <p class="card-subtitle">법인 채무자를 위한</p>
            <h3 class="card-title">법인회생/파산 진단</h3>
        </div>
    </section>

    <!-- 고객 사례 -->
    <section class="cases-section">
        <h2 class="section-title">고객 성공 사례</h2>
        <p class="section-subtitle">실제 고객님들의 채무 탕감 사례입니다</p>
        
        <div class="case-tabs">
            <button class="tab-btn active">전체</button>
            <button class="tab-btn">개인회생</button>
            <button class="tab-btn">개인파산</button>
        </div>

        <div class="case-card">
            <div class="case-profile">
                <div class="profile-img">
                    <img src="/images/mo_icon_review_01.png" alt="프로필">
                </div>
                <div>
                    <div class="case-badges">
                        <span class="case-type">개인회생</span>
                        <span class="case-success">96% 탕감</span>
                    </div>
                    <div class="case-name">김○○님</div>
                    <div class="case-age">50대 여성, 주부</div>
                </div>
            </div>
            <div class="case-result">
                💰 총 채무액 162,678,791원 탕감!
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
                <div class="profile-img">
                    <img src="/images/man1.png" alt="프로필">
                </div>
                <div>
                    <div class="case-badges">
                        <span class="case-type">개인파산</span>
                        <span class="case-success">100% 탕감</span>
                    </div>
                    <div class="case-name">이○○님</div>
                    <div class="case-age">40대 남성, 자영업</div>
                </div>
            </div>
            <div class="case-result">
                💰 총 채무액 530,000,000원 면책!
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
                <div class="detail-row monthly-payment">
                    <span class="label">월 변제액</span>
                    <span class="value">-</span>
                </div>
            </div>
        </div>
    </section>

    <!-- 하단 고정 버튼 -->
    <div class="bottom-bar">
        <button class="bottom-btn btn-call">📞 전화 상담</button>
        <button class="bottom-btn btn-kakao">💬 카톡 상담</button>
    </div>

    <!-- TOP 버튼 -->
    <div class="floating-top" onclick="window.scrollTo({top: 0, behavior: 'smooth'})">
        <img src="/images/icon_top.png" alt="TOP">
    </div>

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</body>
</html>
