package es.ucm.fdi.iw.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Entity
@Data
public class Comentario implements Transferable<Comentario.Transfer>{
    
    private static Logger log = LogManager.getLogger(Comentario.class);	

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Guia guia;
    @ManyToOne
    private User autor;
    private String contenido;
    private String dateSent;
    @Getter
    @AllArgsConstructor
	public static class Transfer {
		long id;
        private String from;
        private User autor_Id;
        private String contenido;
        private String sent;
		public Transfer(Comentario c) {
            this.from = c.getAutor().getUsername();
            this.sent = c.getDateSent();
            this.id = c.getId();
            this.contenido = c.getContenido();
		}
	}

    @Override
    public Transfer toTransfer() {
        return new Transfer(this);    
    }
}
