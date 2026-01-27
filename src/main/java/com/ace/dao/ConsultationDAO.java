package com.ace.dao;

import com.ace.model.ConsultationRequest;
import com.ace.util.DatabaseUtil;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class ConsultationDAO {
    
    // 테이블 생성 SQL
    private static final String CREATE_TABLE_SQL = """
        CREATE TABLE IF NOT EXISTS consultation_requests (
            id BIGINT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(100) NOT NULL,
            phone VARCHAR(20) NOT NULL,
            debt_amount VARCHAR(50),
            income VARCHAR(50),
            device VARCHAR(20),
            type VARCHAR(100),
            ip_address VARCHAR(45),
            user_agent TEXT,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            INDEX idx_created_at (created_at),
            INDEX idx_phone (phone)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
        """;
    
    // 데이터 삽입 SQL
    private static final String INSERT_SQL = """
        INSERT INTO consultation_requests 
        (name, phone, debt_amount, income, device, type, ip_address, user_agent) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?)
        """;
    
    // 데이터 조회 SQL
    private static final String SELECT_ALL_SQL = """
        SELECT id, name, phone, debt_amount, income, device, type, 
               ip_address, user_agent, created_at 
        FROM consultation_requests 
        ORDER BY created_at DESC
        """;
    
    // 최근 데이터 조회 SQL
    private static final String SELECT_RECENT_SQL = """
        SELECT id, name, phone, debt_amount, income, device, type, 
               ip_address, user_agent, created_at 
        FROM consultation_requests 
        ORDER BY created_at DESC 
        LIMIT ?
        """;
    
    /**
     * 테이블 생성
     */
    public void createTableIfNotExists() throws SQLException {
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {
            
            stmt.execute(CREATE_TABLE_SQL);
            System.out.println("Consultation requests table created or already exists");
        }
    }
    
    /**
     * 상담 신청 데이터 저장
     */
    public Long saveConsultationRequest(ConsultationRequest request) throws SQLException {
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(INSERT_SQL, Statement.RETURN_GENERATED_KEYS)) {
            
            pstmt.setString(1, request.getName());
            pstmt.setString(2, request.getPhone());
            pstmt.setString(3, request.getDebtAmount());
            pstmt.setString(4, request.getIncome());
            pstmt.setString(5, request.getDevice());
            pstmt.setString(6, request.getType());
            pstmt.setString(7, request.getIpAddress());
            pstmt.setString(8, request.getUserAgent());
            
            int affectedRows = pstmt.executeUpdate();
            
            if (affectedRows == 0) {
                throw new SQLException("Creating consultation request failed, no rows affected.");
            }
            
            try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    Long id = generatedKeys.getLong(1);
                    request.setId(id);
                    return id;
                } else {
                    throw new SQLException("Creating consultation request failed, no ID obtained.");
                }
            }
        }
    }
    
    /**
     * 모든 상담 신청 데이터 조회
     */
    public List<ConsultationRequest> getAllConsultationRequests() throws SQLException {
        List<ConsultationRequest> requests = new ArrayList<>();
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(SELECT_ALL_SQL)) {
            
            while (rs.next()) {
                requests.add(mapResultSetToConsultationRequest(rs));
            }
        }
        
        return requests;
    }
    
    /**
     * 최근 상담 신청 데이터 조회
     */
    public List<ConsultationRequest> getRecentConsultationRequests(int limit) throws SQLException {
        List<ConsultationRequest> requests = new ArrayList<>();
        
        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(SELECT_RECENT_SQL)) {
            
            pstmt.setInt(1, limit);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    requests.add(mapResultSetToConsultationRequest(rs));
                }
            }
        }
        
        return requests;
    }
    
    /**
     * 총 상담 신청 건수 조회
     */
    public int getTotalCount() throws SQLException {
        String sql = "SELECT COUNT(*) FROM consultation_requests";
        
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
     * ResultSet을 ConsultationRequest 객체로 매핑
     */
    private ConsultationRequest mapResultSetToConsultationRequest(ResultSet rs) throws SQLException {
        ConsultationRequest request = new ConsultationRequest();
        
        request.setId(rs.getLong("id"));
        request.setName(rs.getString("name"));
        request.setPhone(rs.getString("phone"));
        request.setDebtAmount(rs.getString("debt_amount"));
        request.setIncome(rs.getString("income"));
        request.setDevice(rs.getString("device"));
        request.setType(rs.getString("type"));
        request.setIpAddress(rs.getString("ip_address"));
        request.setUserAgent(rs.getString("user_agent"));
        
        Timestamp timestamp = rs.getTimestamp("created_at");
        if (timestamp != null) {
            request.setCreatedAt(timestamp.toLocalDateTime());
        }
        
        return request;
    }
}