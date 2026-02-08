package com.ace.servlet;

import com.ace.dao.AccessLogDAO;
import com.ace.model.AccessLog;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/access-log")
public class AccessLogServlet extends HttpServlet {
    
    private AccessLogDAO accessLogDAO;
    
    @Override
    public void init() throws ServletException {
        accessLogDAO = new AccessLogDAO();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        PrintWriter out = response.getWriter();
        
        try {
            // localhost 접속은 로그 저장하지 않음
            String pageUrl = request.getRequestURL().toString();
            if (pageUrl.contains("localhost") || pageUrl.contains("127.0.0.1")) {
                out.print("{\"success\": true, \"message\": \"로컬 접속 - 로그 저장 안함\"}");
                return;
            }
            
            String cookieName = "ace_visit_log";
            boolean hasVisitCookie = false;
            
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookieName.equals(cookie.getName())) {
                        hasVisitCookie = true;
                        break;
                    }
                }
            }
            
            if (!hasVisitCookie) {
                String ipAddress = getClientIpAddress(request);
                String userAgent = request.getHeader("User-Agent");
                String referrer = request.getHeader("Referer");
                String sessionId = request.getSession().getId();
                
                AccessLog accessLog = new AccessLog();
                accessLog.setIpAddress(ipAddress);
                accessLog.setUserAgent(userAgent);
                accessLog.setPageUrl(pageUrl);
                accessLog.setReferrer(referrer);
                accessLog.setCountry("한국");
                accessLog.setSessionId(sessionId);
                
                boolean saved = accessLogDAO.saveAccessLog(accessLog);
                
                if (saved) {
                    Cookie visitCookie = new Cookie(cookieName, "visited");
                    visitCookie.setMaxAge(30 * 60);
                    visitCookie.setPath("/");
                    response.addCookie(visitCookie);
                    
                    out.print("{\"success\": true, \"message\": \"접근 로그 저장 완료\"}");
                } else {
                    out.print("{\"success\": false, \"message\": \"접근 로그 저장 실패\"}");
                }
            } else {
                out.print("{\"success\": true, \"message\": \"최근 방문 기록 있음\"}");
            }
            
        } catch (Exception e) {
            System.err.println("접근 로그 처리 중 오류: " + e.getMessage());
            e.printStackTrace();
            out.print("{\"success\": false, \"message\": \"서버 오류\"}");
        }
    }
    
    private String getClientIpAddress(HttpServletRequest request) {
        String xForwardedFor = request.getHeader("X-Forwarded-For");
        if (xForwardedFor != null && !xForwardedFor.isEmpty() && !"unknown".equalsIgnoreCase(xForwardedFor)) {
            return xForwardedFor.split(",")[0].trim();
        }
        
        String xRealIp = request.getHeader("X-Real-IP");
        if (xRealIp != null && !xRealIp.isEmpty() && !"unknown".equalsIgnoreCase(xRealIp)) {
            return xRealIp;
        }
        
        return request.getRemoteAddr();
    }
    
}
