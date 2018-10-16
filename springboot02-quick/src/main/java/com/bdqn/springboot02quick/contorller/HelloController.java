package com.bdqn.springboot02quick.contorller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@ResponseBody
@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String hello(){

        System.out.println("hello world");
        return "helloWOrld";
    }

}
