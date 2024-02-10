package it.uniroma3.siw.sport.siwsport.repositories;

import it.uniroma3.siw.sport.siwsport.dtos.TeamPresidentDTO;
import it.uniroma3.siw.sport.siwsport.entities.Team;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TeamRepository extends CrudRepository<Team, Long> {
    @Query("""
    SELECT new it.uniroma3.siw.sport.siwsport.dtos.TeamPresidentDTO(t.id, p.id, t.name, CONCAT(p.name, ' ', p.lastName), t.foundationYear, t.officeAddress)
    FROM Team t JOIN t.president p
    """)
    Iterable<TeamPresidentDTO> findAllTeams();

    Optional<Team> findByName(String teamName);
}
