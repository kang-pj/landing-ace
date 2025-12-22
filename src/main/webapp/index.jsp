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
            right: 30px;
            top: 50%;
            transform: translateY(-50%);
            display: flex;
            flex-direction: column;
            gap: 12px;
            z-index: 1000;
        }
        
        .floating-btn-container {
            background: white;
            border-radius: 35px;
            padding: 15px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.15);
        }
        
        .floating-btn {
            width: 65px;
            height: 65px;
            border-radius: 50%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            color: white;
            font-size: 10px;
            font-weight: bold;
            box-shadow: 0 2px 10px rgba(0,0,0,0.15);
            transition: transform 0.3s;
            margin-bottom: 10px;
        }
        
        .floating-btn:last-child {
            margin-bottom: 0;
        }
        
        .floating-btn:hover {
            transform: scale(1.05);
        }
        
        .floating-btn.phone {
            background: #4472c4;
        }
        
        .floating-btn.kakao {
            background: #fee500;
            color: #333;
        }
        
        .floating-btn.sms {
            background: #00c851;
        }
        
        .floating-btn.top {
            background: #666;
        }
        
        .floating-btn-icon {
            font-size: 22px;
            margin-bottom: 3px;
        }
        
        .floating-btn-text {
            font-size: 9px;
            line-height: 1.1;
        }
        
        /* 하단 여백 */
        .bottom-spacer {
            height: 120px;
            background: white;
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
                font-size: 36px;
            }
            
            .title-subtitle {
                font-size: 28px;
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
                padding: 25px 30px;
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
            
            .floating-buttons {
                right: 15px;
            }
            
            .floating-btn {
                width: 55px;
                height: 55px;
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
    
    <!-- 플로팅 버튼들 -->
    <div class="floating-buttons">
        <div class="floating-btn-container">
            <a href="tel:1555-1684" class="floating-btn phone">
                <div class="floating-btn-icon">📞</div>
                <div class="floating-btn-text">1555-1684</div>
            </a>
            
            <a href="#" class="floating-btn kakao">
                <div class="floating-btn-icon">💬</div>
                <div class="floating-btn-text">카카오톡</div>
            </a>
            
            <a href="sms:1555-1684" class="floating-btn sms">
                <div class="floating-btn-icon">💬</div>
                <div class="floating-btn-text">문자 상담</div>
            </a>
            
            <a href="#top" class="floating-btn top">
                <div class="floating-btn-icon">↑</div>
                <div class="floating-btn-text">TOP</div>
            </a>
        </div>
    </div>
    
    <script>
        // 폼 제출 처리
        document.querySelector('form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // 개인정보 동의 체크 확인
            const privacyCheckbox = document.getElementById('privacy-agree');
            if (!privacyCheckbox.checked) {
                alert('개인정보 수집 및 이용에 동의해주세요.');
                return;
            }
            
            alert('상담 신청이 접수되었습니다. 빠른 시일 내에 연락드리겠습니다.');
        });
        
        // TOP 버튼 클릭 시 상단으로 스크롤
        document.querySelector('.floating-btn.top').addEventListener('click', function(e) {
            e.preventDefault();
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    </script>
</body>
</html>