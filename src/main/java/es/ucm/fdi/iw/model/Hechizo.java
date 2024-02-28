package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Hechizo {
    private String nombre;

    @Id
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

}
