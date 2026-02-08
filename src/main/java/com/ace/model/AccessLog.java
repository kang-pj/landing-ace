package com.ace.model;

import java.time.LocalDateTime;

public class AccessLog {
    private Long id;
    private String ipAddress;
    private String userAgent;
    private String pageUrl;
    private String referrer;
    private String country;
    private String sessionId;
    private LocalDateTime createdAt;

    public AccessLog() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getIpAddress() { return ipAddress; }
    public void setIpAddress(String ipAddress) { this.ipAddress = ipAddress; }

    public String getUserAgent() { return userAgent; }
    public void setUserAgent(String userAgent) { this.userAgent = userAgent; }

    public String getPageUrl() { return pageUrl; }
    public void setPageUrl(String pageUrl) { this.pageUrl = pageUrl; }

    public String getReferrer() { return referrer; }
    public void setReferrer(String referrer) { this.referrer = referrer; }

    public String getCountry() { return country; }
    public void setCountry(String country) { this.country = country; }

    public String getSessionId() { return sessionId; }
    public void setSessionId(String sessionId) { this.sessionId = sessionId; }

    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
}
