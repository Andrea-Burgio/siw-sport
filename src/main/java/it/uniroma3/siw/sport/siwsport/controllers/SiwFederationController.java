package it.uniroma3.siw.sport.siwsport.controllers;

import it.uniroma3.siw.sport.siwsport.dtos.SignupDataDTO;
import it.uniroma3.siw.sport.siwsport.services.PresidentService;
import it.uniroma3.siw.sport.siwsport.validators.SignupDataDTOValidator;
import jakarta.validation.Valid;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.Set;

@Controller
@RequestMapping("/")
public class SiwFederationController {
    Validator signupDataDTOValidator;
    PresidentService presidentService;
    JdbcUserDetailsManager jdbcUserDetailsManager;
    PasswordEncoder passwordEncoder;

    public SiwFederationController(SignupDataDTOValidator signupDataDTOValidator, JdbcUserDetailsManager jdbcUserDetailsManager, PresidentService presidentService, PasswordEncoder passwordEncoder){
        this.signupDataDTOValidator = signupDataDTOValidator;
        this.presidentService = presidentService;
        this.jdbcUserDetailsManager =jdbcUserDetailsManager;
        this.passwordEncoder = passwordEncoder;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.setValidator(signupDataDTOValidator);
    }

    @GetMapping
    public String showHomePage() {
        return "index";
    }


    @GetMapping("/signup")
    public String showSignupPage(Model model){
        model.addAttribute("signupDataDTO", new SignupDataDTO());
        return "signup.html";
    }

    @PostMapping("/signup")
    public String signup(@Valid @ModelAttribute SignupDataDTO signupDataDTO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/signup";
        }
        else {

            Set<GrantedAuthority> authority = Collections.singleton(new SimpleGrantedAuthority(signupDataDTO.getRole()));

            UserDetails userDetails = new User(signupDataDTO.getUsername(), passwordEncoder.encode(signupDataDTO.getPassword()), authority);
            jdbcUserDetailsManager.createUser(userDetails);

            System.out.println(signupDataDTO.getRole());

            if (signupDataDTO.getRole().equals("ROLE_PRESIDENT")) {
                presidentService.createAndSavePresident(signupDataDTO);
            }

            return "redirect:/";
        }
    }
}
