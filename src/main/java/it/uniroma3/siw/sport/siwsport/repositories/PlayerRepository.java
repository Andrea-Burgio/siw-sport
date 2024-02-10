package it.uniroma3.siw.sport.siwsport.repositories;

import it.uniroma3.siw.sport.siwsport.dtos.PlayerPositionDTO;
import it.uniroma3.siw.sport.siwsport.dtos.PlayerPositionTeamDTO;
import it.uniroma3.siw.sport.siwsport.entities.Player;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PlayerRepository extends CrudRepository<Player, Long> {
    @Query("""
    SELECT t.id,r.position AS position, p.name AS name, p.lastName AS lastName
    FROM Team t INNER JOIN t.registrations r INNER JOIN r.player p
    WHERE (r.player.id, r.endDate) IN (
        SELECT r.player.id, MAX(r.endDate)
        FROM Registration r
        GROUP BY r.player.id
    )
    AND t.id = :teamId
    """)
    Iterable<PlayerPositionDTO> getPlayerPositionDTOsByTeamId(@Param("teamId") Long teamId);

    @Query("""
    SELECT p.name AS name, p.lastName AS lastName, p.dateOfBirth AS dateOfBirth, p.placeOfBirth AS placeOfBirth, r.team.name AS team, r.position AS position
    FROM Player p INNER JOIN p.registrations r
    WHERE (r.player.id, r.endDate) IN (
        SELECT r.player.id, MAX(r.endDate)
        FROM Registration r
        GROUP BY r.player.id
    )
    ORDER BY p.lastName
    """)
    Iterable<PlayerPositionTeamDTO> getPlayerPlayerPositionTeamDTO();
}
