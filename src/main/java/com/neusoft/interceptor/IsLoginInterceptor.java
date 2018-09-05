package com.neusoft.interceptor;

import com.neusoft.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IsLoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        User user = (User) httpServletRequest.getSession().getAttribute("user");
        if (user == null){
            if ("ajax".equals(httpServletRequest.getHeader("request-with"))|| "XMLHttpRequest".equals(httpServletRequest.getHeader("X-Requested-With"))){
                httpServletResponse.setHeader("redirect","/register_login/login");
            }else {
                httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"register_login/login");
            }
            return false;
        }else{
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
