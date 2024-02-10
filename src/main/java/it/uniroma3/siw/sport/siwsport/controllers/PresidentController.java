package it.uniroma3.siw.sport.siwsport.controllers;

import it.uniroma3.siw.sport.siwsport.dtos.NoTeamPresidentIdFullNameDTO;
import it.uniroma3.siw.sport.siwsport.dtos.TeamPresidentDTO;
import it.uniroma3.siw.sport.siwsport.entities.Team;
import it.uniroma3.siw.sport.siwsport.entities.enums.Position;
import it.uniroma3.siw.sport.siwsport.services.PlayerService;
import it.uniroma3.siw.sport.siwsport.services.PresidentService;
import it.uniroma3.siw.sport.siwsport.services.TeamService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.*;


@RequestMapping("/president")
@Controller
public class PresidentController {

    @ModelAttribute("teamPresidentDTO1")
    public TeamPresidentDTO teamPresidentDTO1(Model model) {
        if (!model.containsAttribute("teamPresidentDTO1")) {
            return new TeamPresidentDTO();
        } else {
            return (TeamPresidentDTO) model.getAttribute("teamPresidentDTO1");
        }
    }

    TeamService teamService;
    PlayerService playerService;

    public PresidentController(TeamService teamService, PlayerService playerService){
        this.teamService = teamService;
        this.playerService = playerService;
    }

    @PostMapping("/addPlayer")
    public String submitForm(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        // Static fields
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String birthDateString = request.getParameter("birthDate");
        String birthPlace = request.getParameter("birthPlace");


        // Dynamic fields
        Enumeration<String> parameterNames = request.getParameterNames();

        Map<String, String> registrationFields = new HashMap<>();
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            if (paramName.startsWith("position") || paramName.startsWith("team") || paramName.startsWith("startDate") || paramName.startsWith("endDate")) {
                registrationFields.put(paramName, request.getParameter(paramName));
            }
        }

        List<String> errors = playerService.createPlayerFromStringValues(name, lastName, birthDateString, birthPlace, registrationFields);

        if (!errors.isEmpty()) {
            redirectAttributes.addFlashAttribute("errors", errors);
            return "redirect:/form";
        }

        return "redirect:/";
    }

    @GetMapping("")
    public String showPresidentPage(Model model){
        model.addAttribute("positions", Position.values());
        model.addAttribute("teams", teamService.getAllTeamPresidentDTO());
        return "president";
    }
}
