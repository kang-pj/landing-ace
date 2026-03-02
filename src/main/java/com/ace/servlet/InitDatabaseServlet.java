package com.ace.servlet;

import com.ace.util.DatabaseUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.Statement;

@WebServlet("/admin/init-db")
public class InitDatabaseServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html; charset=UTF-8");
        
        try {
            // schema.sql 파일 읽기
            InputStream is = getServletContext().getResourceAsStream("/WEB-INF/classes/schema.sql");
            if (is == null) {
                response.getWriter().write("<h1>schema.sql 파일을 찾을 수 없습니다.</h1>");
                return;
            }
            
            BufferedReader reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            StringBuilder sql = new StringBuilder();
            String line;
            
            while ((line = reader.readLine()) != null) {
                sql.append(line).append("\n");
            }
            reader.close();
            
            // SQL 실행
            try (Connection conn = DatabaseUtil.getConnection();
                 Statement stmt = conn.createStatement()) {
                
                // 세미콜론으로 구분된 각 SQL 문 실행
                String[] sqlStatements = sql.toString().split(";");
                
                for (String sqlStatement : sqlStatements) {
                    String trimmed = sqlStatement.trim();
                    if (!trimmed.isEmpty() && !trimmed.startsWith("--")) {
                        stmt.execute(trimmed);
                    }
                }
                
                response.getWriter().write("<h1>데이터베이스 초기화 완료!</h1>");
                response.getWriter().write("<p>traffic_logs 및 consultation_leads 테이블이 생성되었습니다.</p>");
                response.getWriter().write("<p><a href='/'>메인 페이지로 이동</a></p>");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("<h1>데이터베이스 초기화 실패</h1>");
            response.getWriter().write("<p>오류: " + e.getMessage() + "</p>");
        }
    }
}
