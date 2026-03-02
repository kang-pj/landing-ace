package com.ace.servlet;

import com.ace.dao.ConsultationLeadDAO;
import com.ace.model.ConsultationLead;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/api/consultation")
public class ConsultationLeadServlet extends HttpServlet {
    
    private ConsultationLeadDAO consultationLeadDAO = new ConsultationLeadDAO();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        try {
            // 세션 ID 가져오기 또는 생성
            HttpSession session = request.getSession();
            String sessionId = (String) session.getAttribute("tracking_session_id");
            
            if (sessionId == null) {
                // 세션 ID가 없으면 새로 생성
                sessionId = java.util.UUID.randomUUID().toString();
                session.setAttribute("tracking_session_id", sessionId);
            }
            
            ConsultationLead lead = new ConsultationLead();
            lead.setSessionId(sessionId);
            lead.setConsultationSource(request.getParameter("consultation_source"));
            lead.setName(request.getParameter("name"));
            lead.setPhone(request.getParameter("phone"));
            lead.setEmail(request.getParameter("email"));
            lead.setDebtAmount(request.getParameter("debt"));
            lead.setMonthlyIncome(request.getParameter("income"));
            lead.setMessage(request.getParameter("message"));
            lead.setStatus("pending");
            lead.setUserAgent(request.getHeader("User-Agent"));
            lead.setIpAddress(getClientIP(request));
            
            consultationLeadDAO.insert(lead);
            
            response.getWriter().write("{\"success\": true, \"message\": \"상담 신청이 완료되었습니다.\"}");
            
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("{\"success\": false, \"error\": \"" + e.getMessage() + "\"}");
        }
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
