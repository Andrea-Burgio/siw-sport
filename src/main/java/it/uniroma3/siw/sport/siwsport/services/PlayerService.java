package it.uniroma3.siw.sport.siwsport.services;

import it.uniroma3.siw.sport.siwsport.dtos.PlayerPositionDTO;
import it.uniroma3.siw.sport.siwsport.dtos.PlayerPositionTeamDTO;
import it.uniroma3.siw.sport.siwsport.entities.Player;
import it.uniroma3.siw.sport.siwsport.entities.Team;
import it.uniroma3.siw.sport.siwsport.entities.enums.Position;
import it.uniroma3.siw.sport.siwsport.repositories.PlayerRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.*;

@Service
public class PlayerService {
    private final PlayerRepository playerRepository;
    private final RegistrationService registrationService;

    @Autowired
    public PlayerService(PlayerRepository playerRepository, RegistrationService registrationService){
        this.playerRepository = playerRepository;
        this.registrationService = registrationService;
    }

    @Transactional
    public Iterable<PlayerPositionDTO> getPlayerPositionDTOsByTeamId(Long teamId){
        return playerRepository.getPlayerPositionDTOsByTeamId(teamId);
    }

    @Transactional
    public Iterable<PlayerPositionTeamDTO> getPlayerPositionDTOsByTeamId(){
        return playerRepository.getPlayerPlayerPositionTeamDTO();
    }



    public List<String> createPlayerFromStringValues(String name, String lastName, String birthDateString, String birthPlace, Map<String, String> registrationFields) {
        List<String> errors = new ArrayList<>();

        Player player = new Player();


        if (name == null || name.length() < 2 || name.length() > 50) {
            errors.add("Name must be between 2 and 50 characters");
        } else {
            player.setName(name);
        }


        if (lastName == null || lastName.length() < 2 || lastName.length() > 50) {
            errors.add("Last name must be between 2 and 50 characters");
        } else {
            player.setLastName(lastName);
        }


        try {
            player.setDateOfBirth(LocalDate.parse(birthDateString));
        } catch (DateTimeParseException e) {
            errors.add("Invalid birth date");
        }

        if (birthPlace == null || birthPlace.length() < 2 || birthPlace.length() > 100) {
            errors.add("Birth place must be between 2 and 100 characters");
        } else {
            player.setPlaceOfBirth(birthPlace);
        }

        player.setRegistrations(registrationService.createRegistrationsFromRegistrationFields(registrationFields));


        if (errors.isEmpty()) {
            playerRepository.save(player);
        }

        return errors;
    }
}
