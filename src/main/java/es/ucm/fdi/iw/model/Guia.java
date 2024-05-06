package es.ucm.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Entity
@Data
public class Guia implements Transferable<Guia.Transfer> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String titulo;

    @ManyToOne
    private User autor;
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

        @Getter
    @AllArgsConstructor
    public static class Transfer {
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
    }

    @Override
    public Transfer toTransfer() {
        double total = 0;
        for (Vote v : votes) total += v.getVote() ? 1 : 0;
        total /= (double)votes.size();
        return new Transfer(id, titulo, autor.getUsername(), 
            fecha, total, campeon, posiciones, etiquetas, elo, hechizos, items, texto);
    }

    @Override
    public String toString() {
        return toTransfer().toString();
    }
}
