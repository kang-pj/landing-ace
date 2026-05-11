package com.ace.servlet;

import com.ace.util.DiscordWebhook;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * 디스코드 웹훅 테스트용 서블릿
 * 브라우저에서 /api/discord-test?channel=test 로 호출
 */
@WebServlet("/api/discord-test")
public class DiscordTestServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json; charset=UTF-8");
        PrintWriter out = response.getWriter();

        String channel = request.getParameter("channel");
        if (channel == null) channel = "all";

        try {
            switch (channel) {
                case "test":
                    DiscordWebhook.send("test", "✅ 테스트 알림", "테스트 메시지입니다.", 0x3498DB);
                    out.print("{\"success\":true,\"sent\":\"test\"}");
                    break;

                case "error":
                    DiscordWebhook.sendError("테스트 에러 알림", new RuntimeException("이것은 테스트 에러입니다"));
                    out.print("{\"success\":true,\"sent\":\"error\"}");
                    break;

                case "consultation":
                    DiscordWebhook.sendConsultation("홍길동", "01012345678", "5천만원~1억원", "250만원~350만원", "메인페이지");
                    out.print("{\"success\":true,\"sent\":\"consultation\"}");
                    break;

                case "report":
                    DiscordWebhook.send("report", "📊 일일보고 테스트", 
                        "**오늘의 상담 신청:** 5건\n**방문자 수:** 128명\n**전환율:** 3.9%", 0xF39C12);
                    out.print("{\"success\":true,\"sent\":\"report\"}");
                    break;

                case "system":
                    DiscordWebhook.sendSystem("서버 헬스체크 정상 동작 중");
                    out.print("{\"success\":true,\"sent\":\"system\"}");
                    break;

                case "all":
                default:
                    DiscordWebhook.send("test", "✅ 테스트 알림", "전체 채널 테스트 중...", 0x3498DB);
                    DiscordWebhook.sendError("테스트 에러", new RuntimeException("테스트용 에러"));
                    DiscordWebhook.sendConsultation("테스트", "01000000000", "1천만원 미만", "150만원 미만", "테스트");
                    DiscordWebhook.send("report", "📊 일일보고 테스트", "테스트 리포트입니다.", 0xF39C12);
                    out.print("{\"success\":true,\"sent\":\"all\"}");
                    break;
            }
        } catch (Exception e) {
            out.print("{\"success\":false,\"error\":\"" + e.getMessage() + "\"}");
        }
    }
}
