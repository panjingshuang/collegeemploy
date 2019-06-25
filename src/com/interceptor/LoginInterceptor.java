package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        if (url.indexOf("/college/login") >= 0 || url.indexOf("/enterprise/login") >= 0) {
            return true;
        }
        //获取session数据
        HttpSession session = request.getSession();
        try {
            Object object = session.getAttribute("user");
            if (object != null) {
                return true;
            } else {
                //返回到入口页面
            }
        } catch (Exception e) {
            //如果获取不到数据就返回到入口
            request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
        }

        return false;

    }
}
