package it.uniroma3.siw.sport.siwsport.controllers;

import it.uniroma3.siw.sport.siwsport.dtos.TeamPresidentDTO;
import it.uniroma3.siw.sport.siwsport.services.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/teams")
public class TeamController {
    private final TeamService teamService;

    @Autowired
    public TeamController(TeamService teamService){
        this.teamService = teamService;
    }

    @GetMapping("")
    public String showTeams(Model model){return "teams.html";}


    @ResponseBody
    @GetMapping("/getTeamPresidentDTO")
    public Iterable<TeamPresidentDTO> getTeamsPresidentDTO() {
        return teamService.getAllTeamPresidentDTO();
    }
}