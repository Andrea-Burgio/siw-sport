package it.uniroma3.siw.sport.siwsport.aspects;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Component
@Aspect
public class LoggingAspect {
    private final Logger logger = LoggerFactory.getLogger("Logger");


    @Around("execution(* it.uniroma3.siw.sport.siwsport.*.*.*(..))")
    public Object logClassesAndMethods(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        List<Object> args = Arrays.asList(proceedingJoinPoint.getArgs());

        List<String> argsTypes = new ArrayList<>();
        for (Object arg : args) {
            if (arg != null) {
                argsTypes.add(arg.getClass().getSimpleName());
            }
        }

        String className = proceedingJoinPoint.getTarget().getClass().getSimpleName();
        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
        String method = methodSignature.getReturnType().getSimpleName() + " " + methodSignature.getName() + "(" + argsTypes + ")";

        logger.info("Class: " + className + ".  " +
                        "Invoking: " + method + ".  " +
                        "Args: " + args
        );
        Object o = proceedingJoinPoint.proceed();
        if (o != null) {
            logger.info("Return: " + o.toString());
        } else {
            logger.info("Return: null");
        }
        return o;
    }

    @Around("execution(* it.uniroma3.siw.sport.siwsport.validators.SignupDataDTOValidator.validate(..))")
    public void logCredentialsValidation(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        logger.info("Starting validation");
        proceedingJoinPoint.proceed();
        logger.info("Validation Completed");
    }
}
