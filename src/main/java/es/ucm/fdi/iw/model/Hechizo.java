package es.ucm.fdi.iw.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Hechizo {
    @Id
    @Column(nullable = false, unique = true)
    private String nombre;
}
