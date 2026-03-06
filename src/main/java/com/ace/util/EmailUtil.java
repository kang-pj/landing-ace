package com.ace.util;

import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class EmailUtil {
    
    private static Properties emailProps;
    
    static {
        emailProps = new Properties();
        try (InputStream input = EmailUtil.class.getResourceAsStream("/email.properties")) {
            if (input != null) {
                emailProps.load(input);
                System.out.println("이메일 설정 로드 완료");
            } else {
                System.err.println("email.properties 파일을 찾을 수 없습니다.");
            }
        } catch (IOException e) {
            System.err.println("이메일 설정 로드 실패: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    public static void sendConsultationEmail(String name, String phone, String debtAmount, 
                                            String monthlyIncome, String source, String message) {
        
        System.out.println("=== 이메일 발송 시작 ===");
        
        // SMTP 설정
        Properties props = new Properties();
        props.put("mail.smtp.host", emailProps.getProperty("mail.smtp.host"));
        props.put("mail.smtp.port", emailProps.getProperty("mail.smtp.port"));
        props.put("mail.smtp.auth", emailProps.getProperty("mail.smtp.auth"));
        props.put("mail.smtp.starttls.enable", emailProps.getProperty("mail.smtp.starttls.enable"));
        props.put("mail.smtp.ssl.protocols", emailProps.getProperty("mail.smtp.ssl.protocols"));
        
        // 인증 정보
        final String username = emailProps.getProperty("mail.sender.email");
        final String password = emailProps.getProperty("mail.sender.password");
        
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        
        // 수신자 목록
        String recipients = emailProps.getProperty("mail.recipients");
        String[] recipientArray = recipients.split(",");
        
        // 각 수신자에게 개별 발송
        for (String recipient : recipientArray) {
            try {
                Message emailMessage = new MimeMessage(session);
                
                // 발신자 (이메일 주소만)
                emailMessage.setFrom(new InternetAddress(username));
                
                // 수신자 (개별)
                emailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient.trim()));
                
                // 제목
                String subject = "[상담신청] " + name + "님의 상담 문의";
                emailMessage.setSubject(subject);
                
                // 내용 (HTML)
                String htmlContent = buildEmailContent(name, phone, debtAmount, monthlyIncome, source, message);
                emailMessage.setContent(htmlContent, "text/html; charset=UTF-8");
                
                // 발송
                Transport.send(emailMessage);
                
                System.out.println("이메일 발송 성공: " + recipient.trim());
                
            } catch (Exception e) {
                System.err.println("이메일 발송 실패 (" + recipient.trim() + "): " + e.getMessage());
                e.printStackTrace();
            }
        }
    }
    
    private static String buildEmailContent(String name, String phone, String debtAmount, 
                                           String monthlyIncome, String source, String message) {
        
        StringBuilder html = new StringBuilder();
        html.append("<!DOCTYPE html>");
        html.append("<html>");
        html.append("<head>");
        html.append("<meta charset='UTF-8'>");
        html.append("<style>");
        html.append("body { font-family: 'Malgun Gothic', sans-serif; line-height: 1.6; color: #333; background: #f5f5f5; margin: 0; padding: 20px; }");
        html.append(".container { max-width: 600px; margin: 0 auto; background: white; }");
        html.append(".header { background: linear-gradient(135deg, #4865FF 0%, #667EEA 100%); color: white; padding: 30px; text-align: center; }");
        html.append(".header h1 { margin: 0; font-size: 24px; font-weight: bold; }");
        html.append(".header p { margin: 10px 0 0 0; font-size: 14px; opacity: 0.9; }");
        html.append(".content { padding: 30px; }");
        html.append(".section { margin-bottom: 25px; }");
        html.append(".section-title { font-size: 16px; font-weight: bold; color: #4865FF; margin-bottom: 15px; padding-bottom: 8px; border-bottom: 2px solid #4865FF; }");
        html.append(".info-table { width: 100%; border-collapse: collapse; }");
        html.append(".info-table td { padding: 12px 15px; border-bottom: 1px solid #eee; }");
        html.append(".info-table td:first-child { font-weight: bold; color: #666; width: 140px; background: #f9f9f9; }");
        html.append(".info-table td:last-child { color: #333; }");
        html.append(".info-table tr:last-child td { border-bottom: none; }");
        html.append(".message-box { background: #fff9e6; border-left: 4px solid #ffc107; padding: 15px; margin: 15px 0; }");
        html.append(".message-box strong { color: #f57c00; display: block; margin-bottom: 8px; }");
        html.append(".footer { background: #f9f9f9; padding: 20px; text-align: center; color: #999; font-size: 12px; border-top: 1px solid #eee; }");
        html.append(".footer p { margin: 5px 0; }");
        html.append("</style>");
        html.append("</head>");
        html.append("<body>");
        html.append("<div class='container'>");
        
        // 헤더
        html.append("<div class='header'>");
        html.append("<h1>새로운 상담 신청</h1>");
        html.append("<p>에이스 법률사무소</p>");
        html.append("</div>");
        
        // 내용
        html.append("<div class='content'>");
        
        // 신청자 정보
        html.append("<div class='section'>");
        html.append("<div class='section-title'>신청자 정보</div>");
        html.append("<table class='info-table'>");
        html.append("<tr><td>이름</td><td>").append(name != null ? name : "-").append("</td></tr>");
        html.append("<tr><td>연락처</td><td>").append(phone != null ? phone : "-").append("</td></tr>");
        
        if (debtAmount != null && !debtAmount.trim().isEmpty()) {
            html.append("<tr><td>채무액</td><td>").append(debtAmount).append("</td></tr>");
        }
        
        if (monthlyIncome != null && !monthlyIncome.trim().isEmpty()) {
            html.append("<tr><td>월소득</td><td>").append(monthlyIncome).append("</td></tr>");
        }
        
        if (source != null && !source.trim().isEmpty()) {
            html.append("<tr><td>신청 경로</td><td>").append(source).append("</td></tr>");
        }
        
        html.append("</table>");
        html.append("</div>");
        
        // 추가 메시지
        if (message != null && !message.trim().isEmpty()) {
            html.append("<div class='section'>");
            html.append("<div class='section-title'>추가 메시지</div>");
            html.append("<div class='message-box'>");
            html.append("<strong>고객 메시지:</strong>");
            html.append(message.replace("\n", "<br>"));
            html.append("</div>");
            html.append("</div>");
        }
        
        // 접수 정보
        html.append("<div class='section'>");
        html.append("<div class='section-title'>접수 정보</div>");
        html.append("<table class='info-table'>");
        html.append("<tr><td>접수 일시</td><td>").append(java.time.LocalDateTime.now().format(java.time.format.DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH:mm:ss"))).append("</td></tr>");
        html.append("<tr><td>처리 상태</td><td>신규 접수 (미처리)</td></tr>");
        html.append("</table>");
        html.append("</div>");
        
        html.append("</div>");
        
        // 푸터
        html.append("<div class='footer'>");
        html.append("<p>이 메일은 에이스 법률사무소 홈페이지에서 자동 발송되었습니다.</p>");
        html.append("<p>Copyright 2024 에이스 법률사무소. All rights reserved.</p>");
        html.append("</div>");
        
        html.append("</div>");
        html.append("</body>");
        html.append("</html>");
        
        return html.toString();
    }
}
