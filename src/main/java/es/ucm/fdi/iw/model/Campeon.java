package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Campeon {
    private String nombre;
    private String posiciones;

    @Id
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPosiciones() {
        return posiciones;
    }

    public void setPosiciones(String posiciones) {
        this.posiciones = posiciones;
    }
}
