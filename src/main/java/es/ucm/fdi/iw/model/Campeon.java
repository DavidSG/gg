package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Campeon {
    @Id
    private String nombre;
    private String posiciones;
}
