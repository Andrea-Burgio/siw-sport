package it.uniroma3.siw.sport.siwsport.controllers;

import it.uniroma3.siw.sport.siwsport.dtos.NoTeamPresidentIdFullNameDTO;
import it.uniroma3.siw.sport.siwsport.dtos.TeamPresidentDTO;
import it.uniroma3.siw.sport.siwsport.entities.President;
import it.uniroma3.siw.sport.siwsport.entities.Team;
import it.uniroma3.siw.sport.siwsport.services.PresidentService;
import it.uniroma3.siw.sport.siwsport.services.TeamService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Optional;


@RequestMapping("/admin")
@Controller
public class AdminController {

    @ModelAttribute("teamPresidentDTO1")
    public TeamPresidentDTO teamPresidentDTO1(Model model) {
        if (!model.containsAttribute("teamPresidentDTO1")) {
            return new TeamPresidentDTO();
        } else {
            return (TeamPresidentDTO) model.getAttribute("teamPresidentDTO1");
        }
    }

    @ModelAttribute("teamPresidentDTO2")
    public TeamPresidentDTO teamPresidentDTO2(Model model) {
        if (!model.containsAttribute("teamPresidentDTO2")) {
            return new TeamPresidentDTO();
        } else {
            return (TeamPresidentDTO) model.getAttribute("teamPresidentDTO2");
        }
    }


    TeamService teamService;
    PresidentService presidentService;

    public AdminController(TeamService teamService, PresidentService presidentService){
        this.teamService = teamService;
        this.presidentService=presidentService;
    }

    @GetMapping("")
    public String showAdministratorPage(Model model){
        return "admin.html";
    }

    @GetMapping("/getNoTeamPresidents")
    @ResponseBody
    public Iterable<NoTeamPresidentIdFullNameDTO> getNoTeamPresidents(){
        return presidentService.findAllNoTeamPresidentIdFullNameDTO();
    }

    @PostMapping("/addTeam")
    public String addTeam(@Valid @ModelAttribute("teamPresidentDTO1") TeamPresidentDTO teamPresidentDTO1, BindingResult bindingResult1, RedirectAttributes redirectAttributes, Model model){
        if (bindingResult1.hasErrors()) {
            model.addAttribute("showForm", "addTeam");
            return "/admin";
        }
        else {
            teamService.createAndSaveTeam(teamPresidentDTO1);
            redirectAttributes.addFlashAttribute("successMessage", "Team added with success");
            redirectAttributes.addFlashAttribute("showForm", "addTeam");
            return "redirect:/admin";
        }
    }

    @PostMapping("/editTeam")
    public String editTeam(@Valid @ModelAttribute("teamPresidentDTO2") TeamPresidentDTO teamPresidentDTO2, BindingResult bindingResult2, RedirectAttributes redirectAttributes, Model model){
        if (bindingResult2.hasErrors()) {
            model.addAttribute("showForm", "editTeam");
            return "/admin";
        }
        else {
            teamService.updateTeam(teamPresidentDTO2);
            redirectAttributes.addFlashAttribute("successMessage", "Team edited with success");
            redirectAttributes.addFlashAttribute("showForm", "editTeam");
            return "redirect:/admin";
        }
    }
}
