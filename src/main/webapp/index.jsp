<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ACE 법무법인</title>
        <!-- Pretendard Font -->
        <link rel="preconnect" href="https://cdn.jsdelivr.net">
        <link href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css"
            rel="stylesheet">
        <!-- Swiper CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: "Pretendard", -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
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
                max-width: 1400px;
                margin: 0 auto;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 0 40px;
            }

            .logo {
                display: flex;
                align-items: center;
            }

            .logo-box {
                height: 40px;
                object-fit: contain;
            }

            .nav-menu {
                display: flex;
                gap: 100px;
                align-items: center;
                max-width: 946px;
                width: 100%;
                height: 28px;
                opacity: 1;
                justify-content: center;
            }

            @media (max-width: 1200px) {
                .nav-menu {
                    gap: 60px;
                }
            }

            @media (max-width: 992px) {
                .nav-menu {
                    gap: 40px;
                }
            }

            .nav-menu a {
                text-decoration: none;
                color: #1E1E1E;
                font-family: Pretendard;
                font-weight: 600;
                font-style: normal;
                font-size: 18px;
                line-height: 160%;
                letter-spacing: -0.01em;
                text-align: center;
                background: #1E1E1E;
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            .contact-phone {
                display: flex;
                align-items: center;
                gap: 8px;
                color: #4865FF;
                font-weight: bold;
                font-size: 16px;
            }

            .phone-icon {
                width: 20px;
                height: 20px;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                font-size: 12px;
            }

            /* 메인 배경 영역 */
            .main-background {
                background-image: url('/images/main-background.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                width: 100%;
                min-height: 780px;
                position: relative;
                padding: 40px 0 100px;
                opacity: 1;
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
                font-family: Pretendard;
                font-weight: 500;
                font-style: normal;
                font-size: 30px;
                line-height: 130%;
                letter-spacing: -0.01em;
                text-align: center;
                vertical-align: middle;
                color: #666;
                margin-bottom: 15px;
            }

            .title-large {
                font-family: Pretendard;
                font-weight: 700;
                font-style: normal;
                font-size: 50px;
                line-height: 135%;
                letter-spacing: -0.01em;
                text-align: center;
                vertical-align: middle;
                color: #333;
                margin-bottom: 12px;
            }

            .highlight-blue {
                color: #4865FF;
            }

            .title-subtitle {
                font-family: Pretendard;
                font-weight: 700;
                font-style: normal;
                font-size: 50px;
                line-height: 135%;
                letter-spacing: -0.01em;
                text-align: center;
                vertical-align: middle;
                color: #333;
                margin-bottom: 0;
            }

            /* 통계 박스들 */
            .stats-section {
                width: 522px;
                height: 246px;
                margin: 0 auto 60px;

                opacity: 1;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 15px;
            }

            .stats-container {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                gap: 20px;
                margin-bottom: 0;
            }

            .stat-box {
                background: rgba(255, 255, 255, 0.7);
                border-radius: 15px;
                box-shadow: 0 8px 30px rgba(68, 114, 196, 0.15);
                backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.5);
                position: relative;
                display: flex;
                align-items: center;
                justify-content: center;
                opacity: 1;
            }

            .stat-box:nth-child(1) {
                width: 294px;
                height: 74px;
                left: -65px;
            }

            .stat-box:nth-child(1) .stat-content-wrapper {
                width: 213px;
                height: 35px;
            }

            .stat-box:nth-child(1) .stat-number {
                width: 162px;
                height: 29px;
            }

            .stat-box:nth-child(2) {
                left: 85px;
                width: 350px;
                height: 74px;
            }

            .stat-box:nth-child(2) .stat-content-wrapper {
                width: 264px;
                height: 35px;
            }

            .stat-box:nth-child(2) .stat-number {
                width: 213px;
                height: 29px;
            }

            .stat-box:nth-child(3) {
                left: -55px;
                width: 430px;
                height: 74px;
            }

            .stat-box:nth-child(3) .stat-content-wrapper {
                width: 350px;
                height: 35px;
            }

            .stat-box:nth-child(3) .stat-icon {
                width: 31px;
                height: 35px;
            }

            .stat-box:nth-child(3) img.stat-icon {
                width: 31px;
                height: 35px;
            }

            .stat-box:nth-child(3) .stat-number {
                width: 299px;
                height: 29px;
            }

            .stat-content-wrapper {
                width: 213px;
                height: 35px;
                display: flex;
                align-items: center;
                gap: 16px;
                opacity: 1;
            }

            .stat-icon {
                width: 35px;
                height: 35px;
                background: #4865FF;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                font-size: 24px;
                flex-shrink: 0;
                opacity: 1;
            }

            img.stat-icon {
                width: 35px;
                height: 35px;
                background: transparent;
                object-fit: contain;
                padding: 0;
                border-radius: 0;
            }

            .stat-number {
                width: 162px;
                height: 29px;
                font-family: Pretendard;
                font-weight: 700;
                font-style: normal;
                font-size: 22px;
                line-height: 130%;
                letter-spacing: -0.01em;
                vertical-align: middle;
                display: flex;
                align-items: center;
                opacity: 1;
            }

            .stat-highlight {
                color: #2E5FF1;
            }

            .stat-normal {
                color: #232323;
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
                position: relative;
                bottom: 55px;
                width: 1000px;
                height: 148px;
                background: rgba(255, 255, 255, 0.95);
                border-radius: 20px;
                padding: 25px 40px;
                box-shadow: 0 15px 40px rgba(68, 114, 196, 0.2);
                backdrop-filter: blur(15px);
                border: 1px solid #D0D0D0;
                opacity: 1;
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
                border-color: #4865FF;
            }

            .form-group input::placeholder {
                color: #aaa;
            }

            .form-group select {
                color: #aaa;
            }

            .form-group select:focus,
            .form-group select:valid {
                color: #333;
            }

            .submit-btn {
                background: #4865ff;
                color: white;
                border: none;
                padding: 18px 35px;
                border-radius: 10px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background 0.3s;
                height: 80px;
                white-space: nowrap;
                min-width: 140px;
            }

            .submit-btn:hover {
                background: #365a9b;
            }

            .privacy-notice {
                position: relative;
                bottom: 15px;
                text-align: right;
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
                color: #4865FF;
                text-decoration: underline;
            }

            /* 누적 탕감액 섹션 */
            .total-reduction-section {
                background: linear-gradient(135deg, #4865FF 0%, #365a9b 100%);
                color: white;
                padding: 80px 20px;
                text-align: center;
            }

            .reduction-container {
                max-width: 1200px;
                margin: 0 auto;
            }

            .reduction-content {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 5px;
            }

            .reduction-subtitle {
                font-size: 18px;
                color: rgba(255, 255, 255, 0.9);
                margin: 0;
                font-weight: 500;
            }

            .reduction-title {
                font-size: 36px;
                font-weight: bold;
                color: white;
                margin: 0;
            }

            .amount-display {
                background: white;
                color: #4865FF;
                padding: 10px;
                border-radius: 50px;
                font-size: 32px;
                font-weight: bold;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
                min-width: 400px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-top: 10px;
                overflow: visible;
            }

            .wheel-picker {
                display: flex;
                align-items: center;
                gap: 0px;
                font-family: "Pretendard", -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
                font-weight: bold;
                letter-spacing: -4px;
            }

            .digit-container {
                width: 24px;
                height: 45px;
                overflow: hidden;
                position: relative;
            }

            .digit-wheel {
                display: flex;
                flex-direction: column;
                transition: transform 0.8s cubic-bezier(0.23, 1, 0.32, 1);
                transform: translateY(0);
            }

            .wheel-picker .digit-wheel span {
                height: 45px;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 36px;
                font-weight: bold !important;
                color: #333;
                position: relative;
                right: 1px;
            }

            .wheel-picker .comma,
            .wheel-picker .currency {
                font-size: 36px;
                font-weight: bold !important;
                color: #333;
            }

            .currency {
                margin-left: 8px;
            }

            /* 푸터 섹션 */
            .footer-section {
                background: #f5f5f5;
                padding: 40px 20px;
                border-top: 1px solid #e0e0e0;
            }

            .footer-container {
                max-width: 1000px;
                margin: 0 auto;
            }

            .footer-content {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
            }

            .footer-left {
                flex: 1;
            }

            .company-info h3 {
                font-size: 18px;
                font-weight: bold;
                color: #333;
                margin-bottom: 15px;
            }

            .company-info p {
                font-size: 14px;
                color: #666;
                margin-bottom: 5px;
                line-height: 1.4;
            }

            .copyright {
                margin-top: 20px;
            }

            .copyright p {
                font-size: 12px;
                color: #999;
            }

            .footer-right {
                text-align: right;
            }

            .contact-info p {
                font-size: 14px;
                color: #666;
                margin-bottom: 5px;
            }

            .phone-number {
                font-size: 24px;
                font-weight: bold;
                color: #333;
                margin: 10px 0;
            }

            .ace-logo {
                display: inline-block;
                margin-top: 10px;
            }

            .ace-logo img {
                height: 50px;
                object-fit: contain;
            }

            /* 하단 상담 신청 바 */
            .bottom-consultation-bar {
                background: transparent;
                padding: 0;
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
                z-index: 1000;
                display: flex;
                justify-content: center;
            }

            .consultation-bar-container {
                max-width: 1000px;
                width: 100%;
                background: #4a4a4a;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 30px;
                border-radius: 15px;
                padding: 20px;
            }

            .consultation-message {
                color: white;
                font-family: Pretendard;
                font-size: 20px;
                font-weight: 500;
                line-height: 1.3;
                white-space: nowrap;
                text-align: left;
            }

            .consultation-message .highlight {
                color: white;
                font-family: Pretendard;
                font-weight: bold;
            }

            .consultation-form-inline {
                display: flex;
                align-items: flex-start;
                justify-content: center;
                gap: 15px;
                flex: 1;
            }

            .input-group {
                display: flex;
                flex-direction: column;
                gap: 8px;
            }

            .inline-input {
                padding: 12px 15px;
                border: 1px solid #ddd;
                border-radius: 6px;
                font-size: 14px;
                background: white;
                min-width: 120px;
            }

            .inline-input:focus {
                outline: none;
                border-color: #4865FF;
            }

            .privacy-check {
                display: flex;
                align-items: center;
                gap: 5px;
                color: white;
                font-size: 12px;
                cursor: pointer;
                white-space: nowrap;
            }

            .privacy-checkbox {
                margin: 0;
            }

            .consultation-btn {
                padding: 12px 20px;
                border: none;
                border-radius: 6px;
                font-size: 14px;
                font-weight: bold;
                cursor: pointer;
                transition: all 0.3s;
                white-space: nowrap;
                display: flex;
                align-items: center;
                gap: 8px;
            }

            .consultation-btn img {
                width: 20px;
                height: 20px;
                object-fit: contain;
            }

            .consultation-btn.primary {
                background: #4865FF;
                color: white;
            }

            .consultation-btn.primary:hover {
                background: #365a9b;
            }

            .consultation-btn.secondary {
                background: #ffd700;
                color: #333;
            }

            .consultation-btn.secondary:hover {
                background: #ffed4e;
            }

            /* 하단 바 때문에 body에 패딩 추가 */
            body {
                padding-bottom: 100px;
                background: #f5f5f5;
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
                border-radius: 10px;
                padding: 15px 12px;
                box-shadow: 0 6px 25px rgba(0, 0, 0, 0.12);
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
                box-shadow: 0 3px 12px rgba(0, 0, 0, 0.08);
            }

            .floating-btn.phone {
                background: #4865FF;
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

            .floating-btn-icon img,
            img.floating-btn-icon {
                width: 100%;
                height: 100%;
                object-fit: cover;
                border-radius: 50%;
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
                margin-top: 5px;
                padding-top: 5px;
                border-top: 1px solid #e0e0e0;
                transition: color 0.3s;
            }

            .top-btn:hover {
                color: #333;
            }

            .top-icon {
                width: 16px;
                height: 16px;
                margin-bottom: 4px;
                object-fit: contain;
            }

            .top-text {
                font-size: 10px;
                font-weight: 500;
            }

            /* 하단 여백 */
            .bottom-spacer {
                height: 120px;
                background: white;
                display: flex;
                align-items: center;
                justify-content: center;
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
                max-width: 1000px;
                margin: 0 auto;
            }

            .diagnosis-card {
                box-shadow: 0 3px 20px rgb(113 113 113 / 20%);
                flex: 1;
                background: #f8f9fa;
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
                border-color: #4865FF;
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
                color: #4865FF;
                text-align: right;
                margin-top: auto;
            }

            img.card-icon {
                width: 70px;
                height: 70px;
                object-fit: contain;
                align-self: flex-end;
                margin-left: auto;
                position: relative;
                bottom: 15px;
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
                font-size: 20px;
                color: #424242;
                margin-bottom: 15px;
            }

            .cases-title {
                font-size: 30px;
                font-weight: bold;
                color: #232323;
                margin-bottom: 40px;
            }

            .cases-wrapper {
                padding: 15px 20px;
                position: relative;
            }

            .casesSwiper {
                width: 100%;
                max-width: 1000px;
                margin: 0 auto;
                overflow: hidden;
                position: relative;
            }

            .arrow-container {
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                pointer-events: none;
                z-index: 10;
            }

            .arrow-btn {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                background: transparent;
                border: none;
                cursor: pointer;
                pointer-events: auto;
                width: 20px;
                height: 100px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .arrow-btn svg {
                width: 12px;
                height: 20px;
                fill: none;
                stroke: #4865FF;
                stroke-width: 1.5;
                stroke-linecap: round;
                stroke-linejoin: round;
            }

            .prev-btn {
                left: 65px;
            }

            .next-btn {
                right: 65px;
            }

            .arrow-btn:hover svg {
                stroke: #000;
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

            .case-card {
                background: white;
                border: 1px solid #e9ecef;
                border-radius: 15px;
                padding: 20px;
                transition: all 0.3s;
                position: relative;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
                min-width: 280px;
            }

            .case-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                border-color: #4865FF;
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
                color: #4865FF;
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
                background: #4865FF;
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
                border-top: 8px solid #4865FF;
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
                font-weight: 400;
            }

            .detail-row .value {
                font-weight: 600;
            }

            /* 총 채무액 - label과 value 모두 #727272 */
            .case-details .detail-row.total-debt .label,
            .case-details .detail-row.total-debt .value {
                color: #727272 !important;
                font-weight: 600;
            }

            /* 탕감 후 원금 - label과 value 모두 #424242 */
            .case-details .detail-row.reduced-principal .label,
            .case-details .detail-row.reduced-principal .value {
                color: #424242 !important;
                font-weight: 600;
            }

            /* 월 변제액 - label과 value 모두 #4865FF */
            .case-details .detail-row.monthly-payment .label,
            .case-details .detail-row.monthly-payment .value {
                color: #4865FF !important;
                font-weight: 600;
            }
            
            /* 상담 신청 알림 */
            .consultation-alerts {
                background: #4865FF;
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

            .alert-row:nth-child(1) {
                animation-delay: 0s;
            }

            .alert-row:nth-child(2) {
                animation-delay: -2.5s;
            }

            .alert-item {
                padding: 0 50px;
                font-size: 14px;
                font-weight: 500;
                flex-shrink: 0;
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .time-badge {
                background: white;
                color: #4865FF;
                padding: 4px 8px;
                border-radius: 12px;
                font-size: 12px;
                font-weight: 600;
                white-space: nowrap;
                min-width: 60px;
                text-align: center;
            }

            @keyframes scrollLeft {
                0% {
                    transform: translateX(0%);
                }

                100% {
                    transform: translateX(-100%);
                }
            }

            /* 특별한 서비스 섹션 */
            .special-services-section {
                background: white;
                padding: 80px 20px;
            }

            .services-container {
                max-width: 1000px;
                margin: 0 auto;
            }

            .services-header {
                text-align: center;
                margin-bottom: 60px;
            }

            .services-subtitle {
                font-size: 25px;
                color: #232323;
                margin-bottom: 5px;
                font-weight: 600;
            }

            .services-title {
                font-size: 36px;
                font-weight: bold;
                color: #232323;
                margin: 0;
            }

            .services-grid {
                display: grid;
                grid-template-columns: repeat(4, 1fr);
                gap: 25px;
                max-width: 900px;
                margin: 0 auto;
            }

            .service-item {
                background: white;
                border-radius: 15px;
                padding: 20px 25px;
                text-align: center;
                box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
                transition: all 0.3s ease;
                border: 1px solid #e9ecef;
            }

            .service-item:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            }

            .service-icon {
                width: 60px;
                height: 60px;
                margin: 0 auto 20px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .service-icon img {
                width: 100%;
                height: 100%;
                object-fit: contain;
            }

            .service-text {
                font-size: 14px;
                font-weight: 500;
                color: #333;
                line-height: 1.4;
            }

            /* 반응형 디자인 */
            @media (max-width: 768px) {
                .services-grid {
                    grid-template-columns: repeat(2, 1fr);
                    gap: 25px;
                }

                .service-item {
                    padding: 25px 15px;
                }

                .service-icon {
                    width: 50px;
                    height: 50px;
                    margin-bottom: 15px;
                }

                .service-text {
                    font-size: 13px;
                }
            }

            /* FAQ 섹션 */
            .faq-section {
                background: white;
                padding: 80px 20px;
            }

            .faq-container {
                max-width: 1000px;
                margin: 0 auto;
            }

            .faq-header {
                text-align: center;
                margin-bottom: 40px;
            }

            .faq-title {
                font-size: 36px;
                font-weight: bold;
                color: #333;
                margin: 0;
            }

            .faq-list {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }

            .faq-item {
                border: none;
                border-radius: 10px;
                overflow: hidden;
                background: transparent;
                margin-bottom: 5px;
            }

            .faq-question {
                background: #f5f5f5;
                padding: 20px 25px;
                cursor: pointer;
                display: flex;
                justify-content: space-between;
                align-items: center;
                font-family: Pretendard;
                font-weight: 700;
                font-style: normal;
                font-size: 20px;
                line-height: 140%;
                letter-spacing: -0.01em;
                color: #333;
                transition: background 0.3s ease;
                border: none;
                width: 100%;
                text-align: left;
                border-radius: 10px;
            }

            .faq-question:hover {
                background: #e9e9e9;
            }

            .faq-question.active {
                background: #e8f2ff;
                color: #333;
                border-radius: 10px 10px 0 0;
            }

            .faq-icon {
                width: 20px;
                height: 20px;
                transition: transform 0.3s ease;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .faq-icon svg {
                width: 12px;
                height: 12px;
                fill: none;
                stroke: #666;
                stroke-width: 2;
                stroke-linecap: round;
                stroke-linejoin: round;
            }

            .faq-question.active .faq-icon {
                transform: rotate(180deg);
            }

            .faq-answer {
                padding: 0 25px;
                max-height: 0;
                overflow: hidden;
                transition: all 0.3s ease;
                background: #f5f5f5;
                border-radius: 0 0 10px 10px;
            }

            .faq-answer.active {
                padding: 0 25px 20px 25px;
                max-height: 200px;
                background: #e8f2ff;
                border-radius: 0 0 10px 10px;
            }

            .faq-answer-content {
                font-size: 16px;
                line-height: 1.6;
                color: #333;
                font-weight: 500;
            }

            /* 오시는 길 섹션 */
            .location-section {
                background: white;
                padding: 80px 20px;
            }

            .location-container {
                max-width: 1000px;
                margin: 0 auto;
            }

            .location-header {
                text-align: center;
                margin-bottom: 20px;
            }

            .location-title {
                font-size: 36px;
                font-weight: bold;
                color: #333;
                margin-bottom: 30px;
            }

            .location-info {
                display: flex;
                justify-content: space-between;
                align-items: flex-end;
                margin-bottom: 15px;
            }

            .location-text {
                flex: 1;
                text-align: left;
            }

            .location-address {
                font-size: 16px;
                color: #333;
                margin-bottom: 8px;
            }

            .location-address .label {
                font-weight: bold;
            }

            .location-phone {
                font-size: 16px;
                color: #333;
            }

            .location-phone .label {
                font-weight: bold;
            }

            .location-buttons {
                display: flex;
                gap: 10px;
                margin-left: 20px;
            }

            .location-btn {
                padding: 8px 16px;
                border: 1px solid #ddd;
                background: white;
                border-radius: 6px;
                font-size: 14px;
                color: #333;
                text-decoration: none;
                transition: all 0.3s ease;
                display: flex;
                align-items: center;
                gap: 6px;
            }

            .location-btn img {
                width: 16px;
                height: 16px;
            }

            .location-btn:hover {
                background: #f5f5f5;
            }

            .location-map {
                width: 100%;
                height: 400px;
                background: #f0f0f0;
                border-radius: 10px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #999;
                font-size: 16px;
                border: 2px dashed #ddd;
            }

            /* 대표 변호사 소개 섹션 */
            .lawyer-intro-section {
                background: white;
                padding: 80px 20px;
            }

            .lawyer-container {
                max-width: 1000px;
                margin: 0 auto;
            }

            .lawyer-header {
                text-align: center;
                margin-bottom: 60px;
            }

            .lawyer-subtitle {
                font-size: 16px;
                color: #666;
                margin-bottom: 15px;
            }

            .lawyer-title {
                font-size: 36px;
                font-weight: bold;
                color: #333;
                margin: 0;
            }

            .lawyer-content {
                display: flex;
                gap: 80px;
                align-items: flex-start;
                max-width: 1200px;
                overflow: hidden;
                margin: 0 auto;
            }

            .lawyer-image-area {
                flex: 0 0 50%;
                max-width: 50%;
                display: flex;
                justify-content: flex-end;
                padding: 0 20px 50px 20px;
            }

            .certificateSwiper {
                width: 450px;
                height: 590px;
                border-radius: 15px;
                overflow: hidden;
            }

            .certificateSwiper .swiper-slide {
                width: 100%;
                height: 550px;
            }

            .certificate-image {
                width: 100%;
                height: 100%;
                background: #f8f9fa;
                border-radius: 15px;
                display: flex;
                align-items: center;
                justify-content: center;
                overflow: hidden;
                padding: 15px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            }

            .certificate-image img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                border-radius: 8px;
            }

            /* 증서 스와이프 pagination 커스텀 - 내비게이션 닷 스타일 */
            .certificateSwiper .swiper-pagination {
                bottom: 10px !important;
                text-align: center;
                position: absolute !important;
                left: 0;
                right: 0;
                z-index: 10;
            }

            .certificateSwiper .swiper-pagination-bullet {
                width: 8px;
                height: 8px;
                background: rgba(255, 255, 255, 0.9);
                border-radius: 50%;
                margin: 0 4px;
                transition: all 0.3s ease;
                opacity: 1;
                cursor: pointer;
                border: 1px solid rgba(0, 0, 0, 0.1);
                position: relative;
                box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
            }

            .certificateSwiper .swiper-pagination-bullet:hover {
                background: rgba(255, 255, 255, 0.8);
                transform: scale(1.2);
            }

            .certificateSwiper .swiper-pagination-bullet-active {
                width: 24px;
                height: 8px;
                border-radius: 4px;
                background: #ffffff;
                border: none;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
                transform: none;
            }

            .certificateSwiper .swiper-pagination-bullet-active:hover {
                transform: scale(1.3);
            }

            .lawyer-info-area {
                flex: 0 0 50%;
                max-width: 50%;
                min-width: 0;
                overflow: hidden;
            }

            .lawyer-description {
                margin-bottom: 40px;
                font-size: 18px;
                line-height: 1.6;
                color: #333;
            }

            .lawyer-description p {
                margin-bottom: 8px;
            }

            .lawyer-description strong {
                color: #333;
                font-weight: bold;
            }

            .lawyer-details {
                display: flex;
                flex-direction: column;
                gap: 30px;
            }

            .detail-section h4 {
                font-size: 18px;
                font-weight: bold;
                color: #333;
                margin-bottom: 15px;
                padding-bottom: 8px;
                border-bottom: 2px solid #333;
                display: inline-block;
            }

            .detail-section ul {
                list-style: none;
                padding: 0;
                margin: 0;
            }

            .detail-section li {
                font-size: 13px;
                color: #666;
                margin-bottom: 5px;
                padding-left: 15px;
                position: relative;
                line-height: 1.3;
            }

            .detail-section li::before {
                content: '•';
                color: #333;
                position: absolute;
                left: 0;
                font-weight: bold;
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
                    font-size: 24px;
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

                .cases-grid {
                    grid-template-columns: 1fr;
                    gap: 20px;
                }

                .cases-wrapper {
                    padding: 15px;
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

            /* 모바일에서 모달 크기 조정 */
            @media (max-width: 768px) {
                .modal-content {
                    width: 90%;
                    height: 550px;
                    padding: 30px;
                }
            }

            /* 모달 스타일 */
            .modal-overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0);
                display: none;
                justify-content: center;
                align-items: center;
                z-index: 99999;
                transition: all 0.4s ease;
            }

            .modal-overlay.show {
                background: rgba(0, 0, 0, 0.7);
                display: flex !important;
            }

            .modal-content {
                background: white;
                border-radius: 20px;
                padding: 40px;
                width: 500px;
                height: 530px;
                position: relative;
                transform: translateY(50px) scale(0.9);
                opacity: 0;
                transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);
                box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
                text-align: center;
                overflow: hidden;
            }

            .modal-overlay.show .modal-content {
                transform: translateY(0) scale(1);
                opacity: 1;
            }

            .modal-close {
                position: absolute;
                top: 20px;
                right: 20px;
                background: transparent;
                border: none;
                width: 40px;
                height: 40px;
                display: flex;
                align-items: center;
                justify-content: center;
                cursor: pointer;
                font-size: 30px;
                color: #666;
                transition: all 0.2s ease;
            }

            .modal-close:hover {
                color: #333;
            }

            .modal-header {
                text-align: center;
                margin-bottom: 30px;
            }

            .modal-title {
                font-size: 26px;
                font-weight: bold;
                color: #333;
                margin-bottom: 30px;
                text-align: center;
            }

            .modal-subtitle {
                font-size: 16px;
                color: #666;
                line-height: 1.6;
                margin-bottom: 0;
                text-align: center;
            }

            .modal-body {
                text-align: center;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .modal-divider {
                width: 100%;
                height: 1px;
                background: #eeeeee;
                margin: 0 auto 30px;
            }

            .modal-icon {
                width: 120px;
                height: 120px;
                margin: 10px auto 40px;
                background: linear-gradient(135deg, #e3f2fd 0%, #bbdefb 100%);
                border-radius: 20px;
                display: flex;
                align-items: center;
                justify-content: center;
                position: relative;
            }

            .modal-icon::before {
                content: '👤';
                font-size: 40px;
                position: absolute;
                left: 20px;
                top: 50%;
                transform: translateY(-50%);
            }

            .modal-icon::after {
                content: '🔍';
                font-size: 50px;
                position: absolute;
                right: 15px;
                bottom: 15px;
            }

            .modal-description {
                font-size: 22px !important;
                color: #333;
                line-height: 1.5;
                margin-bottom: 20px;
                font-weight: 500;
            }

            .modal-description .highlight {
                color: #4865FF;
                font-weight: bold;
            }

            .diagnosis-start-btn {
                background: linear-gradient(135deg, #4865FF 0%, #5a7fd8 100%);
                color: white;
                border: none;
                border-radius: 15px;
                padding: 18px 40px;
                font-size: 18px;
                font-weight: bold;
                cursor: pointer;
                transition: all 0.3s ease;
                width: 100%;
                box-shadow: 0 4px 15px rgba(68, 114, 196, 0.3);
            }

            .diagnosis-start-btn:hover {
                background: linear-gradient(135deg, #3a5fa0 0%, #4a6bc4 100%);
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(68, 114, 196, 0.4);
            }

            /* 진단 단계 스타일 */
            .diagnosis-steps {
                display: flex;
                justify-content: space-between;
                margin-bottom: 40px;
                position: relative;
            }

            .diagnosis-steps::before {
                content: '';
                position: absolute;
                bottom: -5px;
                left: 20px;
                right: 20px;
                height: 6px;
                background: #e0e0e0;
                z-index: 1;
            }

            .step {
                flex: 1;
                text-align: center;
                font-size: 16px;
                color: #999;
                position: relative;
                padding-bottom: 15px;
            }

            .step.active {
                color: #4865FF;
                font-weight: normal;
            }

            .step.active::after {
                content: '';
                position: absolute;
                bottom: -5px;
                left: 0;
                right: 0;
                height: 6px;
                background: #4865FF;
                z-index: 2;
            }

            .step.non-active {
                color: #ccc;
            }

            .step.completed {
                color: #4865FF;
            }

            .step.completed::after {
                content: '';
                position: absolute;
                bottom: -5px;
                left: 0;
                right: 0;
                height: 6px;
                background: #4865FF;
                z-index: 2;
            }

            /* 질문 영역 스타일 */
            .question-area {
                text-align: center;
            }

            .question-title {
                font-size: 20px;
                font-weight: bold;
                color: #333;
                margin-bottom: 30px;
                text-align: left;
            }

            .input-area {
                position: relative;
                margin-bottom: 30px;
            }

            .debt-input {
                width: 100%;
                padding: 15px 70px 14px 20px;
                font-size: 24px;
                border: 2px solid #e0e0e0;
                border-radius: 15px;
                outline: none;
                text-align: left;
                background: #f8f9fa;
            }

            .debt-input:focus {
                border-color: #4865FF;
                background: white;
            }

            .unit {
                position: absolute;
                right: 20px;
                top: 50%;
                transform: translateY(-50%);
                font-size: 20px;
                color: #666;
            }

            /* O/X 선택 스타일 */
            .choice-area {
                display: flex;
                gap: 20px;
                margin-bottom: 28px;
                justify-content: center;
            }

            .choice-option {
                flex: 1;
                max-width: 200px;
                padding: 10px 20px;
                border: 1px solid #e0e0e0;
                border-radius: 15px;
                background: #f8f9fa;
                cursor: pointer;
                transition: all 0.2s ease;
                text-align: center;
            }

            .choice-content {
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 15px;
            }

            .choice-option:hover {
                border-color: #4865FF;
                background: white;
            }

            .choice-option.selected {
                border-color: #4865FF;
                background: #e8f2ff;
            }

            .choice-icon {
                font-size: 30px;
            }

            .choice-text {
                font-size: 18px;
                font-weight: 500;
                color: #333;
            }

            /* 화면 전환 스타일 */
            .screen {
                display: none;
            }

            .screen.active {
                display: block;
            }

            /* 로딩 화면 스타일 */
            .loading-area {
                text-align: center;
                padding: 30px 20px;
            }

            .loading-spinner {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 40px;
                height: 90px;
            }

            .spinner-dots {
                position: relative;
                width: 70px;
                height: 70px;
            }

            .spinner-dot {
                position: absolute;
                width: 11px;
                height: 11px;
                background: #4865FF;
                border-radius: 50%;
                animation: spin-dots 1.2s linear infinite;
            }

            /* 8개 점으로 완전한 원형 배치 - 45도씩, 절반 정도 크게 */
            .spinner-dot:nth-child(1) {
                top: 3px;
                left: 29.5px;
                animation-delay: 0s;
            }

            .spinner-dot:nth-child(2) {
                top: 10px;
                left: 49px;
                animation-delay: 0.15s;
            }

            .spinner-dot:nth-child(3) {
                top: 29.5px;
                left: 56px;
                animation-delay: 0.3s;
            }

            .spinner-dot:nth-child(4) {
                top: 49px;
                left: 49px;
                animation-delay: 0.45s;
            }

            .spinner-dot:nth-child(5) {
                top: 56px;
                left: 29.5px;
                animation-delay: 0.6s;
            }

            .spinner-dot:nth-child(6) {
                top: 49px;
                left: 10px;
                animation-delay: 0.75s;
            }

            .spinner-dot:nth-child(7) {
                top: 29.5px;
                left: 3px;
                animation-delay: 0.9s;
            }

            .spinner-dot:nth-child(8) {
                top: 10px;
                left: 10px;
                animation-delay: 1.05s;
            }

            @keyframes spin-dots {

                0%,
                20% {
                    opacity: 1;
                    transform: scale(1.2);
                }

                100% {
                    opacity: 0.2;
                    transform: scale(0.6);
                }
            }

            .loading-text h3 {
                font-size: 24px;
                font-weight: 600;
                color: #333;
                margin-bottom: 10px;
            }

            .loading-text p {
                font-size: 16px;
                color: #666;
            }

            /* 상담 신청 화면 스타일 */
            .consultation-area {
                text-align: center;
                padding: 10px 20px;
            }

            .consultation-result {
                margin-bottom: 30px;
            }

            .consultation-result h3 {
                font-size: 22px;
                font-weight: bold;
                color: #333;
                margin: 0;
            }

            .consultation-result .highlight {
                color: #4865FF;
            }

            .consultation-form-area {
                display: flex;
                flex-direction: column;
                gap: 10px;
            }

            .consultation-form-area .form-group {
                text-align: left;
            }

            .input-with-label {
                position: relative;
                display: flex;
                align-items: center;
                border: 1.5px solid #e0e0e0;
                border-radius: 8px;
                background: white;
                transition: border-color 0.3s;
            }

            .input-with-label:focus-within {
                border-color: #4865FF;
            }

            .input-label {
                font-size: 15px;
                font-weight: 500;
                color: #333;
                padding: 12px 15px;
                width: 100px;
                flex-shrink: 0;
                background: transparent;
            }

            .consultation-form-area .form-group input {
                flex: 1;
                padding: 12px 15px;
                font-size: 15px;
                border: none;
                outline: none;
                background: transparent;
                box-sizing: border-box;
            }

            .consultation-form-area .form-group input::placeholder {
                color: #999;
            }

            .privacy-agreement {
                margin: 8px 0;
            }

            .checkbox-label {
                display: flex;
                align-items: center;
                font-size: 13px;
                color: #666;
                cursor: pointer;
            }

            .checkbox-label input[type="checkbox"] {
                margin-right: 6px;
                width: 16px;
                height: 16px;
            }

            .privacy-link {
                color: #4865FF;
                text-decoration: underline;
                cursor: pointer;
                left: 7px;
                position: relative;
            }

            .consultation-submit-btn {
                background: linear-gradient(135deg, #4865FF 0%, #5a7fd8 100%);
                color: white;
                border: none;
                border-radius: 12px;
                padding: 15px 30px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                width: 100%;
                box-shadow: 0 4px 15px rgba(68, 114, 196, 0.3);
                transition: all 0.3s ease;
                margin-top: 10px;
            }

            .consultation-submit-btn:hover:not(.disabled) {
                background: linear-gradient(135deg, #3a5fa0 0%, #4a6bc4 100%);
                transform: translateY(-2px);
                box-shadow: 0 6px 20px rgba(68, 114, 196, 0.4);
            }

            .consultation-submit-btn.disabled {
                background: #ccc;
                cursor: not-allowed;
                box-shadow: none;
            }

            .consultation-submit-btn.disabled:hover {
                background: #ccc;
                transform: none;
                box-shadow: none;
            }
        </style>
    </head>

    <body>
        <!-- 헤더 -->
        <header class="header">
            <div class="header-container">
                <div class="logo">
                    <img src="/images/logo.png" alt="ACE 법무법인" class="logo-box" />
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
            </div>
        </header>

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
                <form>
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
                    <input type="checkbox" id="privacy-agree" class="privacy-checkbox" required="">
                    <label for="privacy-agree">개인정보 수집 및 이용에 대한 <a href="#" class="privacy-link">자세히</a></label>
                </div>
            </div>
        </div>

        <!-- 하단 여백 -->


        <!-- AI 자가진단 섹션 -->
        <section class="ai-diagnosis-section">
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
                        style="cursor: pointer; padding: 30px 40px; margin: 10px; border-radius: 10px; background: #fff;">
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
        <section class="customer-cases-section">
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
                        <button class="arrow-btn prev-btn" onclick="casesSwiper.slidePrev()">
                            <svg viewBox="0 0 12 20">
                                <polyline points="10,2 2,10 10,18"></polyline>
                            </svg>
                        </button>
                        <button class="arrow-btn next-btn" onclick="casesSwiper.slideNext()">
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
                                                <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필"></div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 162,678,791원 탕감!</div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 530,000,000원 면책!</div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 167,437,271원 탕감!</div>
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
                                                <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필"></div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 89,500,000원 면책!</div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 73,200,000원 탕감!</div>
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
                                                <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필"></div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 105,600,000원 면책!</div>
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
                                                <div class="profile-img"><img src="/images/mo_icon_review_01.png" alt="프로필"></div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 95,000,000원 탕감!</div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 320,000,000원 탕감!</div>
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
                                                <div class="result-badge"><img src="/images/icon_money.png" alt="💰" style="width: 20px; height: 20px; vertical-align: middle;"> 총 채무액 180,000,000원 면책!</div>
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
        </div>

        <!-- 대표 변호사 소개 섹션 -->
        <section class="lawyer-intro-section">
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
                                        <img src="/images/certificate2.jpg" alt="전문분야 등록증서" />
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
        <section class="special-services-section">
            <div class="services-container">
                <div class="services-header">
                    <p class="services-subtitle">쉽다! 빠르다! 안전하다!</p>
                    <h2 class="services-title">에이스 법률사무소의 특별한 서비스 8가지</h2>
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
        <section class="faq-section">
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
        <section class="location-section">
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
                            <a href="#" class="location-btn">
                                <img src="/images/icon_share.png" alt="위치공유" />
                                위치공유
                            </a>
                            <a href="#" class="location-btn">
                                <img src="/images/icon_search.png" alt="길찾기" />
                                길찾기
                            </a>
                        </div>
                    </div>
                </div>

                <div class="location-map">
                    <!-- 지도 API 영역 (추후 구글맵 또는 카카오맵 연동) -->
                    <div>지도 API 연동 예정</div>
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
                            <h3>에이스법무법인</h3>
                            <p>주소: 서울특별시 서초구 사평대로28길 2층 (방배동)</p>
                            <p>대표변호사: 황선택</p>
                            <p>대표전화: 1555-1684</p>
                        </div>
                        <div class="copyright">
                            <p>Copyright (c) 에이스법무법인 All rights reserved</p>
                        </div>
                    </div>

                    <div class="footer-right">
                        <div class="contact-info">
                            <p>개인정보 보호 책임 담당</p>
                            <p>(전화 24시간 가능)</p>
                            <div class="phone-number">1555-1684</div>
                            <div class="ace-logo">
                                <img src="/images/logo_gray.png" alt="ACE 법무법인">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- 하단 상담 신청 바 -->
        <div class="bottom-consultation-bar">
            <div class="consultation-bar-container">
                <div class="consultation-message">
                    <span class="highlight">전국, 365일</span><br>
                    <span>화상상담 가능!</span>
                </div>

                <div class="consultation-form-inline">
                    <div class="input-group">
                        <input type="text" placeholder="이름" class="inline-input name-input">
                        <label class="privacy-check">
                            <input type="checkbox" class="privacy-checkbox">
                            개인정보 수집 및 이용에 대한 동의
                        </label>
                    </div>
                    <input type="tel" placeholder="연락처 (- 없이 입력)" class="inline-input phone-input">
                    <button class="consultation-btn primary">무료 상담신청</button>
                    <button class="consultation-btn secondary">
                        <img src="/images/icon_talk.png" alt="카카오톡">
                        카톡상담
                    </button>
                </div>
            </div>
        </div>

        <!-- 플로팅 버튼들 -->
        <div class="floating-buttons">
            <div class="floating-btn-container">
                <a href="tel:1555-1684" class="floating-btn-item">
                    <div class="floating-btn phone">
                        <img src="/images/call_icon.png" alt="전화" class="floating-btn-icon" />
                    </div>
                    <div class="floating-btn-text">1555-1684</div>
                </a>

                <a href="#" class="floating-btn-item">
                    <div class="floating-btn kakao">
                        <img src="/images/kakao_icon.png" alt="카카오톡" class="floating-btn-icon" />
                    </div>
                    <div class="floating-btn-text">카톡상담</div>
                </a>

                <a href="sms:1555-1684" class="floating-btn-item">
                    <div class="floating-btn sms">
                        <img src="/images/reservation_icon.png" alt="상담예약" class="floating-btn-icon" />
                    </div>
                    <div class="floating-btn-text">상담 예약</div>
                </a>

                <a href="#top" class="top-btn">
                    <img src="/images/icon_top.png" alt="TOP" class="top-icon" />
                    <div class="top-text">TOP</div>
                </a>
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

                        <button class="next-btn disabled" id="nextBtn" onclick="nextQuestion()" disabled>다음</button>
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

                        <button class="next-btn disabled" id="incomeNextBtn" onclick="nextIncomeQuestion()"
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

                        <button class="next-btn disabled" id="assetsNextBtn" onclick="nextAssetsQuestion()"
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

                        <button class="next-btn disabled" id="dependentsNextBtn" onclick="nextDependentsQuestion()"
                            disabled>다음</button>
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
                                    <input type="tel" id="consultPhone" placeholder="- 는 제외하고 입력"
                                        oninput="validateConsultationForm()" />
                                </div>
                            </div>

                            <div class="privacy-agreement">
                                <label class="checkbox-label">
                                    <input type="checkbox" id="privacyAgree" onchange="validateConsultationForm()" />
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

        <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

        <script>
            let casesSwiper;
            let certificateSwiper;

            function filterCases(type, element) {
                // 탭 활성화
                document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
                element.classList.add('active');

                // 해당 그룹으로 이동
                let slideIndex = 0;
                if (type === 'all') slideIndex = 0;
                else if (type === 'personal') slideIndex = 1;
                else if (type === 'bankruptcy') slideIndex = 2;

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
                // 모든 화면 숨기기
                document.querySelectorAll('.screen').forEach(screen => {
                    screen.classList.remove('active');
                });

                // 선택한 화면 보이기
                const targetScreen = document.getElementById(screenId);
                if (targetScreen) {
                    targetScreen.classList.add('active');
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
                }, 2000);
            }

            function validateConsultationForm() {
                const name = document.getElementById('consultName').value.trim();
                const phone = document.getElementById('consultPhone').value.trim();
                const privacyAgree = document.getElementById('privacyAgree').checked;
                const submitBtn = document.getElementById('consultationSubmitBtn');

                // 휴대폰 번호 숫자만 허용
                const phoneInput = document.getElementById('consultPhone');
                let phoneValue = phoneInput.value.replace(/[^0-9]/g, '');
                phoneInput.value = phoneValue;

                // 모든 조건이 만족되면 버튼 활성화
                if (name && phoneValue.length >= 10 && privacyAgree) {
                    submitBtn.classList.remove('disabled');
                    submitBtn.disabled = false;
                } else {
                    submitBtn.classList.add('disabled');
                    submitBtn.disabled = true;
                }
            }

            function submitConsultation() {
                const name = document.getElementById('consultName').value.trim();
                const phone = document.getElementById('consultPhone').value.trim();

                console.log('상담 신청 데이터:', {
                    name: name,
                    phone: phone,
                    diagnosisData: diagnosisData
                });

                alert('상담 신청이 완료되었습니다. 빠른 시일 내에 연락드리겠습니다.');

                // 모달 닫기
                const modal = document.getElementById('aiDiagnosisModal');
                if (modal) {
                    modal.classList.remove('show');
                    setTimeout(() => {
                        modal.style.display = 'none';
                    }, 400);
                }
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
                // 페이지 로드 시 즉시 랜덤 숫자로 설정
                function initializeRandomNumbers() {
                    const targetNumber = "750000000000";
                    const digitContainers = document.querySelectorAll('.digit-container');

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
                        wheel.style.transform = 'translateY(' + (-randomDigit * 45) + 'px)';
                    });
                }

                // 페이지 로드 시 즉시 실행
                initializeRandomNumbers();

                // 누적 탕감액 휠 피커 애니메이션
                function startAmountAnimation() {
                    const targetNumber = "750000000000"; // 750,000,000,000 (12자리)
                    const digitContainers = document.querySelectorAll('.digit-container');

                    console.log('Starting animation...');
                    console.log('Total containers:', digitContainers.length);
                    console.log('Target number:', targetNumber);

                    // 200ms 후 모든 휠이 동시에 목표 숫자로 움직임
                    setTimeout(() => {
                        digitContainers.forEach((container, index) => {
                            if (index >= targetNumber.length) return;

                            const targetDigit = parseInt(targetNumber[index]);
                            const wheel = container.querySelector('.digit-wheel');

                            if (!wheel) return;

                            // 최종 위치 계산
                            const finalPosition = -targetDigit * 45;

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
                casesSwiper = new Swiper('.casesSwiper', {
                    slidesPerView: 1,
                    spaceBetween: 30,
                    loop: true,
                    autoplay: {
                        delay: 5000,
                        disableOnInteraction: false,
                    },
                    on: {
                        slideChange: function () {
                            // 슬라이드 변경 시 탭도 업데이트
                            const tabs = document.querySelectorAll('.tab-btn');
                            tabs.forEach(tab => tab.classList.remove('active'));

                            // loop 모드에서는 realIndex를 사용
                            const realIndex = this.realIndex;
                            tabs[realIndex].classList.add('active');
                        }
                    }
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
                        alert('상담 신청이 접수되었습니다. 빠른 시일 내에 연락드리겠습니다.');
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
        </script>
    </body>

    </html>