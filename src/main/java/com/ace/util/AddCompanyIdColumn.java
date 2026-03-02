package com.ace.util;

import java.sql.Connection;
import java.sql.Statement;

public class AddCompanyIdColumn {
    public static void main(String[] args) {
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {
            
            System.out.println("데이터베이스 연결 성공");
            
            // company_id 컬럼 추가
            String alterSql = "ALTER TABLE traffic_logs " +
                            "ADD COLUMN company_id VARCHAR(20) NOT NULL DEFAULT 'COMP0001' " +
                            "COMMENT '회사 식별자 - 에이스 법무법인: COMP0001' " +
                            "AFTER id";
            
            stmt.executeUpdate(alterSql);
            System.out.println("✓ company_id 컬럼 추가 완료");
            
            // 인덱스 추가
            String indexSql = "CREATE INDEX idx_company_id ON traffic_logs(company_id)";
            stmt.executeUpdate(indexSql);
            System.out.println("✓ idx_company_id 인덱스 추가 완료");
            
            // 기존 데이터 업데이트
            String updateSql = "UPDATE traffic_logs SET company_id = 'COMP0001' " +
                             "WHERE company_id IS NULL OR company_id = ''";
            int updated = stmt.executeUpdate(updateSql);
            System.out.println("✓ 기존 데이터 업데이트 완료: " + updated + "건");
            
            System.out.println("\n모든 작업이 성공적으로 완료되었습니다!");
            
        } catch (Exception e) {
            System.err.println("오류 발생: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
