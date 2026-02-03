package com.ace.servlet;

import com.ace.dao.InquiryDAO;
import com.ace.model.Inquiry;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;

@WebServlet("/consultation")
public class ConsultationServlet extends HttpServlet {
    
    private InquiryDAO inquiryDAO;
    
    @Override
    public void init() throws ServletException {
        super.init();
        inquiryDAO = new InquiryDAO();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 한글 인코딩 설정
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        PrintWriter out = response.getWriter();
        
        try {
            // 디버깅: 모든 파라미터 출력
            System.out.println("=== 상담 신청 요청 받음 ===");
            System.out.println("Content-Type: " + request.getContentType());
            System.out.println("Method: " + request.getMethod());
            System.out.println("Query String: " + request.getQueryString());
            
            Enumeration<String> paramNames = request.getParameterNames();
            boolean hasParams = false;
            while (paramNames.hasMoreElements()) {
                hasParams = true;
                String paramName = paramNames.nextElement();
                String paramValue = request.getParameter(paramName);
                System.out.println(paramName + " = " + paramValue);
            }
            
            if (!hasParams) {
                System.out.println("파라미터가 전혀 없습니다!");
            }
            
            // 요청 파라미터 추출
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String debtAmount = request.getParameter("debtAmount");
            String monthlyIncome = request.getParameter("income");
            String device = request.getParameter("device");
            String type = request.getParameter("type");
            
            System.out.println("추출된 파라미터:");
            System.out.println("name: '" + name + "'");
            System.out.println("phone: '" + phone + "'");
            System.out.println("debtAmount: '" + debtAmount + "'");
            System.out.println("monthlyIncome: '" + monthlyIncome + "'");
            System.out.println("device: '" + device + "'");
            System.out.println("type: '" + type + "'");
            
            // 필수 필드 검증
            if (name == null || name.trim().isEmpty()) {
                System.out.println("이름 검증 실패: name = '" + name + "'");
                sendErrorResponse(out, "이름은 필수 입력 항목입니다.");
                return;
            }
            
            if (phone == null || phone.trim().isEmpty()) {
                System.out.println("연락처 검증 실패: phone = '" + phone + "'");
                sendErrorResponse(out, "연락처는 필수 입력 항목입니다.");
                return;
            }
            
            // 연락처 형식 검증
            phone = phone.replaceAll("[^0-9]", ""); // 숫자만 남기기
            if (phone.length() < 10 || phone.length() > 11) {
                System.out.println("연락처 형식 검증 실패: phone = '" + phone + "' (길이: " + phone.length() + ")");
                sendErrorResponse(out, "올바른 연락처를 입력해 주세요.");
                return;
            }
            
            // 팝업에서 온 요청인 경우 채무금액과 월소득 필수 검증
            if (type != null && (type.contains("팝업") || type.equals("popup_consultation") || type.equals("AI진단상담신청"))) {
                if (debtAmount == null || debtAmount.trim().isEmpty()) {
                    System.out.println("채무금액 검증 실패: debtAmount = '" + debtAmount + "'");
                    sendErrorResponse(out, "채무금액을 선택해 주세요.");
                    return;
                }
                
                if (monthlyIncome == null || monthlyIncome.trim().isEmpty()) {
                    System.out.println("월소득 검증 실패: monthlyIncome = '" + monthlyIncome + "'");
                    sendErrorResponse(out, "월소득을 선택해 주세요.");
                    return;
                }
            }
            
            System.out.println("검증 통과! 데이터베이스 저장 시작...");
            
            // Inquiry 객체 생성
            Inquiry inquiry = new Inquiry();
            inquiry.setCompanyId("COMP0001");
            inquiry.setName(name.trim());
            inquiry.setPhone(phone);
            inquiry.setDebtAmount(debtAmount);
            inquiry.setMonthlyIncome(monthlyIncome);
            inquiry.setDevice(device != null ? device : detectDevice(request));
            inquiry.setType("inquiry");  // 타입은 항상 "inquiry"로 고정
            
            // 추가 정보 수집
            collectAdditionalInfo(request, inquiry);
            
            System.out.println("저장할 Inquiry 객체: " + inquiry.toString());
            
            // 데이터베이스에 저장
            Long inquiryId = inquiryDAO.saveInquiry(inquiry);
            
            System.out.println("데이터베이스 저장 성공! ID: " + inquiryId);
            
            // 성공 응답
            sendSuccessResponse(out, inquiryId, inquiry);
            
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
            e.printStackTrace();
            sendErrorResponse(out, "데이터 저장 중 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.");
            
        } catch (Exception e) {
            System.err.println("Unexpected error: " + e.getMessage());
            e.printStackTrace();
            sendErrorResponse(out, "시스템 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.");
        }
    }
    
    /**
     * 추가 정보 수집 (IP, User-Agent, Referrer, UTM 파라미터, AI 진단 데이터 등)
     */
    private void collectAdditionalInfo(HttpServletRequest request, Inquiry inquiry) {
        // IP 주소 수집
        String ipAddress = getClientIpAddress(request);
        inquiry.setIpAddress(ipAddress);
        
        // User-Agent 수집
        String userAgent = request.getHeader("User-Agent");
        inquiry.setUserAgent(userAgent);
        
        // Referrer 수집
        String referrer = request.getHeader("Referer");
        inquiry.setReferrer(referrer);
        
        // UTM 파라미터 수집
        inquiry.setUtmSource(request.getParameter("utm_source"));
        inquiry.setUtmMedium(request.getParameter("utm_medium"));
        inquiry.setUtmCampaign(request.getParameter("utm_campaign"));
        inquiry.setUtmTerm(request.getParameter("utm_term"));
        inquiry.setUtmContent(request.getParameter("utm_content"));
        
        // AI 진단 관련 추가 데이터 수집
        String diagnosisType = request.getParameter("diagnosisType");
        String assets = request.getParameter("assets");
        String dependents = request.getParameter("dependents");
        
        System.out.println("=== AI 진단 데이터 수집 ===");
        System.out.println("diagnosisType: '" + diagnosisType + "'");
        System.out.println("assets: '" + assets + "'");
        System.out.println("dependents: '" + dependents + "'");
        
        if (diagnosisType != null && !diagnosisType.trim().isEmpty()) {
            System.out.println("AI 진단 타입: " + diagnosisType);
            // 진단 타입을 영문으로 변환하여 저장 (별도 필드에 저장하지 않고 로그만)
        }
        
        // 보유자산 Y/N 변환 (1: 있음 -> Y, 0: 없음 -> N)
        if (assets != null && !assets.trim().isEmpty()) {
            String hasRealEstate = "1".equals(assets) ? "Y" : "N";
            inquiry.setHasRealEstate(hasRealEstate);
            System.out.println("보유자산: " + assets + " -> " + hasRealEstate + " (설정됨)");
        } else {
            System.out.println("보유자산 데이터 없음 - NULL로 설정");
            inquiry.setHasRealEstate(null);
        }
        
        // 부양가족 Y/N 변환 (1: 있음 -> Y, 0: 없음 -> N)
        if (dependents != null && !dependents.trim().isEmpty()) {
            String hasDependents = "1".equals(dependents) ? "Y" : "N";
            inquiry.setHasDependents(hasDependents);
            System.out.println("부양가족: " + dependents + " -> " + hasDependents + " (설정됨)");
        } else {
            System.out.println("부양가족 데이터 없음 - NULL로 설정");
            inquiry.setHasDependents(null);
        }
        
        // 디버그 정보 출력
        System.out.println("Client IP: " + ipAddress);
        System.out.println("User-Agent: " + userAgent);
        System.out.println("Referrer: " + referrer);
        System.out.println("UTM Source: " + inquiry.getUtmSource());
        System.out.println("UTM Medium: " + inquiry.getUtmMedium());
        System.out.println("UTM Campaign: " + inquiry.getUtmCampaign());
        System.out.println("UTM Term: " + inquiry.getUtmTerm());
        System.out.println("UTM Content: " + inquiry.getUtmContent());
    }
    
    /**
     * 클라이언트 IP 주소 추출 (프록시 고려)
     */
    private String getClientIpAddress(HttpServletRequest request) {
        String[] headerNames = {
            "X-Forwarded-For",
            "X-Real-IP", 
            "Proxy-Client-IP",
            "WL-Proxy-Client-IP",
            "HTTP_X_FORWARDED_FOR",
            "HTTP_X_FORWARDED",
            "HTTP_X_CLUSTER_CLIENT_IP",
            "HTTP_CLIENT_IP",
            "HTTP_FORWARDED_FOR",
            "HTTP_FORWARDED",
            "HTTP_VIA",
            "REMOTE_ADDR"
        };
        
        for (String headerName : headerNames) {
            String ip = request.getHeader(headerName);
            if (ip != null && !ip.isEmpty() && !"unknown".equalsIgnoreCase(ip)) {
                // 여러 IP가 있는 경우 첫 번째 IP 사용
                if (ip.contains(",")) {
                    ip = ip.split(",")[0].trim();
                }
                return ip;
            }
        }
        
        return request.getRemoteAddr();
    }
    
    /**
     * 한글을 영문으로 변환
     */
    private String convertToEnglish(String korean) {
        if (korean == null) return null;
        
        switch (korean.trim()) {
            case "개인회생":
                return "personal";
            case "파산면책":
                return "bankruptcy";
            case "무료상담신청":
                return "free_consultation";
            case "AI진단상담신청":
                return "ai_diagnosis";
            default:
                return korean; // 변환할 수 없으면 원본 반환
        }
    }
    
    /**
     * 디바이스 타입 감지
     */
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
    
    /**
     * 성공 응답 전송
     */
    private void sendSuccessResponse(PrintWriter out, Long inquiryId, Inquiry inquiry) {
        out.println("{");
        out.println("  \"success\": true,");
        out.println("  \"message\": \"상담 신청이 완료되었습니다. 빠른 시일 내에 연락드리겠습니다.\",");
        out.println("  \"inquiryId\": " + inquiryId + ",");
        out.println("  \"data\": {");
        out.println("    \"name\": \"" + inquiry.getName() + "\",");
        out.println("    \"phone\": \"" + inquiry.getPhone() + "\",");
        out.println("    \"companyId\": \"" + inquiry.getCompanyId() + "\"");
        out.println("  }");
        out.println("}");
    }
    
    /**
     * 오류 응답 전송
     */
    private void sendErrorResponse(PrintWriter out, String message) {
        out.println("{");
        out.println("  \"success\": false,");
        out.println("  \"message\": \"" + message + "\"");
        out.println("}");
    }
    
    /**
     * GET 요청 처리 (테스트용)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        PrintWriter out = response.getWriter();
        
        out.println("<!DOCTYPE html>");
        out.println("<html lang='ko'>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>상담 신청 테스트</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>상담 신청 API 테스트</h1>");
        out.println("<form method='post'>");
        out.println("<p>이름: <input type='text' name='name' required></p>");
        out.println("<p>연락처: <input type='tel' name='phone' required></p>");
        out.println("<p>채무액: <select name='debtAmount'>");
        out.println("<option value=''>선택하세요</option>");
        out.println("<option value='1000만원 미만'>1000만원 미만</option>");
        out.println("<option value='1000만원~3000만원'>1000만원~3000만원</option>");
        out.println("<option value='3000만원~5000만원'>3000만원~5000만원</option>");
        out.println("<option value='5000만원~1억원'>5000만원~1억원</option>");
        out.println("<option value='1억원 이상'>1억원 이상</option>");
        out.println("</select></p>");
        out.println("<p>월소득: <select name='income'>");
        out.println("<option value=''>선택하세요</option>");
        out.println("<option value='100만원 미만'>100만원 미만</option>");
        out.println("<option value='100만원~200만원'>100만원~200만원</option>");
        out.println("<option value='200만원~300만원'>200만원~300만원</option>");
        out.println("<option value='300만원~500만원'>300만원~500만원</option>");
        out.println("<option value='500만원 이상'>500만원 이상</option>");
        out.println("</select></p>");
        out.println("<p><input type='submit' value='상담 신청'></p>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }
}