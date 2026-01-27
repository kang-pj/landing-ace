package com.ace.dao;

import com.ace.model.Inquiry;
import com.ace.util.DatabaseUtil;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class InquiryDAO {
    
    // 데이터 삽입 SQL - 최소 필드만 사용
    private static final String INSERT_SQL = """
        INSERT INTO inquiries 
        (company_id, name, phone) 
        VALUES (?, ?, ?)
        """;
    
    // 데이터 조회 SQL
    private static final String SELECT_ALL_SQL = """
        SELECT id, company_id, name, phone, debt_amount, monthly_income, created_at, updated_at 
        FROM inquiries 
        ORDER BY created_at DESC
        """;
    
    // 최근 데이터 조회 SQL
    private static final String SELECT_RECENT_SQL = """
        SELECT id, company_id, name, phone, debt_amount, monthly_income, created_at, updated_at 
        FROM inquiries 
        ORDER BY created_at DESC 
        LIMIT ?
        """;
    
    // 회사별 조회 SQL
    private static final String SELECT_BY_COMPANY_SQL = """
        SELECT id, company_id, name, phone, debt_amount, monthly_income, created_at, updated_at 
        FROM inquiries 
        WHERE company_id = ?
        ORDER BY created_at DESC
        """;
    
    /**
     * 상담 신청 데이터 저장
     */
    public Long saveInquiry(Inquiry inquiry) throws SQLException {
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(INSERT_SQL, Statement.RETURN_GENERATED_KEYS)) {
            
            pstmt.setString(1, inquiry.getCompanyId());
            pstmt.setString(2, inquiry.getName());
            pstmt.setString(3, inquiry.getPhone());
            
            int affectedRows = pstmt.executeUpdate();
            
            if (affectedRows == 0) {
                throw new SQLException("Creating inquiry failed, no rows affected.");
            }
            
            try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    Long id = generatedKeys.getLong(1);
                    inquiry.setId(id);
                    return id;
                } else {
                    throw new SQLException("Creating inquiry failed, no ID obtained.");
                }
            }
        }
    }
    
    /**
     * 모든 상담 신청 데이터 조회
     */
    public List<Inquiry> getAllInquiries() throws SQLException {
        List<Inquiry> inquiries = new ArrayList<>();
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(SELECT_ALL_SQL)) {
            
            while (rs.next()) {
                inquiries.add(mapResultSetToInquiry(rs));
            }
        }
        
        return inquiries;
    }
    
    /**
     * 최근 상담 신청 데이터 조회
     */
    public List<Inquiry> getRecentInquiries(int limit) throws SQLException {
        List<Inquiry> inquiries = new ArrayList<>();
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SELECT_RECENT_SQL)) {
            
            pstmt.setInt(1, limit);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    inquiries.add(mapResultSetToInquiry(rs));
                }
            }
        }
        
        return inquiries;
    }
    
    /**
     * 회사별 상담 신청 데이터 조회
     */
    public List<Inquiry> getInquiriesByCompany(String companyId) throws SQLException {
        List<Inquiry> inquiries = new ArrayList<>();
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_COMPANY_SQL)) {
            
            pstmt.setString(1, companyId);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    inquiries.add(mapResultSetToInquiry(rs));
                }
            }
        }
        
        return inquiries;
    }
    
    /**
     * 총 상담 신청 건수 조회
     */
    public int getTotalCount() throws SQLException {
        String sql = "SELECT COUNT(*) FROM inquiries";
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            if (rs.next()) {
                return rs.getInt(1);
            }
            return 0;
        }
    }
    
    /**
     * 회사별 총 상담 신청 건수 조회
     */
    public int getTotalCountByCompany(String companyId) throws SQLException {
        String sql = "SELECT COUNT(*) FROM inquiries WHERE company_id = ?";
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, companyId);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
                return 0;
            }
        }
    }
    
    /**
     * ResultSet을 Inquiry 객체로 매핑
     */
    private Inquiry mapResultSetToInquiry(ResultSet rs) throws SQLException {
        Inquiry inquiry = new Inquiry();
        
        inquiry.setId(rs.getLong("id"));
        inquiry.setCompanyId(rs.getString("company_id"));
        inquiry.setName(rs.getString("name"));
        inquiry.setPhone(rs.getString("phone"));
        inquiry.setDebtAmount(rs.getString("debt_amount"));
        inquiry.setMonthlyIncome(rs.getString("monthly_income"));
        
        Timestamp createdAt = rs.getTimestamp("created_at");
        if (createdAt != null) {
            inquiry.setCreatedAt(createdAt.toLocalDateTime());
        }
        
        Timestamp updatedAt = rs.getTimestamp("updated_at");
        if (updatedAt != null) {
            inquiry.setUpdatedAt(updatedAt.toLocalDateTime());
        }
        
        return inquiry;
    }
}