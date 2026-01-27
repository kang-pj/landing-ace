package com.ace.model;

import java.time.LocalDateTime;

public class ConsultationRequest {
    private Long id;
    private String name;
    private String phone;
    private String debtAmount;
    private String income;
    private String device;
    private String type;
    private LocalDateTime createdAt;
    private String ipAddress;
    private String userAgent;
    
    // 기본 생성자
    public ConsultationRequest() {}
    
    // 생성자
    public ConsultationRequest(String name, String phone, String debtAmount, String income, 
                             String device, String type) {
        this.name = name;
        this.phone = phone;
        this.debtAmount = debtAmount;
        this.income = income;
        this.device = device;
        this.type = type;
        this.createdAt = LocalDateTime.now();
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public String getDebtAmount() {
        return debtAmount;
    }
    
    public void setDebtAmount(String debtAmount) {
        this.debtAmount = debtAmount;
    }
    
    public String getIncome() {
        return income;
    }
    
    public void setIncome(String income) {
        this.income = income;
    }
    
    public String getDevice() {
        return device;
    }
    
    public void setDevice(String device) {
        this.device = device;
    }
    
    public String getType() {
        return type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
    
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
    
    public String getIpAddress() {
        return ipAddress;
    }
    
    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }
    
    public String getUserAgent() {
        return userAgent;
    }
    
    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }
    
    @Override
    public String toString() {
        return "ConsultationRequest{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", debtAmount='" + debtAmount + '\'' +
                ", income='" + income + '\'' +
                ", device='" + device + '\'' +
                ", type='" + type + '\'' +
                ", createdAt=" + createdAt +
                ", ipAddress='" + ipAddress + '\'' +
                '}';
    }
}