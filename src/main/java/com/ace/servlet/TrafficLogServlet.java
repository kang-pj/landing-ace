package com.ace.servlet;

import com.ace.dao.TrafficLogDAO;
import com.ace.model.TrafficLog;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.UUID;

@WebServlet("/api/traffic")
public class TrafficLogServlet extends HttpServlet {
    
    private TrafficLogDAO trafficLogDAO = new TrafficLogDAO();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        try {
            // 세션 ID 생성 또는 가져오기
            HttpSession session = request.getSession();
            String sessionId = (String) session.getAttribute("tracking_session_id");
            if (sessionId == null) {
                sessionId = UUID.randomUUID().toString();
                session.setAttribute("tracking_session_id", sessionId);
            }
            
            // 방문자 ID (쿠키로 관리)
            String visitorId = getOrCreateVisitorId(request, response);
            
            TrafficLog log = new TrafficLog();
            log.setCompanyId("COMP0001"); // 에이스 법무법인 고정값
            log.setSessionId(sessionId);
            log.setVisitorId(visitorId);
            
            // UTM 파라미터
            log.setUtmSource(request.getParameter("utm_source"));
            log.setUtmMedium(request.getParameter("utm_medium"));
            log.setUtmCampaign(request.getParameter("utm_campaign"));
            log.setUtmContent(request.getParameter("utm_content"));
            log.setUtmTerm(request.getParameter("utm_term"));
            
            // 유입 경로
            log.setReferrerUrl(request.getParameter("referrer"));
            log.setSearchKeyword(request.getParameter("search_keyword"));
            log.setLandingPage(request.getParameter("landing_page"));
            
            // 사용자 환경
            log.setDeviceType(request.getParameter("device_type"));
            log.setOs(request.getParameter("os"));
            log.setBrowser(request.getParameter("browser"));
            log.setBrowserVersion(request.getParameter("browser_version"));
            log.setScreenResolution(request.getParameter("screen_resolution"));
            log.setIpAddress(getClientIP(request));
            log.setUserAgent(request.getHeader("User-Agent"));
            
            trafficLogDAO.insert(log);
            
            response.getWriter().write("{\"success\": true, \"sessionId\": \"" + sessionId + "\"}");
            
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("{\"success\": false, \"error\": \"" + e.getMessage() + "\"}");
        }
    }
    
    private String getOrCreateVisitorId(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("visitor_id".equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        
        // 새 방문자 ID 생성
        String visitorId = UUID.randomUUID().toString();
        Cookie cookie = new Cookie("visitor_id", visitorId);
        cookie.setMaxAge(60 * 60 * 24 * 365); // 1년
        cookie.setPath("/");
        response.addCookie(cookie);
        
        return visitorId;
    }
    
    private String getClientIP(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
}
