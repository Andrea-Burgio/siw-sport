package it.uniroma3.siw.sport.siwsport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class SiwSportApplication {
    public static void main(String[] args) {
        SpringApplication.run(SiwSportApplication.class, args);
    }

}


