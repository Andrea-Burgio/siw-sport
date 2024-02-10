package it.uniroma3.siw.sport.siwsport.dtos;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class SignupDataDTO {
    private String role;
    private String secretCode;
    private String username;
    private String password;

    private String firstName;
    private String lastName;
    private String taxNumber;
    private LocalDate dateOfBirth;
    private String placeOfBirth;

    @Override
    public String toString() {
        String value = "Role: " + (role!=null ? role : "null") +
                       ", Username: " + (username!=null ? username : "null");

        if (role != null && role.equals("administrator")) {
            return value;
        } else {
            return value +
                    ", FirstName: " + (firstName!=null ? firstName : "null") +
                    ", LastName: " + (lastName!=null ? lastName : "null") +
                    ", TaxNumber: " + (taxNumber!=null ? taxNumber : "null") +
                    ", DateOfBirth: " + (dateOfBirth!=null ? dateOfBirth.toString() : "null") +
                    ", PlaceOfBirth: " + (placeOfBirth!=null ? placeOfBirth : "null");
        }
    }
}