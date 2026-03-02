package com.ace.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CheckTables {
    
    public static void main(String[] args) {
        System.out.println("데이터베이스 테이블 확인 중...\n");
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {
            
            // 테이블 목록 조회
            String sql = "SHOW TABLES";
            ResultSet rs = stmt.executeQuery(sql);
            
            System.out.println("=== 테이블 목록 ===");
            while (rs.next()) {
                System.out.println("- " + rs.getString(1));
            }
            rs.close();
            
            // traffic_logs 테이블 구조 확인
            System.out.println("\n=== traffic_logs 테이블 구조 ===");
            rs = stmt.executeQuery("SHOW FULL COLUMNS FROM traffic_logs");
            while (rs.next()) {
                System.out.println(rs.getString("Field") + " | " + 
                                 rs.getString("Type") + " | " + 
                                 rs.getString("Comment"));
            }
            rs.close();
            
            // consultation_leads 테이블 구조 확인
            System.out.println("\n=== consultation_leads 테이블 구조 ===");
            rs = stmt.executeQuery("SHOW FULL COLUMNS FROM consultation_leads");
            while (rs.next()) {
                System.out.println(rs.getString("Field") + " | " + 
                                 rs.getString("Type") + " | " + 
                                 rs.getString("Comment"));
            }
            rs.close();
            
            // 데이터 개수 확인
            rs = stmt.executeQuery("SELECT COUNT(*) FROM traffic_logs");
            if (rs.next()) {
                System.out.println("\n=== 데이터 개수 ===");
                System.out.println("traffic_logs: " + rs.getInt(1) + "건");
            }
            rs.close();
            
            rs = stmt.executeQuery("SELECT COUNT(*) FROM consultation_leads");
            if (rs.next()) {
                System.out.println("consultation_leads: " + rs.getInt(1) + "건");
            }
            rs.close();
            
        } catch (Exception e) {
            System.err.println("✗ 테이블 확인 실패: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
