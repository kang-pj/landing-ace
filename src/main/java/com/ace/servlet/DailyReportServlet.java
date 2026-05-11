package com.ace.servlet;

import com.ace.batch.DailyReportScheduler;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.lang.reflect.Method;

/**
 * 일일 리포트 수동 실행용 (테스트/긴급 확인용)
 * GET /api/daily-report 로 호출하면 즉시 리포트 발송
 */
@WebServlet("/api/daily-report")
public class DailyReportServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json; charset=UTF-8");

        try {
            DailyReportScheduler scheduler = new DailyReportScheduler();
            // sendDailyReport는 private이므로 리플렉션으로 호출
            Method method = DailyReportScheduler.class.getDeclaredMethod("sendDailyReport");
            method.setAccessible(true);
            method.invoke(scheduler);

            response.getWriter().write("{\"success\":true,\"message\":\"일일 리포트 발송 완료\"}");
        } catch (Exception e) {
            response.setStatus(500);
            response.getWriter().write("{\"success\":false,\"error\":\"" + e.getMessage() + "\"}");
        }
    }
}
