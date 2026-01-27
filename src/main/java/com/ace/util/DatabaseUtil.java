package com.ace.util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseUtil {
    private static HikariDataSource dataSource;
    private static final String PROPERTIES_FILE = "/db.properties";
    
    static {
        try {
            initializeDataSource();
        } catch (Exception e) {
            throw new RuntimeException("Failed to initialize database connection pool", e);
        }
    }
    
    private static void initializeDataSource() throws IOException {
        Properties props = new Properties();
        
        try (InputStream input = DatabaseUtil.class.getResourceAsStream(PROPERTIES_FILE)) {
            if (input == null) {
                throw new IOException("Unable to find " + PROPERTIES_FILE);
            }
            props.load(input);
        }
        
        HikariConfig config = new HikariConfig();
        
        // 환경에 따른 URL 선택 (서버 환경 감지)
        String dbUrl;
        if (isServerEnvironment()) {
            dbUrl = props.getProperty("db.url.server");
            System.out.println("Using server database URL: " + dbUrl);
        } else {
            dbUrl = props.getProperty("db.url.local");
            System.out.println("Using local database URL: " + dbUrl);
        }
        
        config.setDriverClassName(props.getProperty("db.driver"));
        config.setJdbcUrl(dbUrl);
        config.setUsername(props.getProperty("db.username"));
        config.setPassword(props.getProperty("db.password"));
        
        // Connection Pool 설정
        config.setMaximumPoolSize(Integer.parseInt(props.getProperty("db.maxActive", "20")));
        config.setMinimumIdle(Integer.parseInt(props.getProperty("db.minIdle", "5")));
        config.setIdleTimeout(300000); // 5분
        config.setConnectionTimeout(20000); // 20초
        config.setLeakDetectionThreshold(60000); // 1분
        
        // Connection 검증 설정
        config.setConnectionTestQuery("SELECT 1");
        config.setValidationTimeout(3000);
        
        dataSource = new HikariDataSource(config);
        
        System.out.println("Database connection pool initialized successfully");
    }
    
    /**
     * 서버 환경인지 확인 (간단한 방법으로 localhost 여부 확인)
     */
    private static boolean isServerEnvironment() {
        // 시스템 속성이나 환경 변수로 판단할 수도 있음
        String serverName = System.getProperty("server.name");
        if (serverName != null && serverName.contains("cafe24")) {
            return true;
        }
        
        // 또는 특정 디렉토리 존재 여부로 판단
        return System.getProperty("os.name").toLowerCase().contains("linux");
    }
    
    /**
     * 데이터베이스 연결 반환
     */
    public static Connection getConnection() throws SQLException {
        if (dataSource == null) {
            throw new SQLException("DataSource is not initialized");
        }
        return dataSource.getConnection();
    }
    
    /**
     * 연결 풀 상태 정보 반환
     */
    public static String getPoolStatus() {
        if (dataSource == null) {
            return "DataSource not initialized";
        }
        
        return String.format(
            "Pool Status - Active: %d, Idle: %d, Total: %d, Waiting: %d",
            dataSource.getHikariPoolMXBean().getActiveConnections(),
            dataSource.getHikariPoolMXBean().getIdleConnections(),
            dataSource.getHikariPoolMXBean().getTotalConnections(),
            dataSource.getHikariPoolMXBean().getThreadsAwaitingConnection()
        );
    }
    
    /**
     * 데이터베이스 연결 테스트
     */
    public static boolean testConnection() {
        try (Connection conn = getConnection()) {
            return conn != null && !conn.isClosed();
        } catch (SQLException e) {
            System.err.println("Database connection test failed: " + e.getMessage());
            return false;
        }
    }
    
    /**
     * 애플리케이션 종료 시 연결 풀 정리
     */
    public static void closeDataSource() {
        if (dataSource != null && !dataSource.isClosed()) {
            dataSource.close();
            System.out.println("Database connection pool closed");
        }
    }
}