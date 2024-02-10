package it.uniroma3.siw.sport.siwsport.entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.time.LocalDate;
import java.util.Objects;

@Entity
@NoArgsConstructor @AllArgsConstructor
@Getter @Setter
@Builder
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class President {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 2, max = 50, message = "Insert a valid name")
    private String name;

    @Size(min = 2, max = 50, message = "Insert a valid last name")
    private String lastName;

    @Size(min = 9, max = 9, message = "The tax number must contain 9 digits")
    private String taxNumber;

    @NotNull
    @Past(message = "Insert a valid date")
    private LocalDate dateOfBirth;

    @Size(min = 2, max = 100, message = "Insert a valid place")
    private String placeOfBirth;

    @OneToOne
    private Team team;

    @Size(min = 3, max = 20, message = "Username must be between 3 and 20 characters")
    String username;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        President president = (President) o;
        return Objects.equals(name, president.name) && Objects.equals(lastName, president.lastName) && Objects.equals(taxNumber, president.taxNumber) && Objects.equals(dateOfBirth, president.dateOfBirth) && Objects.equals(placeOfBirth, president.placeOfBirth);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, lastName, taxNumber, dateOfBirth, placeOfBirth);
    }

    @Override
    public String toString() {
        return "President{" + name + " " + lastName +"}";
    }
}