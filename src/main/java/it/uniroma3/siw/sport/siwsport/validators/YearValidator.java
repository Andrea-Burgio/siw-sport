package it.uniroma3.siw.sport.siwsport.validators;

import it.uniroma3.siw.sport.siwsport.validators.Annotations.PastOrPresentInteger;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.time.Year;

public class YearValidator implements ConstraintValidator<PastOrPresentInteger, Integer> {

    @Override
    public boolean isValid(Integer year, ConstraintValidatorContext constraintValidatorContext) {
        return year != null && year <= Year.now().getValue();
    }
}
