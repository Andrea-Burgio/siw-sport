package it.uniroma3.siw.sport.siwsport.services;

import it.uniroma3.siw.sport.siwsport.dtos.NoTeamPresidentIdFullNameDTO;
import it.uniroma3.siw.sport.siwsport.dtos.SignupDataDTO;
import it.uniroma3.siw.sport.siwsport.entities.President;
import it.uniroma3.siw.sport.siwsport.repositories.PresidentRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PresidentService {
    PresidentRepository presidentRepository;

    public PresidentService(PresidentRepository presidentRepository){
        this.presidentRepository = presidentRepository;
    }

    public Iterable<NoTeamPresidentIdFullNameDTO> findAllNoTeamPresidentIdFullNameDTO(){
        return presidentRepository.findAllNoTeamPresidentIdFullNameDTO();
    }

    @Transactional
    public Optional<President> findById(Long id){
        return presidentRepository.findById(id);
    }

    public void savePresident(President president){
        presidentRepository.save(president);
    }

    @Transactional
    public void createAndSavePresident(SignupDataDTO signupDataDTO) {
            President president = President.builder()
                    .name(signupDataDTO.getFirstName())
                    .lastName(signupDataDTO.getLastName())
                    .taxNumber(signupDataDTO.getTaxNumber())
                    .dateOfBirth(signupDataDTO.getDateOfBirth())
                    .placeOfBirth(signupDataDTO.getPlaceOfBirth())
                    .username(signupDataDTO.getUsername())
                    .build();
            presidentRepository.save(president);
        }
}
