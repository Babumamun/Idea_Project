package com.nsu.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url=request.getRequestURI();
        if(url.contains("/tologin")|| url.contains("/mylogin"))
            return true;
        HttpSession session=request.getSession();
        Object obj=session.getAttribute("user");
        if(obj!=null)
            return true;
        request.getRequestDispatcher("/WEB-INF/jsp/login/login.jsp").forward(request,response);
        return false;
    }
}
