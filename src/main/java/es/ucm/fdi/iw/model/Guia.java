package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
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

    public long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    // Getter and setter for 'posiciones'
    public String getPosiciones() {
        return posiciones;
    }

    public void setPosiciones(String posiciones) {
        this.posiciones = posiciones;
    }

    // Getter and setter for 'posiciones'
    public String getEtiquetas() {
        return etiquetas;
    }

    public void setEtiquetas(String etiquetas) {
        this.etiquetas = etiquetas;
    }

     // Getter and setter for 'puntuacion'
    public double getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(double puntuacion) {
        this.puntuacion = puntuacion;
    }

    
    // Getter and setter for 'titulo'
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
    // Getter and setter for 'texto'
    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    // Getter and setter for 'fecha'
    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    // Getter and setter for 'autor'
    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    // Getter and setter for 'elo'
    public String getElo() {
        return elo;
    }

    public void setElo(String elo) {
        this.elo = elo;
    }

    // Getter and setter for 'campeon'
    public String getCampeon() {
        return campeon;
    }

    public void setCampeon(String campeon) {
        this.campeon = campeon;
    }

    // Getter and setter for 'items'
    public String getItems() {
        return items;
    }

    public void setItems(String items) {
        this.items = items;
    }

    // Getter and setter for 'hechizos'
    public String getHechizos() {
        return hechizos;
    }

    public void setHechizos(String hechizos) {
        this.hechizos = hechizos;
    }


}
