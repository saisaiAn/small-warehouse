package com.bdqn.springboot.config;


import com.bdqn.springboot.component.LoginHandlerInterceptor;
import com.bdqn.springboot.component.MyLocaleResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

//@EnableWebMvc
@Configuration
public class myMvcConfig extends WebMvcConfigurerAdapter {

    //所有WebMvcConfigurerAdapter组件一起起作用
    @Bean//将组件注册在容器
    public WebMvcConfigurerAdapter WebMvcConfigurerAdapter(){
        WebMvcConfigurerAdapter adapter = new WebMvcConfigurerAdapter() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
                registry.addViewController("/").setViewName("login");
                registry.addViewController("/login.html").setViewName("login");
                registry.addViewController("index.html").setViewName("login");
                registry.addViewController("main.html").setViewName("dashboard");
            }
            //注册拦截器
            @Override
            public void addInterceptors(InterceptorRegistry registry) {
               // super.addInterceptors(registry);
                registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/**")
                 .excludePathPatterns("/index.html","/","/user/login","/login.html");
            }
        };
        return adapter;
    }

    @Bean
    public LocaleResolver localeResolver(){
        return new MyLocaleResolver();
    }

}
