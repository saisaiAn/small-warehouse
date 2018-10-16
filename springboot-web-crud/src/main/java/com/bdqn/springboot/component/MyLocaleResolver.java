package com.bdqn.springboot.component;


/*
* 可以在连接上携带区域信息
* */

import groovyjarjarantlr.StringUtils;
import org.springframework.web.servlet.LocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

public class MyLocaleResolver implements LocaleResolver{


    @Override
    public Locale resolveLocale(HttpServletRequest request) {
        String l = request.getParameter("l");
        System.out.println(l);
        Locale local = Locale.getDefault();
        if(!org.springframework.util.StringUtils.isEmpty(l)){
            String[] split = l.split("_");
            local = new Locale(split[0], split[1]);
        }
        return local;
    }

    @Override
    public void setLocale(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Locale locale) {

    }
}
