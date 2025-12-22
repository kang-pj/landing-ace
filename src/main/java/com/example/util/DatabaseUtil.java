package com.example.util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class DatabaseUtil {
    private static HikariDataSource dataSource;
    
    static {
        try {
            HikariConfig config = new HikariConfig();
            
            // cafe24 호스팅 환경에 맞는 설정 (실제 값으로 변경 필요)
            config.setJdbcUrl("jdbc:mariadb://localhost:3306/your_database?useUnicode=true&characterEncoding=UTF-8");
            config.setUsername("your_username");
            config.setPassword("your_password");
            config.setDriverClassName("org.mariadb.jdbc.Driver");
            
            // 커넥션 풀 설정
            config.setMaximumPoolSize(10);
            config.setMinimumIdle(2);
            config.setConnectionTimeout(30000);
            config.setIdleTimeout(600000);
            config.setMaxLifetime(1800000);
            
            // UTF-8 설정
            config.addDataSourceProperty("useUnicode", "true");
            config.addDataSourceProperty("characterEncoding", "UTF-8");
            config.addDataSourceProperty("serverTimezone", "Asia/Seoul");
            
            dataSource = new HikariDataSource(config);
            
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("데이터베이스 초기화 실패", e);
        }
    }
    
    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
    
    public static void close() {
        if (dataSource != null && !dataSource.isClosed()) {
            dataSource.close();
        }
    }
}