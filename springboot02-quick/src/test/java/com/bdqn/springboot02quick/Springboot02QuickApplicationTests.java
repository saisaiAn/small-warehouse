package com.bdqn.springboot02quick;

import com.bdqn.springboot02quick.bean.Person;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.junit4.SpringRunner;
/*
* springboot 单元测试
*
* 可以在测试期间很方便的类似编码一样自动注入等容器功能
* */
@RunWith(SpringRunner.class)
@SpringBootTest
public class Springboot02QuickApplicationTests {
	@Autowired
	Person person;

	@Autowired
	ApplicationContext ioc;

	//记录器
	Logger logger = LoggerFactory.getLogger(getClass());

	@Test
	public void helloServies(){
		boolean b = ioc.containsBean("helloServies");
		//System.out.println(b);
		//日志的级别
		logger.trace("trace");
		logger.debug("debug");
		logger.info("info");
		logger.warn("warn");
		logger.error("error");
	}

	@Test
	public void contextLoads() {
		System.out.println(person);
		System.out.println("狗名字:"+person.getDog().getName());
	}

}
