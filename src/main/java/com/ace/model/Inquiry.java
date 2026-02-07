package com.ace.model;

import java.time.LocalDateTime;

public class Inquiry {
    private Long id;
    private String companyId;
    private String name;
    private String phone;
    private String debtAmount;
    private String monthlyIncome;
    private String device;
    private String type;
    private String ipAddress;
    private String userAgent;
    private String referrer;
    private String utm_source;
    private String utm_medium;
    private String utm_campaign;
    private String utm_term;
    private String utm_content;
    private String hasRealEstate;  // Y/N
    private String hasDependents;  // Y/N
    private String title;  // 상담 신청 타이틀
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    
    // 기본 생성자
    public Inquiry() {
        this.companyId = "COMP0001"; // 기본 컴퍼니 ID
        this.createdAt = LocalDateTime.now();
        this.updatedAt = LocalDateTime.now();
    }
    
    // 생성자
    public Inquiry(String name, String phone, String debtAmount, String monthlyIncome, 
                   String device, String type) {
        this();
        this.name = name;
        this.phone = phone;
        this.debtAmount = debtAmount;
        this.monthlyIncome = monthlyIncome;
        this.device = device;
        this.type = type;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getCompanyId() {
        return companyId;
    }
    
    public void setCompanyId(String companyId) {
        this.companyId = companyId;
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
    
    public String getMonthlyIncome() {
        return monthlyIncome;
    }
    
    public void setMonthlyIncome(String monthlyIncome) {
        this.monthlyIncome = monthlyIncome;
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
    
    public String getReferrer() {
        return referrer;
    }
    
    public void setReferrer(String referrer) {
        this.referrer = referrer;
    }
    
    public String getUtmSource() {
        return utm_source;
    }
    
    public void setUtmSource(String utm_source) {
        this.utm_source = utm_source;
    }
    
    public String getUtmMedium() {
        return utm_medium;
    }
    
    public void setUtmMedium(String utm_medium) {
        this.utm_medium = utm_medium;
    }
    
    public String getUtmCampaign() {
        return utm_campaign;
    }
    
    public void setUtmCampaign(String utm_campaign) {
        this.utm_campaign = utm_campaign;
    }
    
    public String getUtmTerm() {
        return utm_term;
    }
    
    public void setUtmTerm(String utm_term) {
        this.utm_term = utm_term;
    }
    
    public String getUtmContent() {
        return utm_content;
    }
    
    public void setUtmContent(String utm_content) {
        this.utm_content = utm_content;
    }
    
    public String getHasRealEstate() {
        return hasRealEstate;
    }
    
    public void setHasRealEstate(String hasRealEstate) {
        this.hasRealEstate = hasRealEstate;
    }
    
    public String getHasDependents() {
        return hasDependents;
    }
    
    public void setHasDependents(String hasDependents) {
        this.hasDependents = hasDependents;
    }
    
    public String getTitle() {
        return title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
    
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
    
    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }
    
    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }
    
    @Override
    public String toString() {
        return "Inquiry{" +
                "id=" + id +
                ", companyId='" + companyId + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", debtAmount='" + debtAmount + '\'' +
                ", monthlyIncome='" + monthlyIncome + '\'' +
                ", device='" + device + '\'' +
                ", type='" + type + '\'' +
                ", hasRealEstate='" + hasRealEstate + '\'' +
                ", hasDependents='" + hasDependents + '\'' +
                ", ipAddress='" + ipAddress + '\'' +
                ", createdAt=" + createdAt +
                '}';
    }
}