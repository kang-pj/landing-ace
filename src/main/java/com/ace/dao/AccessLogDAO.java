package com.ace.dao;

import com.ace.model.AccessLog;
import com.ace.util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AccessLogDAO {
    
    private static final String INSERT_SQL = """
        INSERT INTO access_logs 
        (company_id, ip_address, user_agent, referrer, request_url, session_id,
         utm_source, utm_medium, utm_campaign, utm_term, utm_content, device) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """;

    public boolean saveAccessLog(AccessLog accessLog) {
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(INSERT_SQL)) {
            
            System.out.println("접근 로그 저장 시작...");
            
            pstmt.setString(1, accessLog.getCompanyId());
            pstmt.setString(2, accessLog.getIpAddress());
            pstmt.setString(3, accessLog.getUserAgent());
            pstmt.setString(4, accessLog.getReferrer());
            pstmt.setString(5, accessLog.getRequestUrl());
            pstmt.setString(6, accessLog.getSessionId());
            pstmt.setString(7, accessLog.getUtmSource());
            pstmt.setString(8, accessLog.getUtmMedium());
            pstmt.setString(9, accessLog.getUtmCampaign());
            pstmt.setString(10, accessLog.getUtmTerm());
            pstmt.setString(11, accessLog.getUtmContent());
            pstmt.setString(12, accessLog.getDevice());
            
            int result = pstmt.executeUpdate();
            
            if (result > 0) {
                System.out.println("접근 로그 저장 성공!");
                return true;
            } else {
                System.out.println("접근 로그 저장 실패");
                return false;
            }
            
        } catch (SQLException e) {
            System.err.println("접근 로그 저장 중 오류: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
