package com.gabrielvicente.dockerspringboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DockerspringbootApplication {

	@GetMapping("/")
	public String index() {
		return "Ola mundo Docker";
	}

	public static void main(String[] args) {
		SpringApplication.run(DockerspringbootApplication.class, args);
	}

}
