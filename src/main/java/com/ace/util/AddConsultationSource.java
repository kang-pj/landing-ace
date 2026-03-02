package com.ace.util;

import java.sql.Connection;
import java.sql.Statement;

public class AddConsultationSource {
    
    public static void main(String[] args) {
        System.out.println("consultation_source 컬럼 추가 시작...");
        
        String sql = "ALTER TABLE consultation_leads ADD COLUMN consultation_source VARCHAR(50) " +
                    "COMMENT '상담 신청 위치 - main_top_form(메인 상단), pc_fixed_right(PC 우측 고정), " +
                    "mobile_fixed_bottom(모바일 하단), popup_modal(팝업)' AFTER session_id";
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {
            
            System.out.println("실행 중: " + sql);
            stmt.execute(sql);
            
            System.out.println("\n✓ consultation_source 컬럼 추가 완료!");
            System.out.println("✓ 가능한 값: main_top_form, pc_fixed_right, mobile_fixed_bottom, popup_modal");
            
        } catch (Exception e) {
            if (e.getMessage().contains("Duplicate column name")) {
                System.out.println("✓ consultation_source 컬럼이 이미 존재합니다.");
            } else {
                System.err.println("✗ 컬럼 추가 실패: " + e.getMessage());
                e.printStackTrace();
            }
        }
    }
}
