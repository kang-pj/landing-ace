<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP 테스트</title>
    <style>
        body {
            font-family: 'Malgun Gothic', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #6f42c1;
            text-align: center;
        }
        .test-section {
            margin: 20px 0;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 5px;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
        .back-link a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>JSP 3.0 테스트</h1>
        
        <div class="test-section">
            <h3>서버 정보</h3>
            <p>서버 정보: <%= application.getServerInfo() %></p>
            <p>JSP 버전: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %></p>
        </div>
        
        <div class="test-section">
            <h3>JSTL 테스트</h3>
            <c:set var="testMessage" value="JSTL이 정상적으로 작동합니다!" />
            <p><c:out value="${testMessage}" /></p>
            
            <p>숫자 반복:</p>
            <c:forEach var="i" begin="1" end="5">
                <span>${i} </span>
            </c:forEach>
        </div>
        
        <div class="test-section">
            <h3>한글 인코딩 테스트</h3>
            <p>한글이 정상적으로 표시되는지 확인: 안녕하세요! 🇰🇷</p>
        </div>
        
        <div class="back-link">
            <a href="${pageContext.request.contextPath}/">← 메인으로 돌아가기</a>
        </div>
    </div>
</body>
</html>