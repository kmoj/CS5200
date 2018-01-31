package edu.northeastern.cs5200;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
@EnableJpaRepositories("edu.neu.cs5200.controllers.hello")
@EntityScan("edu.neu.cs5200.controllers.hello")
@ComponentScan(basePackages = { "edu.neu.cs5200.controllers.hello" })
public class Cs5200Spring2018ZhangApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder 
	 configure(SpringApplicationBuilder application) {
		return application.sources(Cs5200Spring2018ZhangApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(Cs5200Spring2018ZhangApplication.class, args);
	}
}
