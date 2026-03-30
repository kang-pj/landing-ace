package com.ace.servlet;

import com.ace.dao.ConsultationLeadDAO;
import com.ace.dao.InquiryDAO;
import com.ace.dao.TrafficLogDAO;
import com.ace.model.ConsultationLead;
import com.ace.model.Inquiry;
import com.ace.model.TrafficLog;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.UUID;

@WebServlet("/api/click-log")
public class ClickLogServlet extends HttpServlet {

    private final ConsultationLeadDAO consultationLeadDAO = new ConsultationLeadDAO();
    private final InquiryDAO inquiryDAO = new InquiryDAO();
    private final TrafficLogDAO trafficLogDAO = new TrafficLogDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");

        String clickType   = request.getParameter("click_type");  // kakao / call
        String utmSource   = request.getParameter("utm_source");
        String utmMedium   = request.getParameter("utm_medium");
        String utmCampaign = request.getParameter("utm_campaign");
        String utmTerm     = request.getParameter("utm_term");
        String utmContent  = request.getParameter("utm_content");
        String referrer    = request.getParameter("referrer");
        String deviceType  = request.getParameter("device_type");
        String landingPage = request.getParameter("landing_page");

        // IP 추출
        String ipAddress = getClientIP(request);
        boolean isLocal = ipAddress.equals("127.0.0.1")
                       || ipAddress.contains("0:0:0:0:0:0:0:1")
                       || ipAddress.equals("::1");
        String nameValue = isLocal ? "LOCAL" : ipAddress;

        String userAgent = request.getHeader("User-Agent");

        // 세션 ID
        HttpSession session = request.getSession();
        String sessionId = (String) session.getAttribute("tracking_session_id");
        if (sessionId == null) {
            sessionId = UUID.randomUUID().toString();
            session.setAttribute("tracking_session_id", sessionId);
        }

        // visitor_id 쿠키에서 읽기
        String visitorId = "UNKNOWN";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("visitor_id".equals(cookie.getName())) {
                    visitorId = cookie.getValue();
                    break;
                }
            }
        }
        if ("UNKNOWN".equals(visitorId)) {
            visitorId = UUID.randomUUID().toString();
            Cookie cookie = new Cookie("visitor_id", visitorId);
            cookie.setMaxAge(60 * 60 * 24 * 365);
            cookie.setPath("/");
            response.addCookie(cookie);
        }

        // 타입/제목/내용 결정
        boolean isKakao = "kakao".equals(clickType);
        String inquiryType  = isKakao ? "KAKAO" : "CALL";
        String title        = isKakao ? "카카오톡 문의 입니다." : "전화 문의 입니다.";
        String content      = isKakao ? "카카오톡 유입 로그입니다." : "전화 유입 로그입니다.";
        String source       = isKakao ? "kakao_click" : "call_click";
        String phoneValue   = isKakao ? "카카오" : "전화";

        try {
            // 1. inquiries 저장
            Inquiry inquiry = new Inquiry();
            inquiry.setCompanyId("COMP0001");
            inquiry.setName(nameValue);
            inquiry.setPhone(phoneValue);
            inquiry.setDebtAmount("");
            inquiry.setMonthlyIncome("");
            inquiry.setDevice(deviceType);
            inquiry.setType(inquiryType);
            inquiry.setTitle(title);
            inquiry.setContent(content);
            inquiry.setIpAddress(ipAddress);
            inquiry.setUserAgent(userAgent);
            inquiry.setReferrer(referrer);
            inquiry.setUtmSource(utmSource);
            inquiry.setUtmMedium(utmMedium);
            inquiry.setUtmCampaign(utmCampaign);
            inquiry.setUtmTerm(utmTerm);
            inquiry.setUtmContent(utmContent);
            inquiryDAO.saveInquiry(inquiry);
            System.out.println("클릭 로그 → inquiries 저장 완료 [" + inquiryType + "] name=" + nameValue);

            // 2. consultation_leads 저장
            ConsultationLead lead = new ConsultationLead();
            lead.setSessionId(sessionId);
            lead.setConsultationSource(source);
            lead.setName(nameValue);
            lead.setPhone(phoneValue);
            lead.setEmail("");
            lead.setDebtAmount("");
            lead.setMonthlyIncome("");
            lead.setMessage(content);
            lead.setStatus("pending");
            lead.setUserAgent(userAgent);
            lead.setIpAddress(ipAddress);
            consultationLeadDAO.insert(lead);
            System.out.println("클릭 로그 → consultation_leads 저장 완료 [" + inquiryType + "]");

            // 3. traffic_logs 저장
            TrafficLog trafficLog = new TrafficLog();
            trafficLog.setCompanyId("COMP0001");
            trafficLog.setSessionId(sessionId);
            trafficLog.setVisitorId(visitorId);
            trafficLog.setUtmSource(utmSource);
            trafficLog.setUtmMedium(utmMedium);
            trafficLog.setUtmCampaign(utmCampaign);
            trafficLog.setUtmTerm(utmTerm);
            trafficLog.setUtmContent(utmContent);
            trafficLog.setReferrerUrl(referrer);
            trafficLog.setLandingPage(landingPage);
            trafficLog.setDeviceType(deviceType);
            trafficLog.setIpAddress(ipAddress);
            trafficLog.setUserAgent(userAgent);
            trafficLogDAO.insert(trafficLog);
            System.out.println("클릭 로그 → traffic_logs 저장 완료 [" + inquiryType + "]");

            response.getWriter().write("{\"success\":true}");

        } catch (Exception e) {
            System.err.println("클릭 로그 저장 오류: " + e.getMessage());
            e.printStackTrace();
            response.getWriter().write("{\"success\":false,\"error\":\"" + e.getMessage() + "\"}");
        }
    }

    private String getClientIP(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) ip = request.getHeader("Proxy-Client-IP");
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) ip = request.getHeader("WL-Proxy-Client-IP");
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) ip = request.getHeader("HTTP_CLIENT_IP");
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) ip = request.getRemoteAddr();
        return ip;
    }
}
