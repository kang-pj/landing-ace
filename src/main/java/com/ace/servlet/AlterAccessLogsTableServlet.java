package com.ace.servlet;

import com.ace.util.DatabaseUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

@WebServlet("/alter-access-logs-table")
public class AlterAccessLogsTableServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        PrintWriter out = response.getWriter();
        
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head><title>access_logs 테이블 수정</title></head>");
        out.println("<body>");
        out.println("<h1>access_logs 테이블에 company_id 컬럼 추가</h1>");
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {
            
            // company_id 컬럼 추가
            String alterSql = "ALTER TABLE access_logs ADD COLUMN company_id VARCHAR(50) NULL AFTER id";
            stmt.executeUpdate(alterSql);
            out.println("<p style='color: green;'>✓ company_id 컬럼 추가 완료</p>");
            
            // 인덱스 추가
            String indexSql = "ALTER TABLE access_logs ADD INDEX idx_company_id (company_id)";
            stmt.executeUpdate(indexSql);
            out.println("<p style='color: green;'>✓ idx_company_id 인덱스 추가 완료</p>");
            
            // 기존 데이터 업데이트
            String updateSql = "UPDATE access_logs SET company_id = 'COMP0001' WHERE company_id IS NULL";
            int updated = stmt.executeUpdate(updateSql);
            out.println("<p style='color: green;'>✓ 기존 데이터 업데이트 완료 (" + updated + "건)</p>");
            
            out.println("<h2>작업 완료!</h2>");
            
        } catch (Exception e) {
            out.println("<p style='color: red;'>오류: " + e.getMessage() + "</p>");
            e.printStackTrace();
            e.printStackTrace(out);
        }
        
        out.println("</body>");
        out.println("</html>");
    }
}
