package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Comentario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String contenido;
    private Long guia_id;
    private String autor_id;

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public Long getGuia_id() {
        return guia_id;
    }

    public void setGuia_id(Long guia_id) {
        this.guia_id = guia_id;
    }

    public String getAutor_id() {
        return autor_id;
    }

    public void setAutor_id(String autor_id) {
        this.autor_id = autor_id;
    }

}
