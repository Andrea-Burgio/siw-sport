package it.uniroma3.siw.sport.siwsport.services;

import it.uniroma3.siw.sport.siwsport.dtos.TeamPresidentDTO;
import it.uniroma3.siw.sport.siwsport.entities.President;
import it.uniroma3.siw.sport.siwsport.entities.Team;
import it.uniroma3.siw.sport.siwsport.repositories.TeamRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class TeamService {

    private final TeamRepository teamRepository;

    private final PresidentService presidentService;

    @Autowired
    public TeamService(TeamRepository teamRepository, PresidentService presidentService){
        this.presidentService = presidentService;
        this.teamRepository = teamRepository;
    }

    public void createAndSaveTeam(TeamPresidentDTO teamPresidentDTO){
        Optional<President> presidentOptional = presidentService.findById(teamPresidentDTO.getPresidentId());

        if (presidentOptional.isPresent()) {
            President president = presidentOptional.get();
            Team team = Team.builder()
                    .president(president)
                    .name(teamPresidentDTO.getTeamName())
                    .foundationYear(teamPresidentDTO.getFoundationYear())
                    .officeAddress(teamPresidentDTO.getOfficeAddress())
                    .build();

            president.setTeam(team);
            teamRepository.save(team);
            presidentService.savePresident(president);
        }
    }

    public void updateTeam(TeamPresidentDTO teamPresidentDTO){
        Optional<Team> teamOptional = teamRepository.findById(teamPresidentDTO.getTeamId());
        if (teamOptional.isPresent()){
            Team team = teamOptional.get();

            String dtoTeamName = teamPresidentDTO.getTeamName();
            Integer dtoFoundationYear = teamPresidentDTO.getFoundationYear();
            String dtoOfficeAddress = teamPresidentDTO.getOfficeAddress();

            if (!team.getName().equals(dtoTeamName))
                team.setName(dtoTeamName);
            else if (!team.getFoundationYear().equals(dtoFoundationYear))
                team.setFoundationYear(dtoFoundationYear);
            else if (!team.getOfficeAddress().equals(dtoOfficeAddress))
                team.setOfficeAddress(dtoOfficeAddress);

            teamRepository.save(team);
        }
    }


    @Transactional
    public Iterable<TeamPresidentDTO> getAllTeamPresidentDTO() {
        return teamRepository.findAllTeams();
    }

    public Optional<Team> findByName(String teamName) {
        return teamRepository.findByName(teamName);
    }
}
