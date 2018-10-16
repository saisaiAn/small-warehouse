package com.bdqn.springboot.component;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
* 登陆检查 拦截器
* */
public class LoginHandlerInterceptor implements HandlerInterceptor {

    //目标方法执行之前
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        Object username = request.getSession().getAttribute("loginuser");
        //System.out.println(username);
        if(username==null){
            //未登录
            System.out.println("未登录");
            request.setAttribute("msg","没有权限，请登录");
            request.getRequestDispatcher("login.html").forward(request,response);
            return false;
        }else{
            //以登陆
            System.out.println("一登陆");
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
