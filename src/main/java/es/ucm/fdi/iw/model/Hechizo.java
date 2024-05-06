package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Hechizo {
    @Id
    private String nombre;
}
