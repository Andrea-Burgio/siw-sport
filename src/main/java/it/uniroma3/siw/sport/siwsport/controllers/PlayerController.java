package it.uniroma3.siw.sport.siwsport.controllers;

import it.uniroma3.siw.sport.siwsport.dtos.PlayerPositionDTO;
import it.uniroma3.siw.sport.siwsport.dtos.PlayerPositionTeamDTO;
import it.uniroma3.siw.sport.siwsport.services.PlayerService;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/players")
public class PlayerController {
    final PlayerService playerService;

    @Autowired
    public PlayerController(PlayerService playerService){
        this.playerService = playerService;
    }

    @ResponseBody
    @GetMapping("/getPlayerPositionDTOByTeamId")
    public Iterable<PlayerPositionDTO> getPlayerPositionDTOByTeamId(@RequestParam Long teamId){
        return playerService.getPlayerPositionDTOsByTeamId(teamId);
    }

    @GetMapping("")
    public String showTeams(){
        return "players.html";
    }

    @ResponseBody
    @GetMapping("/getPlayerPositionTeamDTO")
    public Iterable<PlayerPositionTeamDTO> getPlayerPlayerPositionTeamDTO(){
        return playerService.getPlayerPositionDTOsByTeamId();
    }
}