package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class KubernetesDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(KubernetesDemoApplication.class, args);
	}

	@RestController
	class Endpoint {

		@GetMapping("/sayHello")
		public String sayHello(@RequestParam("name") String name) {

			return "Hello " + name + "! Welcome to the kubernetes world!";
		}

	}

}
