<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.ace.util.DatabaseUtil" %>
<!DOCTYPE html>
<html>
<head>
    <title>DB 테스트</title>
</head>
<body>
    <h1>inquiries 테이블 구조 확인</h1>
    
    <%
    try (Connection conn = DatabaseUtil.getConnection()) {
        // 테이블 구조 확인
        DatabaseMetaData metaData = conn.getMetaData();
        ResultSet columns = metaData.getColumns(null, null, "inquiries", null);
        
        out.println("<h2>컬럼 목록:</h2>");
        out.println("<ul>");
        
        boolean hasRealEstate = false;
        boolean hasDependents = false;
        
        while (columns.next()) {
            String columnName = columns.getString("COLUMN_NAME");
            String dataType = columns.getString("TYPE_NAME");
            out.println("<li>" + columnName + " (" + dataType + ")</li>");
            
            if ("has_real_estate".equals(columnName)) {
                hasRealEstate = true;
            }
            if ("has_dependents".equals(columnName)) {
                hasDependents = true;
            }
        }
        out.println("</ul>");
        
        out.println("<h2>필요한 컬럼 존재 여부:</h2>");
        out.println("<p>has_real_estate: " + (hasRealEstate ? "존재" : "없음") + "</p>");
        out.println("<p>has_dependents: " + (hasDependents ? "존재" : "없음") + "</p>");
        
        // 컬럼이 없으면 추가
        if (!hasRealEstate || !hasDependents) {
            out.println("<h2>컬럼 추가 중...</h2>");
            
            try (Statement stmt = conn.createStatement()) {
                if (!hasRealEstate) {
                    stmt.executeUpdate("ALTER TABLE inquiries ADD COLUMN has_real_estate VARCHAR(1) DEFAULT NULL");
                    out.println("<p>has_real_estate 컬럼 추가 완료</p>");
                }
                
                if (!hasDependents) {
                    stmt.executeUpdate("ALTER TABLE inquiries ADD COLUMN has_dependents VARCHAR(1) DEFAULT NULL");
                    out.println("<p>has_dependents 컬럼 추가 완료</p>");
                }
            }
        }
        
    } catch (Exception e) {
        out.println("<p>오류: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
    %>
    
    <p><a href="/">홈으로</a></p>
</body>
</html>