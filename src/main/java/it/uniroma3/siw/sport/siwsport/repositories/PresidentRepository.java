package it.uniroma3.siw.sport.siwsport.repositories;


import it.uniroma3.siw.sport.siwsport.dtos.NoTeamPresidentIdFullNameDTO;
import it.uniroma3.siw.sport.siwsport.entities.President;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface PresidentRepository extends CrudRepository<President, Long> {

    @Query("""
    SELECT p.id AS id, CONCAT(p.name, ' ', p.lastName) AS president
    FROM President p
    WHERE p.team IS NULL
    """)
    Iterable<NoTeamPresidentIdFullNameDTO> findAllNoTeamPresidentIdFullNameDTO();
}
