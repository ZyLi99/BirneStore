package com.study.myfilter;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("进入了过滤器");
        HttpServletRequest req = (HttpServletRequest)servletRequest;
        String pathInfo = req.getRequestURI();

        if (pathInfo.contains("login") || pathInfo.contains("static")|| pathInfo.contains("rigister")) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        HttpSession session = req.getSession();
        //有对应的setSession 这里的user1是自定义的
        Object userInfo = session.getAttribute("user1");
        if (userInfo == null) {
            HttpServletResponse rsp = (HttpServletResponse) servletResponse;
            rsp.sendRedirect("/login.jsp");
        } else {
        // 如果登录了， 则正常继续
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
