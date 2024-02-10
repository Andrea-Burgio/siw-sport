package it.uniroma3.siw.sport.siwsport.dtos;

import it.uniroma3.siw.sport.siwsport.entities.enums.Position;

public interface PlayerPositionDTO {
    String getName();
    String getLastName();
    Position getPosition();
}