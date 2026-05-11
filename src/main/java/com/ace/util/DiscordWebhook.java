package com.ace.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Properties;

/**
 * 디스코드 웹훅 알림 유틸리티
 * 
 * 사용 예시:
 *   DiscordWebhook.sendConsultation("홍길동", "01012345678", "5천만원~1억원");
 *   DiscordWebhook.sendError("DB 연결 실패", exception);
 *   DiscordWebhook.sendSystem("서버 시작됨");
 */
public class DiscordWebhook {

    private static final Properties props = new Properties();
    private static boolean enabled = false;

    static {
        try (InputStream input = DiscordWebhook.class.getResourceAsStream("/discord.properties")) {
            if (input != null) {
                props.load(input);
                enabled = "true".equalsIgnoreCase(props.getProperty("discord.enabled", "false"));
                System.out.println("Discord webhook initialized. enabled=" + enabled);
            } else {
                System.err.println("discord.properties not found");
            }
        } catch (IOException e) {
            System.err.println("Failed to load discord.properties: " + e.getMessage());
        }
    }

    // ===== 상담 신청 알림 =====
    public static void sendConsultation(String name, String phone, String debtAmount) {
        sendConsultation(name, phone, debtAmount, null, null);
    }

    public static void sendConsultation(String name, String phone, String debtAmount, 
                                         String income, String source) {
        StringBuilder desc = new StringBuilder();
        desc.append("**이름:** ").append(name).append("\n");
        desc.append("**연락처:** ").append(maskPhone(phone)).append("\n");
        
        if (debtAmount != null && !debtAmount.isEmpty()) {
            desc.append("**채무액:** ").append(debtAmount).append("\n");
        }
        if (income != null && !income.isEmpty()) {
            desc.append("**월소득:** ").append(income).append("\n");
        }
        if (source != null && !source.isEmpty()) {
            desc.append("**유입경로:** ").append(source).append("\n");
        }

        String payload = buildEmbed(
            "📋 새 상담 신청",
            desc.toString(),
            0x3498DB  // 파란색
        );

        sendAsync("consultation", payload);
    }

    // ===== 에러 알림 =====
    public static void sendError(String message, Exception e) {
        StringBuilder desc = new StringBuilder();
        desc.append("**메시지:** ").append(message).append("\n");
        
        if (e != null) {
            desc.append("**예외:** ").append(e.getClass().getSimpleName()).append("\n");
            desc.append("**상세:** ").append(truncate(e.getMessage(), 500)).append("\n");
            
            // 스택트레이스 첫 3줄
            StackTraceElement[] stack = e.getStackTrace();
            if (stack.length > 0) {
                desc.append("```\n");
                for (int i = 0; i < Math.min(3, stack.length); i++) {
                    desc.append(stack[i].toString()).append("\n");
                }
                desc.append("```");
            }
        }

        String payload = buildEmbed(
            "🚨 에러 발생",
            desc.toString(),
            0xE74C3C  // 빨간색
        );

        sendAsync("error", payload);
    }

    public static void sendError(String message) {
        sendError(message, null);
    }

    // ===== 시스템 알림 =====
    public static void sendSystem(String message) {
        String payload = buildEmbed(
            "⚙️ 시스템 알림",
            message,
            0x2ECC71  // 초록색
        );

        sendAsync("system", payload);
    }

    // ===== 커스텀 알림 =====
    public static void send(String channel, String title, String message, int color) {
        String payload = buildEmbed(title, message, color);
        sendAsync(channel, payload);
    }

    // ===== 내부 메서드 =====

    private static String buildEmbed(String title, String description, int color) {
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        
        // JSON 수동 생성 (외부 라이브러리 없이)
        StringBuilder json = new StringBuilder();
        json.append("{\"embeds\":[{");
        json.append("\"title\":\"").append(escapeJson(title)).append("\",");
        json.append("\"description\":\"").append(escapeJson(description)).append("\",");
        json.append("\"color\":").append(color).append(",");
        json.append("\"footer\":{\"text\":\"").append(escapeJson(timestamp)).append("\"}");
        json.append("}]}");
        
        return json.toString();
    }

    private static void sendAsync(String channel, String payload) {
        if (!enabled) {
            System.out.println("[Discord] Disabled. channel=" + channel);
            return;
        }

        String webhookUrl = props.getProperty("discord.webhook." + channel);
        if (webhookUrl == null || webhookUrl.contains("YOUR_WEBHOOK")) {
            System.out.println("[Discord] Webhook not configured for channel: " + channel);
            return;
        }

        // 비동기 전송
        new Thread(() -> {
            try {
                send(webhookUrl, payload);
            } catch (Exception e) {
                System.err.println("[Discord] Failed to send: " + e.getMessage());
            }
        }).start();
    }

    private static void send(String webhookUrl, String payload) throws IOException {
        URL url = new URL(webhookUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        conn.setDoOutput(true);
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);

        try (OutputStream os = conn.getOutputStream()) {
            os.write(payload.getBytes(StandardCharsets.UTF_8));
        }

        int responseCode = conn.getResponseCode();
        if (responseCode < 200 || responseCode >= 300) {
            System.err.println("[Discord] HTTP " + responseCode + " for webhook");
        }
        
        conn.disconnect();
    }

    private static String escapeJson(String str) {
        if (str == null) return "";
        return str.replace("\\", "\\\\")
                  .replace("\"", "\\\"")
                  .replace("\n", "\\n")
                  .replace("\r", "\\r")
                  .replace("\t", "\\t");
    }

    private static String maskPhone(String phone) {
        if (phone == null || phone.length() < 8) return phone;
        return phone.substring(0, 3) + "****" + phone.substring(phone.length() - 4);
    }

    private static String truncate(String str, int maxLen) {
        if (str == null) return "null";
        if (str.length() <= maxLen) return str;
        return str.substring(0, maxLen) + "...";
    }
}
