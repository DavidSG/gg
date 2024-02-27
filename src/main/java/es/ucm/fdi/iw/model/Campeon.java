package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Campeon {
    private String name;
    private String posiciones;

    @Id
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosiciones() {
        return posiciones;
    }

    public void setPosiciones(String posiciones) {
        this.posiciones = posiciones;
    }
}
