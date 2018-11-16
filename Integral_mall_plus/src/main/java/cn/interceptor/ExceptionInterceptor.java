package cn.interceptor;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;

//@ControllerAdvice表示本工程的所有异常都由ExceptionInterceptor处理
@ControllerAdvice
public class ExceptionInterceptor {
    //@ExceptionHandler表所该注解绑定的方法专门用于处理异常
    @ExceptionHandler
    public String handlerException(HttpServletRequest request, Exception e){
        request.setAttribute("errorMsg", e.getMessage());
        return "/error";
    }
}
