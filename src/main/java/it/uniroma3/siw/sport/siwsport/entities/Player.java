package it.uniroma3.siw.sport.siwsport.entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

@Entity
@NoArgsConstructor @AllArgsConstructor
@Getter @Setter
@Builder
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 2, max = 50, message = "Insert a valid name")
    private String name;

    @Pattern(regexp = "[^a-b]")
    @Size(min = 2, max = 50, message = "Insert a valid last name")
    private String lastName;

    @Past(message = "Insert a valid date of birth")
    @NotNull
    private LocalDate dateOfBirth;

    @Size(min = 2, max = 100, message = "Insert a valid place")
    private String placeOfBirth;

    @OneToMany(mappedBy = "player")
    @NotNull
    private List<Registration> registrations;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Player player = (Player) o;
        return Objects.equals(name, player.name) && Objects.equals(lastName, player.lastName) && Objects.equals(dateOfBirth, player.dateOfBirth) && Objects.equals(placeOfBirth, player.placeOfBirth) && Objects.equals(registrations, player.registrations);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, lastName, dateOfBirth, placeOfBirth);
    }

    @Override
    public String toString() {
        return "Player{" + name + " " + lastName + "}";
    }
}