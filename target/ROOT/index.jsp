<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹 애플리케이션</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Malgun Gothic', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
            line-height: 1.6;
        }
        
        /* 전체 컨테이너 */
        .main-container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        
        /* GNB (Global Navigation Bar) */
        .gnb {
            background: #ffffff;
            border-bottom: 1px solid #e9ecef;
            padding: 0 20px;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        
        .gnb .logo {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
        }
        
        .gnb .nav-menu {
            display: flex;
            gap: 30px;
        }
        
        .gnb .nav-menu a {
            text-decoration: none;
            color: #495057;
            font-weight: 500;
            transition: color 0.3s;
        }
        
        .gnb .nav-menu a:hover {
            color: #007bff;
        }
        
        /* 메인 콘텐츠 영역 */
        .content-wrapper {
            flex: 1;
            display: flex;
            max-width: 1920px;
            margin: 0 auto;
            width: 100%;
        }
        
        /* 사이드바 */
        .sidebar {
            width: 250px;
            background: #ffffff;
            border-right: 1px solid #e9ecef;
            padding: 20px;
            min-height: calc(100vh - 60px);
        }
        
        .sidebar h3 {
            color: #495057;
            margin-bottom: 15px;
            font-size: 16px;
        }
        
        .sidebar ul {
            list-style: none;
        }
        
        .sidebar ul li {
            margin-bottom: 8px;
        }
        
        .sidebar ul li a {
            text-decoration: none;
            color: #6c757d;
            padding: 8px 12px;
            display: block;
            border-radius: 4px;
            transition: all 0.3s;
        }
        
        .sidebar ul li a:hover {
            background: #f8f9fa;
            color: #007bff;
        }
        
        /* 메인 바디 */
        .main-body {
            flex: 1;
            padding: 30px;
            background: #ffffff;
            margin: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        
        .welcome-section {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .welcome-section h1 {
            color: #212529;
            font-size: 2.5rem;
            margin-bottom: 10px;
        }
        
        .welcome-section p {
            color: #6c757d;
            font-size: 1.1rem;
        }
        
        /* 카드 그리드 */
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-bottom: 40px;
        }
        
        .card {
            background: #f8f9fa;
            border: 1px solid #e9ecef;
            border-radius: 8px;
            padding: 25px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        
        .card h3 {
            color: #495057;
            margin-bottom: 15px;
            font-size: 1.3rem;
        }
        
        .card ul {
            list-style: none;
            color: #6c757d;
        }
        
        .card ul li {
            padding: 5px 0;
            border-bottom: 1px solid #e9ecef;
        }
        
        .card ul li:last-child {
            border-bottom: none;
        }
        
        /* 액션 버튼 */
        .action-buttons {
            display: flex;
            gap: 15px;
            justify-content: center;
            flex-wrap: wrap;
            margin-bottom: 30px;
        }
        
        .btn {
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s;
            cursor: pointer;
        }
        
        .btn-primary {
            background: #007bff;
            color: white;
        }
        
        .btn-primary:hover {
            background: #0056b3;
        }
        
        .btn-secondary {
            background: #6c757d;
            color: white;
        }
        
        .btn-secondary:hover {
            background: #545b62;
        }
        
        /* 푸터 */
        .footer {
            background: #f8f9fa;
            border-top: 1px solid #e9ecef;
            padding: 20px;
            text-align: center;
            color: #6c757d;
        }
        
        /* 반응형 디자인 */
        @media (max-width: 1280px) {
            .content-wrapper {
                max-width: 1280px;
            }
        }
        
        @media (max-width: 768px) {
            .gnb {
                padding: 0 15px;
            }
            
            .gnb .nav-menu {
                display: none;
            }
            
            .content-wrapper {
                flex-direction: column;
            }
            
            .sidebar {
                width: 100%;
                min-height: auto;
                border-right: none;
                border-bottom: 1px solid #e9ecef;
            }
            
            .main-body {
                margin: 15px;
                padding: 20px;
            }
            
            .welcome-section h1 {
                font-size: 2rem;
            }
            
            .card-grid {
                grid-template-columns: 1fr;
            }
            
            .action-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .btn {
                width: 200px;
                text-align: center;
            }
        }
        
        @media (min-width: 1920px) {
            .content-wrapper {
                max-width: 1920px;
            }
        }
    </style>
</head>
<body>
    <div class="main-container">
        <!-- GNB -->
        <header class="gnb">
            <div class="logo">웹 애플리케이션</div>
            <nav class="nav-menu">
                <a href="#home">홈</a>
                <a href="#about">소개</a>
                <a href="#services">서비스</a>
                <a href="#contact">연락처</a>
            </nav>
        </header>
        
        <!-- 메인 콘텐츠 -->
        <div class="content-wrapper">
            <!-- 사이드바 -->
            <aside class="sidebar">
                <h3>메뉴</h3>
                <ul>
                    <li><a href="hello">Hello Servlet</a></li>
                    <li><a href="test.jsp">JSP 테스트</a></li>
                    <li><a href="#database">데이터베이스 테스트</a></li>
                    <li><a href="#api">API 테스트</a></li>
                </ul>
                
                <h3 style="margin-top: 30px;">도구</h3>
                <ul>
                    <li><a href="#tools">개발 도구</a></li>
                    <li><a href="#docs">문서</a></li>
                    <li><a href="#settings">설정</a></li>
                </ul>
            </aside>
            
            <!-- 메인 바디 -->
            <main class="main-body">
                <div class="welcome-section">
                    <h1>환영합니다!</h1>
                    <p>Tomcat 10.0.x 기반 웹 애플리케이션입니다</p>
                </div>
                
                <div class="card-grid">
                    <div class="card">
                        <h3>🚀 기술 스택</h3>
                        <ul>
                            <li>Tomcat 10.0.x</li>
                            <li>JSP 3.0</li>
                            <li>Servlet 5.0</li>
                            <li>JDK 17</li>
                            <li>MariaDB 10.x</li>
                            <li>UTF-8 인코딩</li>
                        </ul>
                    </div>
                    
                    <div class="card">
                        <h3>📊 시스템 정보</h3>
                        <ul>
                            <li>서버 시간: <%= new java.util.Date() %></li>
                            <li>인코딩: UTF-8</li>
                            <li>세션 타임아웃: 30분</li>
                            <li>커넥션 풀: HikariCP</li>
                        </ul>
                    </div>
                    
                    <div class="card">
                        <h3>🔧 개발 환경</h3>
                        <ul>
                            <li>빌드 도구: Maven</li>
                            <li>호스팅: cafe24</li>
                            <li>배포 파일: ROOT.war</li>
                            <li>반응형 디자인</li>
                        </ul>
                    </div>
                </div>
                
                <div class="action-buttons">
                    <a href="hello" class="btn btn-primary">Servlet 테스트</a>
                    <a href="test.jsp" class="btn btn-secondary">JSP 테스트</a>
                </div>
            </main>
        </div>
        
        <!-- 푸터 -->
        <footer class="footer">
            <p>&copy; 2024 웹 애플리케이션. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>