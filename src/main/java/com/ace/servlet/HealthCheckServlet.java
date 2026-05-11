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
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/api/health")
public class HealthCheckServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        StringBuilder json = new StringBuilder();

        json.append("{\n");
        json.append("  \"timestamp\": \"").append(new java.util.Date()).append("\",\n");

        // DB 연결 테스트
        boolean dbConnected = false;
        String dbError = null;
        String poolStatus = null;

        try {
            poolStatus = DatabaseUtil.getPoolStatus();
        } catch (Exception e) {
            poolStatus = "Pool not initialized: " + e.getMessage();
        }

        try (Connection conn = DatabaseUtil.getConnection()) {
            if (conn != null && !conn.isClosed()) {
                dbConnected = true;

                // 간단한 쿼리 실행 테스트
                try (Statement stmt = conn.createStatement();
                     ResultSet rs = stmt.executeQuery("SELECT 1")) {
                    if (rs.next()) {
                        json.append("  \"dbQuery\": \"OK\",\n");
                    }
                }
            }
        } catch (Exception e) {
            dbError = e.getMessage();
        }

        json.append("  \"dbConnected\": ").append(dbConnected).append(",\n");
        json.append("  \"poolStatus\": \"").append(escapeJson(poolStatus)).append("\",\n");

        if (dbError != null) {
            json.append("  \"dbError\": \"").append(escapeJson(dbError)).append("\",\n");
        }

        // 전체 상태
        String status = dbConnected ? "UP" : "DOWN";
        json.append("  \"status\": \"").append(status).append("\"\n");
        json.append("}");

        if (!dbConnected) {
            response.setStatus(HttpServletResponse.SC_SERVICE_UNAVAILABLE);
        }

        out.print(json.toString());
    }

    private String escapeJson(String str) {
        if (str == null) return "null";
        return str.replace("\\", "\\\\")
                  .replace("\"", "\\\"")
                  .replace("\n", "\\n")
                  .replace("\r", "\\r");
    }
}
