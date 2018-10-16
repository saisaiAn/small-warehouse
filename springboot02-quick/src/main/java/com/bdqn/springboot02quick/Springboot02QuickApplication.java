package com.bdqn.springboot02quick;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@ImportResource(value = "classpath:beans.xml")
@SpringBootApplication
public class Springboot02QuickApplication {

	public static void main(String[] args) {

		SpringApplication.run(Springboot02QuickApplication.class, args);
	}
}
