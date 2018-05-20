package com.hfcsbc.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Enumeration;

public class LogFilter implements Filter {

    private Logger logger = LoggerFactory.getLogger(LogFilter.class);

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
            FilterChain filterChain) throws IOException, ServletException {
        logger.warn(getLog((HttpServletRequest)servletRequest));
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }

    private String getLog(HttpServletRequest request) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("A request coming:::::::::::::::::::::::::::::::::::\n");
        stringBuffer.append("requestURL: " + request.getRequestURL() + "\n");
        stringBuffer.append("remoteAddr: " + request.getRemoteAddr() + "\n");

        Enumeration<String> headerNames = request.getHeaderNames();
        while(headerNames.hasMoreElements()) {
            String header = headerNames.nextElement();
            stringBuffer.append(header).append(": ").append(request.getHeader(header)).append("\n");
        }
        stringBuffer.append(":::::::::::::::::::::::::::::::::::::::::::::::::::\n");
        return stringBuffer.toString();
    }
}
