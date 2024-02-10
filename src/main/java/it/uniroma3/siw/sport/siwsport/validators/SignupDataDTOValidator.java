package it.uniroma3.siw.sport.siwsport.validators;

import it.uniroma3.siw.sport.siwsport.dtos.SignupDataDTO;
import lombok.NonNull;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.time.LocalDate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class SignupDataDTOValidator implements Validator {
    private final JdbcUserDetailsManager jdbcUserDetailsManager;
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName() + "Logger");

    @Value("${SECRET_CODE}")
    private String secretCode;

    @Autowired
    public SignupDataDTOValidator(JdbcUserDetailsManager jdbcUserDetailsManager) {
        this.jdbcUserDetailsManager = jdbcUserDetailsManager;
    }

    @Override
    public boolean supports(@NonNull Class<?> aClass) {
        return SignupDataDTO.class.equals(aClass);
    }

    @Override
    public void validate(@NonNull Object o, @NonNull Errors errors) {
        Logger logger = LoggerFactory.getLogger("ValidationLogger");
        SignupDataDTO signupDataDTO = (SignupDataDTO) o;

        String username = signupDataDTO.getUsername();
        String password = signupDataDTO.getPassword();
        String firstName = signupDataDTO.getFirstName();
        String lastName = signupDataDTO.getLastName();
        LocalDate dateOfBirth = signupDataDTO.getDateOfBirth();
        String placeOfBirth = signupDataDTO.getPlaceOfBirth();
        String submittedCode = signupDataDTO.getSecretCode();
        String taxNumber = signupDataDTO.getTaxNumber();
        String role = signupDataDTO.getRole();


        Pattern pattern = Pattern.compile("[^a-zA-Z0-9.@#$_%&*-]");
        Matcher passwordMatcher = pattern.matcher(password);
        Matcher usernameMatcher = pattern.matcher(username);

        if (jdbcUserDetailsManager.userExists(username)) {
            logger.info("Username already exists");
            errors.rejectValue("username", "Username.Duplicate", "Username already exists");
        }

        if (password.length() < 5 || password.length() > 20 || passwordMatcher.find()) {
            logger.info("Invalid password");
            errors.rejectValue("password", "Password.Invalid", "Password must be 5 to 20 characters long. Accepted characters: @#$_%&*-");
        }

        if (usernameMatcher.find() || username.length()<3 || username.length()>20) {
            logger.info("Invalid username");
            errors.rejectValue("username", "Username.InvalidSymbols", "Invalid username. Accepted characters: @#$_%&*-");
        }

        if (!submittedCode.equals(secretCode)) {
            logger.info("Invalid secret code");
            errors.rejectValue("secretCode", "SecretCode.InvalidSecretCode", "Invalid secret code");
        }

        if (role==null){
            errors.rejectValue("role", "Role.Null", "Select a role");
        }
        else if (role.equals("president")){
            if (firstName.length() < 2 || firstName.length() > 50) {
                logger.info("Invalid name");
                errors.rejectValue("firstName", "FirstName.InvalidSize", "Insert a valid name");
            }


            if (lastName.length() < 2 || lastName.length() > 50) {
                logger.info("Invalid last name");
                errors.rejectValue("lastName", "LastName.InvalidSize", "Insert a valid last name");
            }


            if (taxNumber.length() != 9 || !taxNumber.matches("[a-zA-Z0-9]*")) {
                logger.info("Invalid tax number");
                errors.rejectValue("taxNumber", "TaxNumber.InvalidSize", "Insert a valid tax number. It must contain 9 digits");
            }

            if (dateOfBirth == null ||
                    dateOfBirth.isAfter(LocalDate.now().minusYears(21)) ||
                    dateOfBirth.isBefore(LocalDate.now().minusYears(85))) {
                logger.info("Invalid date");
                errors.rejectValue("dateOfBirth", "DateOfBirth.Invalid", "Insert a valid date");
            }

            if (placeOfBirth.length() < 2 || placeOfBirth.length() > 100) {
                logger.info("Invalid Place of birth");
                errors.rejectValue("placeOfBirth", "PlaceOfBirth.InvalidSize", "Insert a valid place of birth");
            }
        }
    }
}