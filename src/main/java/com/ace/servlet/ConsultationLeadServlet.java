package com.ace.servlet;

import com.ace.dao.ConsultationLeadDAO;
import com.ace.dao.InquiryDAO;
import com.ace.model.ConsultationLead;
import com.ace.model.Inquiry;
import com.ace.util.EmailUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/api/consultation")
public class ConsultationLeadServlet extends HttpServlet {
    
    private ConsultationLeadDAO consultationLeadDAO = new ConsultationLeadDAO();
    private InquiryDAO inquiryDAO = new InquiryDAO();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        System.out.println("=== /api/consultation 요청 받음 ===");
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        try {
            // 파라미터 로깅
            System.out.println("consultation_source: " + request.getParameter("consultation_source"));
            System.out.println("name: " + request.getParameter("name"));
            System.out.println("phone: " + request.getParameter("phone"));
            System.out.println("email: " + request.getParameter("email"));
            System.out.println("debt: " + request.getParameter("debt"));
            System.out.println("income: " + request.getParameter("income"));
            System.out.println("message: " + request.getParameter("message"));
            
            // 세션 ID 가져오기 또는 생성
            HttpSession session = request.getSession();
            String sessionId = (String) session.getAttribute("tracking_session_id");
            
            if (sessionId == null) {
                // 세션 ID가 없으면 새로 생성
                sessionId = java.util.UUID.randomUUID().toString();
                session.setAttribute("tracking_session_id", sessionId);
                System.out.println("새 세션 ID 생성: " + sessionId);
            } else {
                System.out.println("기존 세션 ID 사용: " + sessionId);
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
            
            System.out.println("DB 저장 시작...");
            
            // 1. consultation_leads 테이블에 저장 (로그용)
            consultationLeadDAO.insert(lead);
            System.out.println("consultation_leads 저장 성공!");
            
            // 2. inquiries 테이블에 저장 (실제 관리용)
            Inquiry inquiry = new Inquiry();
            inquiry.setCompanyId("COMP0001");
            inquiry.setName(request.getParameter("name"));
            inquiry.setPhone(request.getParameter("phone"));
            inquiry.setDebtAmount(request.getParameter("debt"));
            inquiry.setMonthlyIncome(request.getParameter("income"));
            inquiry.setDevice(detectDevice(request));
            inquiry.setType("INQ");
            
            // 타이틀 생성
            String title = request.getParameter("name") + "님이 상담 신청하셨습니다.";
            inquiry.setTitle(title);
            
            // Content 생성
            StringBuilder content = new StringBuilder();
            String debt = request.getParameter("debt");
            String income = request.getParameter("income");
            String message = request.getParameter("message");
            
            if (debt != null && !debt.trim().isEmpty()) {
                content.append("【채무액】 ").append(debt).append("\n");
            }
            if (income != null && !income.trim().isEmpty()) {
                content.append("【월소득】 ").append(income).append("\n");
            }
            if (message != null && !message.trim().isEmpty()) {
                content.append("【메시지】 ").append(message).append("\n");
            }
            content.append("【접속 기기】 ").append(detectDevice(request));
            
            inquiry.setContent(content.toString().trim());
            inquiry.setIpAddress(getClientIP(request));
            inquiry.setUserAgent(request.getHeader("User-Agent"));
            inquiry.setReferrer(request.getHeader("Referer"));
            
            inquiryDAO.saveInquiry(inquiry);
            System.out.println("inquiries 저장 성공!");
            
            // 3. 이메일 발송 (비동기 처리)
            final String finalName = request.getParameter("name");
            final String finalPhone = request.getParameter("phone");
            final String finalDebt = request.getParameter("debt");
            final String finalIncome = request.getParameter("income");
            final String finalSource = request.getParameter("consultation_source");
            final String finalMessage = request.getParameter("message");
            
            new Thread(() -> {
                try {
                    EmailUtil.sendConsultationEmail(
                        finalName,
                        finalPhone,
                        finalDebt,
                        finalIncome,
                        finalSource,
                        finalMessage
                    );
                    System.out.println("이메일 발송 완료!");
                } catch (Exception emailError) {
                    System.err.println("이메일 발송 실패: " + emailError.getMessage());
                    emailError.printStackTrace();
                }
            }).start();
            
            response.getWriter().write("{\"success\": true, \"message\": \"상담 신청이 완료되었습니다.\"}");
            
        } catch (Exception e) {
            System.err.println("에러 발생: " + e.getMessage());
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("{\"success\": false, \"error\": \"" + e.getMessage() + "\"}");
        }
    }
    
    private String detectDevice(HttpServletRequest request) {
        String userAgent = request.getHeader("User-Agent");
        if (userAgent == null) {
            return "Unknown";
        }
        
        userAgent = userAgent.toLowerCase();
        
        if (userAgent.contains("mobile") || userAgent.contains("android") || 
            userAgent.contains("iphone") || userAgent.contains("ipad")) {
            return "Mobile";
        } else {
            return "PC";
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
