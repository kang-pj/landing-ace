package com.ace.util;

import java.sql.Connection;
import java.sql.Statement;

public class RemoveSessionIdUnique {
    
    public static void main(String[] args) {
        System.out.println("session_id UNIQUE 제약조건 제거 시작...");
        
        String sql = "ALTER TABLE traffic_logs DROP INDEX session_id";
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {
            
            System.out.println("실행 중: " + sql);
            stmt.execute(sql);
            
            System.out.println("\n✓ session_id UNIQUE 제약조건 제거 완료!");
            System.out.println("✓ 이제 같은 세션의 재방문도 기록됩니다.");
            
        } catch (Exception e) {
            if (e.getMessage().contains("check that column/key exists")) {
                System.out.println("✓ UNIQUE 제약조건이 이미 제거되어 있습니다.");
            } else {
                System.err.println("✗ 제약조건 제거 실패: " + e.getMessage());
                e.printStackTrace();
            }
        }
    }
}
