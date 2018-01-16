package edu.northeastern.cs5200;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"edu.neu.cs5200.controllers.hello"})
public class Cs5200Spring2018ZhangApplication {

	public static void main(String[] args) {
		SpringApplication.run(Cs5200Spring2018ZhangApplication.class, args);
	}
}
