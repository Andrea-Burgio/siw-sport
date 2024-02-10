package it.uniroma3.siw.sport.siwsport.validators.Annotations;

import it.uniroma3.siw.sport.siwsport.validators.YearValidator;
import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = YearValidator.class)
@Target( { ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface PastOrPresentInteger {
        String message() default "Insert a valid year";

        Class<?>[] groups() default {};

        Class<? extends Payload>[] payload() default {};
}
