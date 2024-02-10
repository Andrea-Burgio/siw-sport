package it.uniroma3.siw.sport.siwsport.services;

import it.uniroma3.siw.sport.siwsport.entities.Registration;
import it.uniroma3.siw.sport.siwsport.entities.Team;
import it.uniroma3.siw.sport.siwsport.entities.enums.Position;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class RegistrationService {

    TeamService teamService;

    public RegistrationService(TeamService teamService){
        this.teamService = teamService;
    }

    public List<Registration> createRegistrationsFromRegistrationFields(Map<String, String> fields) {
        List<Registration> registrations = new ArrayList<>();
        List<String> errors = new ArrayList<>();

        // Each Registration has 4 fields. Iterate over each group and create a Registration
        for (int i = 0; i < fields.size()/4; i++) {
            try {

                Position position = Position.valueOf(fields.get("position" + i));

                Optional<Team> team = teamService.findByName(fields.get("team" + i));
                if (team.isEmpty()) {
                    //TODO: throw exception
                }

                LocalDate startDate = LocalDate.parse(fields.get("startDate" + i));
                LocalDate endDate = LocalDate.parse(fields.get("endDate" + i));

                Registration registration = Registration.builder()
                                .position(position)
                                .team(team.get())
                                .startDate(startDate)
                                .endDate(endDate)
                                .build();

                registrations.add(registration);
            } catch (Exception e) {
                // TODO: handle exceptions
            }
        }

        return registrations;
    }
}
