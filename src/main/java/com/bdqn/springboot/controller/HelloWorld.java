package com.bdqn.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class HelloWorld {

    @ResponseBody
    @RequestMapping("/hello")
    public String Hello(){

        System.out.println("helloworld");
        return "Hello World";
    }

    @RequestMapping("/success")
    public String success(Map<String,Object> map){
        map.put("hello","<h1>你好</h1>");

        return "success";
    }

}
