package it.uniroma3.siw.sport.siwsport.entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import it.uniroma3.siw.sport.siwsport.validators.Annotations.PastOrPresentInteger;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;
import org.hibernate.validator.constraints.Range;

import java.util.List;
import java.util.Objects;

@Entity
@NoArgsConstructor @AllArgsConstructor
@Getter @Setter
@Builder
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 2, max = 50, message = "Insert a valid name")
    private String name;

    @Min(value = 1800)
    @PastOrPresentInteger
    private Integer foundationYear;

    @Size(min = 3, max = 150, message = "Insert a valid address")
    private String officeAddress;

    @OneToOne(mappedBy = "team")
    @NotNull
    private President president;

    @OneToMany(mappedBy = "team")
    private List<Registration> registrations;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Team team = (Team) o;
        return Objects.equals(name, team.name) && Objects.equals(foundationYear, team.foundationYear) && Objects.equals(officeAddress, team.officeAddress) && Objects.equals(president, team.president) && Objects.equals(registrations, team.registrations);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, foundationYear, officeAddress, president, registrations);
    }

    @Override
    public String toString() {
        return "Team{" + name + "}";
    }
}