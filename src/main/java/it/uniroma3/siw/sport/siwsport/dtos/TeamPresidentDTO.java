package it.uniroma3.siw.sport.siwsport.dtos;

import it.uniroma3.siw.sport.siwsport.validators.Annotations.PastOrPresentInteger;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TeamPresidentDTO {
    private Long teamId;
    private Long presidentId;

    @Size(min = 2, max = 50, message = "Insert a valid name")
    private String teamName;

    @Size(min = 2, max = 50, message = "Insert a valid name")
    private String president;

    @Min(value = 1800)
    @PastOrPresentInteger
    private Integer foundationYear;

    @Size(min = 3, max = 150, message = "Insert a valid address")
    private String officeAddress;

    @Override
    public String toString() {
        return "TeamPresidentDTO{" +
                "teamId=" + (teamId == null ? "null" : teamId) +
                ", presidentId=" + (presidentId == null ? "null" : presidentId) +
                ", teamName='" + (teamName == null ? "null" : teamName) + '\'' +
                ", president='" + (president == null ? "null" : president) + '\'' +
                ", foundationYear=" + (foundationYear == null ? "null" : foundationYear) +
                ", officeAddress='" + (officeAddress == null ? "null" : officeAddress) + '\'' +
                '}';
    }

}
