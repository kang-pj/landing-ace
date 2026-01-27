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
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/db-test")
public class DatabaseTestServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        PrintWriter out = response.getWriter();
        
        out.println("<!DOCTYPE html>");
        out.println("<html lang='ko'>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>Database Connection Test</title>");
        out.println("<style>");
        out.println("body { font-family: Arial, sans-serif; margin: 40px; }");
        out.println(".success { color: green; }");
        out.println(".error { color: red; }");
        out.println(".info { background: #f0f0f0; padding: 10px; margin: 10px 0; }");
        out.println("table { border-collapse: collapse; width: 100%; margin: 20px 0; }");
        out.println("th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }");
        out.println("th { background-color: #f2f2f2; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>MariaDB Connection Test</h1>");
        
        try {
            // 연결 테스트
            boolean isConnected = DatabaseUtil.testConnection();
            
            if (isConnected) {
                out.println("<p class='success'>✅ Database connection successful!</p>");
                
                // 연결 풀 상태
                out.println("<div class='info'>");
                out.println("<h3>Connection Pool Status</h3>");
                out.println("<p>" + DatabaseUtil.getPoolStatus() + "</p>");
                out.println("</div>");
                
                // 데이터베이스 정보 조회
                try (Connection conn = DatabaseUtil.getConnection()) {
                    DatabaseMetaData metaData = conn.getMetaData();
                    
                    out.println("<div class='info'>");
                    out.println("<h3>Database Information</h3>");
                    out.println("<p><strong>Database Product:</strong> " + metaData.getDatabaseProductName() + "</p>");
                    out.println("<p><strong>Database Version:</strong> " + metaData.getDatabaseProductVersion() + "</p>");
                    out.println("<p><strong>Driver Name:</strong> " + metaData.getDriverName() + "</p>");
                    out.println("<p><strong>Driver Version:</strong> " + metaData.getDriverVersion() + "</p>");
                    out.println("<p><strong>URL:</strong> " + metaData.getURL() + "</p>");
                    out.println("<p><strong>Username:</strong> " + metaData.getUserName() + "</p>");
                    out.println("</div>");
                    
                    // 테이블 목록 조회
                    out.println("<h3>Database Tables</h3>");
                    out.println("<table>");
                    out.println("<tr><th>Table Name</th><th>Table Type</th><th>Rows</th></tr>");
                    
                    ResultSet tables = metaData.getTables(null, null, "%", new String[]{"TABLE"});
                    boolean hasTable = false;
                    while (tables.next()) {
                        hasTable = true;
                        String tableName = tables.getString("TABLE_NAME");
                        String tableType = tables.getString("TABLE_TYPE");
                        
                        // 각 테이블의 행 수 조회
                        int rowCount = 0;
                        try (Statement countStmt = conn.createStatement()) {
                            ResultSet countRs = countStmt.executeQuery("SELECT COUNT(*) FROM " + tableName);
                            if (countRs.next()) {
                                rowCount = countRs.getInt(1);
                            }
                        } catch (SQLException e) {
                            // 권한이 없거나 접근할 수 없는 테이블의 경우
                        }
                        
                        out.println("<tr><td>" + tableName + "</td><td>" + tableType + "</td><td>" + rowCount + "</td></tr>");
                    }
                    
                    if (!hasTable) {
                        out.println("<tr><td colspan='3'>No tables found</td></tr>");
                    }
                    
                    out.println("</table>");
                    
                    // inquiries 테이블 상세 정보
                    out.println("<h3>Inquiries Table Details</h3>");
                    try {
                        // inquiries 테이블 구조 확인
                        ResultSet columns = metaData.getColumns(null, null, "inquiries", null);
                        out.println("<h4>Table Structure</h4>");
                        out.println("<table>");
                        out.println("<tr><th>Column Name</th><th>Data Type</th><th>Size</th><th>Nullable</th><th>Default</th></tr>");
                        
                        boolean hasInquiriesTable = false;
                        while (columns.next()) {
                            hasInquiriesTable = true;
                            String columnName = columns.getString("COLUMN_NAME");
                            String dataType = columns.getString("TYPE_NAME");
                            int columnSize = columns.getInt("COLUMN_SIZE");
                            String nullable = columns.getString("IS_NULLABLE");
                            String defaultValue = columns.getString("COLUMN_DEF");
                            
                            out.println("<tr>");
                            out.println("<td>" + columnName + "</td>");
                            out.println("<td>" + dataType + "</td>");
                            out.println("<td>" + columnSize + "</td>");
                            out.println("<td>" + nullable + "</td>");
                            out.println("<td>" + (defaultValue != null ? defaultValue : "NULL") + "</td>");
                            out.println("</tr>");
                        }
                        
                        if (!hasInquiriesTable) {
                            out.println("<tr><td colspan='5'>inquiries table not found</td></tr>");
                        }
                        out.println("</table>");
                        
                        // inquiries 테이블 데이터 조회 (최근 10개)
                        if (hasInquiriesTable) {
                            out.println("<h4>Recent Inquiries Data (Last 10 records)</h4>");
                            try (Statement stmt = conn.createStatement()) {
                                ResultSet rs = stmt.executeQuery("SELECT * FROM inquiries ORDER BY created_at DESC LIMIT 10");
                                
                                // 결과 테이블 헤더
                                out.println("<table>");
                                out.println("<tr>");
                                ResultSetMetaData rsmd = rs.getMetaData();
                                int columnCount = rsmd.getColumnCount();
                                for (int i = 1; i <= columnCount; i++) {
                                    out.println("<th>" + rsmd.getColumnName(i) + "</th>");
                                }
                                out.println("</tr>");
                                
                                // 데이터 행
                                boolean hasData = false;
                                while (rs.next()) {
                                    hasData = true;
                                    out.println("<tr>");
                                    for (int i = 1; i <= columnCount; i++) {
                                        String value = rs.getString(i);
                                        out.println("<td>" + (value != null ? value : "NULL") + "</td>");
                                    }
                                    out.println("</tr>");
                                }
                                
                                if (!hasData) {
                                    out.println("<tr><td colspan='" + columnCount + "'>No data found</td></tr>");
                                }
                                out.println("</table>");
                                
                            } catch (SQLException e) {
                                out.println("<p class='error'>Error querying inquiries table: " + e.getMessage() + "</p>");
                            }
                        }
                        
                    } catch (SQLException e) {
                        out.println("<p class='error'>Error getting inquiries table info: " + e.getMessage() + "</p>");
                    }
                    
                    // 현재 시간 조회 테스트
                    out.println("<h3>Query Test</h3>");
                    try (Statement stmt = conn.createStatement()) {
                        ResultSet rs = stmt.executeQuery("SELECT NOW() as current_time, VERSION() as version");
                        if (rs.next()) {
                            out.println("<p><strong>Current Time:</strong> " + rs.getString("current_time") + "</p>");
                            out.println("<p><strong>MySQL Version:</strong> " + rs.getString("version") + "</p>");
                        }
                    }
                    
                } catch (SQLException e) {
                    out.println("<p class='error'>❌ Error getting database info: " + e.getMessage() + "</p>");
                }
                
            } else {
                out.println("<p class='error'>❌ Database connection failed!</p>");
            }
            
        } catch (Exception e) {
            out.println("<p class='error'>❌ Connection test error: " + e.getMessage() + "</p>");
            e.printStackTrace();
        }
        
        out.println("<hr>");
        out.println("<p><a href='/'>← Back to Home</a></p>");
        out.println("</body>");
        out.println("</html>");
    }
}