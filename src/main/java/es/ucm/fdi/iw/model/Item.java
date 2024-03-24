package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Item {
    private String id;
    private String nombre;
    private String etiquetas;

    @Id
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEtiquetas() {
        return etiquetas;
    }

    public void setEtiquetas(String etiquetas) {
        this.etiquetas = etiquetas;
    }
}
