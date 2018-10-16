package cn.hcfy.Test;

import cn.hcfy.dao.UserMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    public static void main(String[] args) {

        //加载xml文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        UserMapper mapper = (UserMapper) ac.getBean("UserMapper");

        System.out.println(mapper);
    }
}
