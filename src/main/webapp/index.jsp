<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ACE 법무법인</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Malgun Gothic', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
            background: #ffffff;
            min-height: 100vh;
        }
        
        /* 헤더 */
        .header {
            background: #ffffff;
            padding: 15px 0;
            border-bottom: 1px solid #e0e0e0;
        }
        
        .header-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .logo-box {
            background: #4472c4;
            color: white;
            padding: 8px 16px;
            border-radius: 4px;
            font-weight: bold;
            font-size: 16px;
        }
        
        .nav-menu {
            display: flex;
            gap: 40px;
            align-items: center;
        }
        
        .nav-menu a {
            text-decoration: none;
            color: #333;
            font-weight: 400;
            font-size: 15px;
        }
        
        .contact-phone {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #4472c4;
            font-weight: bold;
            font-size: 16px;
        }
        
        .phone-icon {
            width: 20px;
            height: 20px;
            background: #4472c4;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 12px;
        }
        
        /* 메인 배경 영역 */
        .main-background {
            background: linear-gradient(180deg, #e8f2ff 0%, #d4e8ff 50%, #c0ddff 100%);
            min-height: 70vh;
            position: relative;
            padding: 40px 0 100px;
        }
        
        /* 메인 컨테이너 */
        .main-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            text-align: center;
            position: relative;
        }
        
        /* 메인 타이틀 */
        .main-title {
            margin-bottom: 50px;
        }
        
        .title-small {
            font-size: 18px;
            color: #666;
            margin-bottom: 15px;
            font-weight: normal;
        }
        
        .title-large {
            font-size: 44px;
            font-weight: bold;
            color: #4472c4;
            margin-bottom: 12px;
            line-height: 1.2;
        }
        
        .title-subtitle {
            font-size: 34px;
            font-weight: bold;
            color: #333;
            margin-bottom: 0;
            line-height: 1.2;
        }
        
        /* 통계 박스들 */
        .stats-section {
            margin-bottom: 60px;
        }
        
        .stats-container {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-bottom: 0;
        }
        
        .stat-box {
            background: rgba(255, 255, 255, 0.7);
            border-radius: 15px;
            padding: 25px 35px;
            box-shadow: 0 8px 30px rgba(68, 114, 196, 0.15);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.5);
            min-width: 280px;
            position: relative;
        }
        
        .stat-icon {
            width: 50px;
            height: 50px;
            background: #4472c4;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            color: white;
            font-size: 24px;
        }
        
        .stat-number {
            font-size: 18px;
            font-weight: bold;
            color: #4472c4;
            margin-bottom: 8px;
            line-height: 1.3;
        }
        
        .stat-text {
            font-size: 16px;
            color: #666;
            line-height: 1.4;
        }
        
        /* 상담 신청 폼 */
        .consultation-section {
            position: absolute;
            bottom: -60px;
            left: 50%;
            transform: translateX(-50%);
            width: calc(100% - 40px);
            max-width: 1000px;
        }
        
        .consultation-form {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 15px 40px rgba(68, 114, 196, 0.2);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.8);
        }
        
        .form-row {
            display: flex;
            gap: 20px;
            margin-bottom: 25px;
            align-items: end;
        }
        
        .form-group {
            flex: 1;
            text-align: left;
        }
        
        .form-group label {
            display: block;
            font-size: 14px;
            color: #333;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .required {
            color: #ff0000;
        }
        
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 15px 18px;
            border: 2px solid #e5e5e5;
            border-radius: 10px;
            font-size: 15px;
            background: white;
            color: #333;
            transition: border-color 0.3s;
        }
        
        .form-group input:focus,
        .form-group select:focus {
            outline: none;
            border-color: #4472c4;
        }
        
        .form-group input::placeholder {
            color: #aaa;
        }
        
        .submit-btn {
            background: #4472c4;
            color: white;
            border: none;
            padding: 18px 35px;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
            height: 58px;
            white-space: nowrap;
            min-width: 140px;
        }
        
        .submit-btn:hover {
            background: #365a9b;
        }
        
        .privacy-notice {
            text-align: right;
            margin-top: 20px;
            font-size: 13px;
            color: #666;
            display: flex;
            align-items: center;
            justify-content: flex-end;
            gap: 8px;
        }
        
        .privacy-checkbox {
            margin-right: 5px;
        }
        
        .privacy-link {
            color: #4472c4;
            text-decoration: underline;
        }
        
        /* 플로팅 버튼들 */
        .floating-buttons {
            position: fixed;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            z-index: 1000;
            transition: transform 0.6s cubic-bezier(0.25, 0.46, 0.45, 0.94);
        }
        
        .floating-btn-container {
            background: white;
            border-radius: 20px;
            padding: 15px 12px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.12);
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }
        
        .floating-btn-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-decoration: none;
            transition: transform 0.3s;
        }
        
        .floating-btn-item:hover {
            transform: scale(1.05);
        }
        
        .floating-btn {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 6px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.08);
        }
        
        .floating-btn.phone {
            background: #4472c4;
        }
        
        .floating-btn.kakao {
            background: #fee500;
        }
        
        .floating-btn.sms {
            background: #87ceeb;
        }
        
        .floating-btn-icon {
            font-size: 20px;
            color: white;
        }
        
        .floating-btn.kakao .floating-btn-icon {
            color: #333;
        }
        
        .floating-btn-text {
            font-size: 12px;
            font-weight: 500;
            color: #333;
            text-align: center;
            line-height: 1.2;
        }
        
        .top-btn {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-decoration: none;
            color: #666;
            margin-top: 12px;
            padding-top: 12px;
            border-top: 1px solid #e0e0e0;
            transition: color 0.3s;
        }
        
        .top-btn:hover {
            color: #333;
        }
        
        .top-icon {
            font-size: 16px;
            margin-bottom: 4px;
        }
        
        .top-text {
            font-size: 10px;
            font-weight: 500;
        }
        
        /* 하단 여백 */
        .bottom-spacer {
            height: 120px;
            background: white;
        }
        
        /* AI 자가진단 섹션 */
        .ai-diagnosis-section {
            background: white;
            padding: 80px 20px;
        }
        
        .ai-container {
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
        }
        
        .ai-title {
            margin-bottom: 60px;
        }
        
        .ai-title h3 {
            font-size: 24px;
            color: #666;
            margin-bottom: 15px;
            font-weight: normal;
        }
        
        .ai-title h2 {
            font-size: 40px;
            color: #333;
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        .ai-subtitle {
            font-size: 16px;
            color: #666;
        }
        
        /* 진단 카드들 */
        .diagnosis-cards {
            display: flex;
            justify-content: center;
            gap: 40px;
            max-width: 900px;
            margin: 0 auto;
        }
        
        .diagnosis-card {
            flex: 1;
            background: #f8f9fa;
            border: 2px solid #e9ecef;
            border-radius: 20px;
            padding: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            min-height: 180px;
            display: flex;
            flex-direction: column;
        }
        
        .diagnosis-card:hover {
            background: #e8f2ff;
            border-color: #4472c4;
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(68, 114, 196, 0.2);
        }
        
        .card-content {
            flex: 1;
            text-align: left;
        }
        
        .card-subtitle {
            font-size: 16px;
            color: #666;
            margin-bottom: 12px;
            line-height: 1.4;
        }
        
        .card-title {
            font-size: 28px;
            font-weight: bold;
            color: #333;
            margin: 0;
        }
        
        .card-icon {
            font-size: 70px;
            color: #4472c4;
            text-align: right;
            margin-top: auto;
        }
        
        /* 고객 사례 섹션 */
        .customer-cases-section {
            background: white;
            padding: 80px 20px 100px;
        }
        
        .cases-container {
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .cases-header {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .cases-subtitle {
            font-size: 16px;
            color: #666;
            margin-bottom: 15px;
        }
        
        .cases-title {
            font-size: 36px;
            font-weight: bold;
            color: #333;
            margin-bottom: 40px;
        }
        
        .case-tabs {
            display: flex;
            justify-content: center;
            gap: 12px;
        }
        
        .tab-btn {
            padding: 10px 25px;
            border: none;
            border-radius: 25px;
            background: #f0f0f0;
            color: #666;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
            min-width: 100px;
        }
        
        .tab-btn.active {
            background: #333;
            color: white;
        }
        
        .tab-btn:hover:not(.active) {
            background: #e0e0e0;
        }
        
        .cases-wrapper {
            overflow: hidden;
            padding: 15px 20px;
            height: 380px;
        }
        
        .cases-slider-container {
            position: relative;
        }
        
        .slider-btn {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background: transparent;
            border: none;
            color: #666;
            cursor: pointer;
            z-index: 10;
            transition: all 0.3s;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .slider-btn:hover {
            color: #333;
            cursor: pointer;
        }
        
        .slider-btn::before {
            content: '';
            width: 15px;
            height: 15px;
            border-top: 3px solid currentColor;
            border-right: 3px solid currentColor;
            transform: rotate(45deg);
        }
        
        .slider-btn.prev {
            left: -80px;
        }
        
        .slider-btn.prev::before {
            transform: rotate(-135deg);
        }
        
        .slider-btn.next {
            right: -80px;
        }
        
        .slider-btn.next::before {
            transform: rotate(45deg);
        }
        
        .cases-track {
            display: flex;
            width: 300%;
            transition: transform 0.5s ease-in-out;
        }
        
        .case-group {
            display: flex;
            gap: 30px;
            width: 33.333%;
            flex-wrap: nowrap;
            align-items: stretch;
            flex-shrink: 0;
            min-width: 33.333%;
        }
        
        .case-card {
            flex: 1;
            background: white;
            border: 1px solid #e9ecef;
            border-radius: 15px;
            padding: 25px;
            transition: all 0.3s;
            position: relative;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            min-width: 0;
        }
        
        .case-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        
        .case-profile {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 20px;
        }
        
        .profile-img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background: #f8f9fa;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
            border: 2px solid #e9ecef;
        }
        
        .case-info {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        
        .case-name-row {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .case-badges {
            display: flex;
            gap: 8px;
            margin-bottom: 5px;
        }
        
        .case-type {
            background: #e9ecef;
            color: #666;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 11px;
            font-weight: 500;
        }
        
        .case-success {
            background: #e8f2ff;
            color: #4472c4;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 11px;
            font-weight: 500;
        }
        
        .case-name {
            font-size: 20px;
            font-weight: bold;
            color: #333;
            margin: 0;
        }
        
        .case-age {
            font-size: 13px;
            color: #999;
            margin-top: 2px;
        }
        
        .case-result {
            margin-bottom: 25px;
        }
        
        .result-badge {
            background: #4472c4;
            color: white;
            padding: 12px 16px;
            border-radius: 8px;
            font-size: 13px;
            font-weight: 600;
            text-align: center;
            position: relative;
        }
        
        .result-badge::before {
            content: '';
            position: absolute;
            bottom: -8px;
            left: 50%;
            transform: translateX(-50%);
            width: 0;
            height: 0;
            border-left: 8px solid transparent;
            border-right: 8px solid transparent;
            border-top: 8px solid #4472c4;
        }
        
        .case-details {
            display: flex;
            flex-direction: column;
            gap: 12px;
            border: 1px solid #e9ecef;
            border-radius: 8px;
            padding: 15px;
            background: #fafafa;
            min-height: 120px;
        }
        
        .detail-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0;
            font-size: 14px;
            min-height: 24px;
        }
        
        .detail-row.empty {
            visibility: hidden;
        }
        
        .detail-row .label {
            color: #666;
            font-weight: 400;
        }
        
        .detail-row .value {
            font-weight: 600;
            color: #333;
        }
        
        .detail-row .value.red {
            color: #ff4757;
            font-weight: bold;
        }
        
        .detail-row .value.blue {
            color: #4472c4;
            font-weight: bold;
        }
        
        /* 상담 신청 알림 */
        .consultation-alerts {
            background: #4472c4;
            color: white;
            overflow: hidden;
            position: relative;
            height: 80px;
            display: flex;
            flex-direction: column;
        }
        
        .alert-row {
            display: flex;
            animation: scrollLeft 30s linear infinite;
            white-space: nowrap;
            height: 40px;
            align-items: center;
        }
        
        .alert-row:nth-child(2) {
            animation-delay: -15s;
        }
        
        .alert-item {
            padding: 0 50px;
            font-size: 14px;
            font-weight: 500;
            flex-shrink: 0;
        }
        
        @keyframes scrollLeft {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }
        
        /* 반응형 디자인 */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                gap: 15px;
                padding: 15px;
            }
            
            .nav-menu {
                gap: 20px;
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .main-background {
                padding: 30px 0 120px;
            }
            
            .main-container {
                padding: 0 15px;
            }
            
            .title-large {
                font-size: 32px;
            }
            
            .title-subtitle {
                font-size: 24px;
            }
            
            .stats-container {
                flex-direction: column;
                align-items: center;
                gap: 25px;
            }
            
            .stat-box {
                min-width: auto;
                width: 100%;
                max-width: 350px;
                padding: 20px 25px;
            }
            
            .consultation-section {
                position: relative;
                bottom: auto;
                left: auto;
                transform: none;
                width: 100%;
                margin-top: 60px;
            }
            
            .consultation-form {
                padding: 30px 25px;
                margin: 0 15px;
            }
            
            .form-row {
                flex-direction: column;
                gap: 15px;
            }
            
            .submit-btn {
                width: 100%;
                min-width: auto;
            }
            
            .ai-diagnosis-section {
                padding: 60px 15px;
            }
            
            .ai-title h2 {
                font-size: 32px;
            }
            
            .diagnosis-cards {
                flex-direction: column;
                gap: 25px;
                max-width: 100%;
            }
            
            .diagnosis-card {
                padding: 25px;
                min-height: 160px;
            }
            
            .card-title {
                font-size: 24px;
            }
            
            .card-subtitle {
                font-size: 15px;
            }
            
            .card-icon {
                font-size: 60px;
            }
            
            .cases-container {
                padding: 0 15px;
            }
            
            .cases-title {
                font-size: 28px;
            }
            
            .case-group {
                flex-direction: column;
                gap: 20px;
            }
            
            .cases-wrapper {
                padding: 15px;
                height: 280px;
            }
            
            .slider-btn {
                display: none;
            }
            
            .consultation-alerts {
                height: 60px;
            }
            
            .alert-row {
                height: 30px;
            }
            
            .alert-item {
                padding: 0 30px;
                font-size: 13px;
            }
            
            .floating-buttons {
                right: 15px;
            }
            
            .floating-btn-container {
                padding: 12px 10px;
                gap: 15px;
            }
            
            .floating-btn {
                width: 45px;
                height: 45px;
            }
            
            .floating-btn-icon {
                font-size: 18px;
            }
            
            .floating-btn-text {
                font-size: 11px;
            }
            
            .top-icon {
                font-size: 14px;
            }
            
            .top-text {
                font-size: 9px;
            }
        }
    </style>
</head>
<body>
    <!-- 헤더 -->
    <header class="header">
        <div class="header-container">
            <div class="logo">
                <div class="logo-box">ACE</div>
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
                <div class="phone-icon">📞</div>
                1555-1684
            </div>
        </div>
    </header>
    
    <!-- 메인 배경 영역 -->
    <div class="main-background">
        <div class="main-container">
            <!-- 메인 타이틀 -->
            <div class="main-title">
                <div class="title-small">과도한 빚으로 힘드실 때,</div>
                <div class="title-large">7,450억 빚을 줄여준</div>
                <div class="title-subtitle">개인회생 전문가에게 답을 찾으세요!</div>
            </div>
            
            <!-- 통계 섹션 -->
            <div class="stats-section">
                <div class="stats-container">
                    <div class="stat-box">
                        <div class="stat-icon">💰</div>
                        <div class="stat-number">7,450억의 빚 탕감</div>
                        <div class="stat-text"></div>
                    </div>
                    
                    <div class="stat-box">
                        <div class="stat-icon">📊</div>
                        <div class="stat-number">1만건 이상의 업무처리 경험</div>
                        <div class="stat-text"></div>
                    </div>
                    
                    <div class="stat-box">
                        <div class="stat-icon">📈</div>
                        <div class="stat-number">최대 96%의 따라올 수 없는 탕감률</div>
                        <div class="stat-text"></div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 상담 신청 폼 -->
        <div class="consultation-section">
            <div class="consultation-form">
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">이름 <span class="required">*</span></label>
                            <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="phone">연락처 <span class="required">*</span></label>
                            <input type="tel" id="phone" name="phone" placeholder="연락처를 입력하세요" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="debt">채무금액</label>
                            <select id="debt" name="debt" required>
                                <option value="">채무금액을 선택하세요</option>
                                <option value="1000">1천만원 미만</option>
                                <option value="3000">1천만원 ~ 3천만원</option>
                                <option value="5000">3천만원 ~ 5천만원</option>
                                <option value="10000">5천만원 ~ 1억원</option>
                                <option value="over">1억원 이상</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="income">월소득</label>
                            <select id="income" name="income" required>
                                <option value="">월소득을 선택하세요</option>
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
                    <input type="checkbox" id="privacy-agree" class="privacy-checkbox" required>
                    <label for="privacy-agree">개인정보 수집 및 이용에 대한 <a href="#" class="privacy-link">동의</a></label>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 하단 여백 -->
    <div class="bottom-spacer"></div>
    
    <!-- AI 자가진단 섹션 -->
    <section class="ai-diagnosis-section">
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
                    </div>
                    <div class="card-icon">👤</div>
                </div>
                
                <div class="diagnosis-card" onclick="selectDiagnosis('bankruptcy')">
                    <div class="card-content">
                        <p class="card-subtitle">과도한 빚으로 빚 변제가 어려우신분</p>
                        <h3 class="card-title">파산면책</h3>
                    </div>
                    <div class="card-icon">🏛️</div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 고객 사례 섹션 -->
    <section class="customer-cases-section">
        <div class="cases-container">
            <div class="cases-header">
                <p class="cases-subtitle">10,386건의 노하우가 보여주는 결과</p>
                <h2 class="cases-title">개인회생·파산 탕감 성공사례</h2>
                
                <div class="case-tabs">
                    <button class="tab-btn active" onclick="filterCases('groupA', this)">전체</button>
                    <button class="tab-btn" onclick="filterCases('groupB', this)">#개인회생</button>
                    <button class="tab-btn" onclick="filterCases('groupC', this)">#개인파산</button>
                </div>
            </div>
            
            <div class="cases-slider-container">
                <button class="slider-btn prev" onclick="prevCases()"></button>
                <div class="cases-wrapper">
                    <div class="cases-track" id="casesTrack">
                        <!-- 그룹 1 -->
                        <div class="case-group">
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👩</div>
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
                                    <div class="result-badge">💰 총 채무액 162,678,791원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">168,770,819원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">6,092,028원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">월 변제액</span>
                                        <span class="value blue">약 160,000원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👨</div>
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
                                    <div class="result-badge">💰 총 채무액 530,000,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">530,000,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">0원</span>
                                    </div>
                                    <div class="detail-row empty">
                                        <span class="label">월 변제액</span>
                                        <span class="value"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👨</div>
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
                                    <div class="result-badge">💰 총 채무액 167,437,271원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">180,626,375원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">13,189,104원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">월 변제액</span>
                                        <span class="value blue">약 360,000원</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- 그룹 2 -->
                        <div class="case-group">
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👩</div>
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
                                    <div class="result-badge">💰 총 채무액 89,500,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">100,500,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">11,000,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">월 변제액</span>
                                        <span class="value blue">약 300,000원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👨</div>
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
                                    <div class="result-badge">💰 총 채무액 73,200,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">80,500,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">7,300,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">월 변제액</span>
                                        <span class="value blue">약 200,000원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👩</div>
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
                                    <div class="result-badge">💰 총 채무액 105,600,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">120,000,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">14,400,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">월 변제액</span>
                                        <span class="value blue">약 400,000원</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- 그룹 3 -->
                        <div class="case-group">
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👩</div>
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
                                    <div class="result-badge">💰 총 채무액 95,000,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">95,000,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">0원</span>
                                    </div>
                                    <div class="detail-row empty">
                                        <span class="label">월 변제액</span>
                                        <span class="value"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👨</div>
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
                                    <div class="result-badge">💰 총 채무액 320,000,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">320,000,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">0원</span>
                                    </div>
                                    <div class="detail-row empty">
                                        <span class="label">월 변제액</span>
                                        <span class="value"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👨</div>
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
                                    <div class="result-badge">💰 총 채무액 180,000,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">180,000,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                            <div class="case-card">
                                <div class="case-profile">
                                    <div class="profile-img">👨</div>
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
                                    <div class="result-badge">💰 총 채무액 180,000,000원 탕감!</div>
                                </div>
                                <div class="case-details">
                                    <div class="detail-row">
                                        <span class="label">총 채무액</span>
                                        <span class="value">180,000,000원</span>
                                    </div>
                                    <div class="detail-row">
                                        <span class="label">탕감 후 채무</span>
                                        <span class="value red">0원</span>
                                    </div>
                                    <div class="detail-row empty">
                                        <span class="label">월 변제액</span>
                                        <span class="value"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="slider-btn next" onclick="nextCases()"></button>
            </div>
        </div>
    </section>
                                <div class="detail-row">
                                    <span class="label">탕감 후 채무</span>
                                    <span class="value red">7,300,000원</span>
                                </div>
                                <div class="detail-row">
                                    <span class="label">월 변제액</span>
                                    <span class="value blue">약 200,000원</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- 개인회생 카드 3: 한○○님 (88% 탕감) -->
                        <div class="case-card" data-type="personal" style="display: none;">
                            <div class="case-profile">
                                <div class="profile-img">👩</div>
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
                                <div class="result-badge">💰 총 채무액 105,600,000원 탕감!</div>
                            </div>
                            <div class="case-details">
                                <div class="detail-row">
                                    <span class="label">총 채무액</span>
                                    <span class="value">120,000,000원</span>
                                </div>
                                <div class="detail-row">
                                    <span class="label">탕감 후 채무</span>
                                    <span class="value red">14,400,000원</span>
                                </div>
                                <div class="detail-row">
                                    <span class="label">월 변제액</span>
                                    <span class="value blue">약 400,000원</span>
                                </div>
                            </div>
                        </div>
                        
                        <!-- ========== 개인파산 탭용 추가 카드 3개 ========== -->
                        <!-- 개인파산 카드 1: 강○○님 (100% 탕감) -->
                        <div class="case-card" data-type="bankruptcy" style="display: none;">
                            <div class="case-profile">
                                <div class="profile-img">👩</div>
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
                                <div class="result-badge">💰 총 채무액 95,000,000원 탕감!</div>
                            </div>
                            <div class="case-details">
                                <div class="detail-row">
                                    <span class="label">총 채무액</span>
                                    <span class="value">95,000,000원</span>
                                </div>
                                <div class="detail-row">
                                    <span class="label">탕감 후 채무</span>
                                    <span class="value red">0원</span>
                                </div>
                                <div class="detail-row empty">
                                    <span class="label">월 변제액</span>
                                    <span class="value"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="slider-btn next" onclick="nextCases()"></button>
            </div>
        </div>
    </section>
    
    <!-- 상담 신청 알림 -->
    <div class="consultation-alerts">
        <div class="alert-row">
            <div class="alert-item">40세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">5분 전 50세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">10분 전 45세 박***님이 상담 신청했습니다.</div>
            <div class="alert-item">20분 전 30세 이***님이 상담 신청했습니다.</div>
            <div class="alert-item">1시간 전 30세 이***님이 상담 신청했습니다.</div>
        </div>
        <div class="alert-row">
            <div class="alert-item">2시간 전 30세 최***님이 상담 신청했습니다.</div>
            <div class="alert-item">3시간 전 35세 송***님이 상담 신청했습니다.</div>
            <div class="alert-item">4시간 전 52세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">11시간 전 30세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">12시간 전 30세 이***님이 상담 신청했습니다.</div>
        </div>
    </div>
    
    <!-- 플로팅 버튼들 -->
    <div class="floating-buttons">
        <div class="floating-btn-container">
            <a href="tel:1555-1684" class="floating-btn-item">
                <div class="floating-btn phone">
                    <div class="floating-btn-icon">📞</div>
                </div>
                <div class="floating-btn-text">1555-1684</div>
            </a>
            
            <a href="#" class="floating-btn-item">
                <div class="floating-btn kakao">
                    <div class="floating-btn-icon">💬</div>
                </div>
                <div class="floating-btn-text">카톡상담</div>
            </a>
            
            <a href="sms:1555-1684" class="floating-btn-item">
                <div class="floating-btn sms">
                    <div class="floating-btn-icon">💬</div>
                </div>
                <div class="floating-btn-text">상담 예약</div>
            </a>
            
            <a href="#top" class="top-btn">
                <div class="top-icon">↑</div>
                <div class="top-text">TOP</div>
            </a>
        </div>
    </div>
    
    <script>
        let currentCaseGroup = 0;
        
        function nextCases() {
            currentCaseGroup = (currentCaseGroup + 1) % 3;
            updateSlider();
        }
        
        function prevCases() {
            currentCaseGroup = (currentCaseGroup - 1 + 3) % 3;
            updateSlider();
        }
        
        function updateSlider() {
            const track = document.getElementById('casesTrack');
            const translateX = -currentCaseGroup * 33.333;
            track.style.transform = `translateX(${translateX}%)`;
            
            // 탭 업데이트
            const tabs = document.querySelectorAll('.tab-btn');
            tabs.forEach(tab => tab.classList.remove('active'));
            tabs[currentCaseGroup].classList.add('active');
        }
        
        function filterCases(type, element) {
            if (element) {
                document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
                element.classList.add('active');
            }
            
            if (type === 'groupA') currentCaseGroup = 0;
            else if (type === 'groupB') currentCaseGroup = 1;
            else if (type === 'groupC') currentCaseGroup = 2;
            
            updateSlider();
        }
        
        function selectDiagnosis(type) {
            if (type === 'personal') {
                alert('개인회생 진단을 선택하셨습니다.');
            } else if (type === 'bankruptcy') {
                alert('파산면책 진단을 선택하셨습니다.');
            }
        }
        
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.querySelector('form');
            if (form) {
                form.addEventListener('submit', function(e) {
                    e.preventDefault();
                    const privacyCheckbox = document.getElementById('privacy-agree');
                    if (!privacyCheckbox.checked) {
                        alert('개인정보 수집 및 이용에 동의해주세요.');
                        return;
                    }
                    alert('상담 신청이 접수되었습니다. 빠른 시일 내에 연락드리겠습니다.');
                });
            }
            
            const topBtn = document.querySelector('.top-btn');
            if (topBtn) {
                topBtn.addEventListener('click', function(e) {
                    e.preventDefault();
                    window.scrollTo({ top: 0, behavior: 'smooth' });
                });
            }
        });
    </script>
</body>
</html>
            </div>
        </div>
    </section>
    
    <!-- 상담 신청 알림 -->
    <div class="consultation-alerts">
        <div class="alert-row">
            <div class="alert-item">40세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">5분 전 50세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">10분 전 45세 박***님이 상담 신청했습니다.</div>
            <div class="alert-item">20분 전 30세 이***님이 상담 신청했습니다.</div>
            <div class="alert-item">1시간 전 30세 이***님이 상담 신청했습니다.</div>
        </div>
        <div class="alert-row">
            <div class="alert-item">2시간 전 30세 최***님이 상담 신청했습니다.</div>
            <div class="alert-item">3시간 전 35세 송***님이 상담 신청했습니다.</div>
            <div class="alert-item">4시간 전 52세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">11시간 전 30세 김***님이 상담 신청했습니다.</div>
            <div class="alert-item">12시간 전 30세 이***님이 상담 신청했습니다.</div>
        </div>
    </div>
    
    <!-- 플로팅 버튼들 -->
    <div class="floating-buttons">
        <div class="floating-btn-container">
            <a href="tel:1555-1684" class="floating-btn-item">
                <div class="floating-btn phone">
                    <div class="floating-btn-icon">📞</div>
                </div>
                <div class="floating-btn-text">1555-1684</div>
            </a>
            
            <a href="#" class="floating-btn-item">
                <div class="floating-btn kakao">
                    <div class="floating-btn-icon">💬</div>
                </div>
                <div class="floating-btn-text">카톡상담</div>
            </a>
            
            <a href="sms:1555-1684" class="floating-btn-item">
                <div class="floating-btn sms">
                    <div class="floating-btn-icon">💬</div>
                </div>
                <div class="floating-btn-text">상담 예약</div>
            </a>
            
            <a href="#top" class="top-btn">
                <div class="top-icon">↑</div>
                <div class="top-text">TOP</div>
            </a>
        </div>
    </div>
    
    <script>
        let currentCaseGroup = 0;
        
        function nextCases() {
            try {
                currentCaseGroup = (currentCaseGroup + 1) % 3;
                updateTabs();
            } catch (error) {
                console.error('Error in nextCases:', error);
            }
        }
        
        function prevCases() {
            try {
                currentCaseGroup = (currentCaseGroup - 1 + 3) % 3;
                updateTabs();
            } catch (error) {
                console.error('Error in prevCases:', error);
            }
        }
        
        function updateTabs() {
            try {
                const tabs = document.querySelectorAll('.tab-btn');
                
                tabs.forEach(tab => tab.classList.remove('active'));
                
                if (currentCaseGroup === 0) {
                    tabs[0].classList.add('active');
                } else if (currentCaseGroup === 1) {
                    tabs[1].classList.add('active');
                } else if (currentCaseGroup === 2) {
                    tabs[2].classList.add('active');
                }
                
                filterCards();
            } catch (error) {
                console.error('Error in updateTabs:', error);
            }
        }
        
        function filterCases(type, element) {
            try {
                if (element) {
                    document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
                    element.classList.add('active');
                }
                
                if (type === 'groupA') currentCaseGroup = 0;
                else if (type === 'groupB') currentCaseGroup = 1;
                else if (type === 'groupC') currentCaseGroup = 2;
                
                filterCards();
            } catch (error) {
                console.error('Error in filterCases:', error);
            }
        }
        
        function filterCards() {
            const track = document.getElementById('casesTrack');
            const translateX = -currentCaseGroup * 33.333;
            track.style.transform = `translateX(${translateX}%)`;
        }
        
        function selectDiagnosis(type) {
            if (type === 'personal') {
                alert('개인회생 진단을 선택하셨습니다.');
            } else if (type === 'bankruptcy') {
                alert('파산면책 진단을 선택하셨습니다.');
            }
        }
        
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.querySelector('form');
            if (form) {
                form.addEventListener('submit', function(e) {
                    e.preventDefault();
                    const privacyCheckbox = document.getElementById('privacy-agree');
                    if (!privacyCheckbox.checked) {
                        alert('개인정보 수집 및 이용에 동의해주세요.');
                        return;
                    }
                    alert('상담 신청이 접수되었습니다. 빠른 시일 내에 연락드리겠습니다.');
                });
            }
            
            const topBtn = document.querySelector('.top-btn');
            if (topBtn) {
                topBtn.addEventListener('click', function(e) {
                    e.preventDefault();
                    window.scrollTo({ top: 0, behavior: 'smooth' });
                });
            }
        });
    </script>
</body>
</html>