package com.omercodes.fantasygeniebackend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class FantasygeniebackendApplication {

	public static void main(String[] args) {

	        Dotenv.configure().load();

		SpringApplication.run(FantasygeniebackendApplication.class, args);
	}


}
