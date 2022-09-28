package com.portfolio.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.portfolio.demo")
public class MyPortfolioWebAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyPortfolioWebAppApplication.class, args);
	}

}
