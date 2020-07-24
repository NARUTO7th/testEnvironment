package com.testEnvironment.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class employeeFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        request.setCharacterEncoding ("UTF-8");
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String servletPath = request.getServletPath ();
        String contextPath = request.getContextPath ();
        System.out.println ("This is filter: " + servletPath);

        if (servletPath.contains ("employee") || servletPath.contains ("index.jsp") || servletPath.contains ("error.jsp")) {
            filterChain.doFilter (request, response);
        } else {
            HttpSession session = request.getSession ();
            Object username = session.getAttribute ("name");
            if (username == null) {
                session.setAttribute ("msg", "非法登录！");
                response.sendRedirect (contextPath + "/error.jsp");
            } else {
                filterChain.doFilter (request, response);
            }
        }
    }

    @Override
    public void destroy() {
    }
}
