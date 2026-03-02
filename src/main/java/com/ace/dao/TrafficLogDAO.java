package com.ace.dao;

import com.ace.model.TrafficLog;
import com.ace.util.DatabaseUtil;

import java.sql.*;

public class TrafficLogDAO {
    
    public void insert(TrafficLog log) throws SQLException {
        String sql = "INSERT INTO traffic_logs (session_id, visitor_id, utm_source, utm_medium, " +
                    "utm_campaign, utm_content, utm_term, referrer_url, search_keyword, landing_page, " +
                    "device_type, os, browser, browser_version, screen_resolution, ip_address, user_agent) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, log.getSessionId());
            pstmt.setString(2, log.getVisitorId());
            pstmt.setString(3, log.getUtmSource());
            pstmt.setString(4, log.getUtmMedium());
            pstmt.setString(5, log.getUtmCampaign());
            pstmt.setString(6, log.getUtmContent());
            pstmt.setString(7, log.getUtmTerm());
            pstmt.setString(8, log.getReferrerUrl());
            pstmt.setString(9, log.getSearchKeyword());
            pstmt.setString(10, log.getLandingPage());
            pstmt.setString(11, log.getDeviceType());
            pstmt.setString(12, log.getOs());
            pstmt.setString(13, log.getBrowser());
            pstmt.setString(14, log.getBrowserVersion());
            pstmt.setString(15, log.getScreenResolution());
            pstmt.setString(16, log.getIpAddress());
            pstmt.setString(17, log.getUserAgent());
            
            pstmt.executeUpdate();
        }
    }
    
    public TrafficLog findBySessionId(String sessionId) throws SQLException {
        String sql = "SELECT * FROM traffic_logs WHERE session_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, sessionId);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return mapResultSetToTrafficLog(rs);
                }
            }
        }
        return null;
    }
    
    private TrafficLog mapResultSetToTrafficLog(ResultSet rs) throws SQLException {
        TrafficLog log = new TrafficLog();
        log.setId(rs.getLong("id"));
        log.setSessionId(rs.getString("session_id"));
        log.setVisitorId(rs.getString("visitor_id"));
        log.setUtmSource(rs.getString("utm_source"));
        log.setUtmMedium(rs.getString("utm_medium"));
        log.setUtmCampaign(rs.getString("utm_campaign"));
        log.setUtmContent(rs.getString("utm_content"));
        log.setUtmTerm(rs.getString("utm_term"));
        log.setReferrerUrl(rs.getString("referrer_url"));
        log.setSearchKeyword(rs.getString("search_keyword"));
        log.setLandingPage(rs.getString("landing_page"));
        log.setDeviceType(rs.getString("device_type"));
        log.setOs(rs.getString("os"));
        log.setBrowser(rs.getString("browser"));
        log.setBrowserVersion(rs.getString("browser_version"));
        log.setScreenResolution(rs.getString("screen_resolution"));
        log.setIpAddress(rs.getString("ip_address"));
        log.setUserAgent(rs.getString("user_agent"));
        log.setCreatedAt(rs.getTimestamp("created_at").toLocalDateTime());
        return log;
    }
}
