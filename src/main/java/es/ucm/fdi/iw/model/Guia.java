package es.ucm.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class Guia {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String titulo;
    private String autor;
    private String fecha;
    private double puntuacion;

    private String campeon;
    private String posiciones;
    private String etiquetas;

    private String elo;
    private String hechizos;
    private String items;
    private String texto;

    @OneToMany
    @JoinColumn(name = "guia_id")
    private List<Vote> votes = new ArrayList<>();
}
