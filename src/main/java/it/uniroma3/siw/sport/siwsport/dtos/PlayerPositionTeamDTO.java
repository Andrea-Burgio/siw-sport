package it.uniroma3.siw.sport.siwsport.dtos;

import it.uniroma3.siw.sport.siwsport.entities.Team;
import it.uniroma3.siw.sport.siwsport.entities.enums.Position;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;

public interface PlayerPositionTeamDTO {
    String getName();
    String getLastName();
    Position getPosition();
    LocalDate getDateOfBirth();
    String getPlaceOfBirth();
    String getTeam();
}
