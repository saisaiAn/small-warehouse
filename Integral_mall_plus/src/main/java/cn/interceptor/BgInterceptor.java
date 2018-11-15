package cn.interceptor;

import cn.bean.Emp;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BgInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse response, Object o) throws Exception {
        Emp empReturn = (Emp) httpServletRequest.getSession().getAttribute("loginUser");
        System.out.println("后台拦截器");
        if (empReturn==null||empReturn.equals("")){
            response.sendRedirect("/SSMDemo1/view");
           /* response.write("<script>window.parent.location.href='';</script>");*/
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
