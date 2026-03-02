package com.ace.dao;

import com.ace.model.ConsultationLead;
import com.ace.util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConsultationLeadDAO {
    
    public void insert(ConsultationLead lead) throws SQLException {
        String sql = "INSERT INTO consultation_leads (session_id, name, phone, email, " +
                    "debt_amount, monthly_income, message, status, user_agent, ip_address) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, lead.getSessionId());
            pstmt.setString(2, lead.getName());
            pstmt.setString(3, lead.getPhone());
            pstmt.setString(4, lead.getEmail());
            pstmt.setString(5, lead.getDebtAmount());
            pstmt.setString(6, lead.getMonthlyIncome());
            pstmt.setString(7, lead.getMessage());
            pstmt.setString(8, lead.getStatus() != null ? lead.getStatus() : "pending");
            pstmt.setString(9, lead.getUserAgent());
            pstmt.setString(10, lead.getIpAddress());
            
            pstmt.executeUpdate();
        }
    }
    
    public List<ConsultationLead> findBySessionId(String sessionId) throws SQLException {
        String sql = "SELECT * FROM consultation_leads WHERE session_id = ? ORDER BY created_at DESC";
        List<ConsultationLead> leads = new ArrayList<>();
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, sessionId);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    leads.add(mapResultSetToConsultationLead(rs));
                }
            }
        }
        return leads;
    }
    
    public void updateStatus(Long id, String status) throws SQLException {
        String sql = "UPDATE consultation_leads SET status = ? WHERE id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, status);
            pstmt.setLong(2, id);
            pstmt.executeUpdate();
        }
    }
    
    private ConsultationLead mapResultSetToConsultationLead(ResultSet rs) throws SQLException {
        ConsultationLead lead = new ConsultationLead();
        lead.setId(rs.getLong("id"));
        lead.setSessionId(rs.getString("session_id"));
        lead.setName(rs.getString("name"));
        lead.setPhone(rs.getString("phone"));
        lead.setEmail(rs.getString("email"));
        lead.setDebtAmount(rs.getString("debt_amount"));
        lead.setMonthlyIncome(rs.getString("monthly_income"));
        lead.setMessage(rs.getString("message"));
        lead.setStatus(rs.getString("status"));
        lead.setUserAgent(rs.getString("user_agent"));
        lead.setIpAddress(rs.getString("ip_address"));
        lead.setCreatedAt(rs.getTimestamp("created_at").toLocalDateTime());
        lead.setUpdatedAt(rs.getTimestamp("updated_at").toLocalDateTime());
        return lead;
    }
}
