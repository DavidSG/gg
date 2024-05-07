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
    private Guia guia_id;
    @ManyToOne
    private User autor_id;
    private String contenido;

    private LocalDateTime dateSent;
	private LocalDateTime dateRead;
    @Getter
    @AllArgsConstructor
	public static class Transfer {
		long id;
        private String from;
        private User autor_Id;
        private String contenido;
        private String sent;
        private String received;
		public Transfer(Comentario c) {
            this.from = c.getAutor_id().getUsername();
            this.sent = DateTimeFormatter.ISO_LOCAL_DATE_TIME.format(c.getDateSent());
			this.received = c.getDateRead() == null ?
					null : DateTimeFormatter.ISO_LOCAL_DATE_TIME.format(c.getDateRead());
            this.id = c.getId();
            this.contenido = c.getContenido();
		}
	}

    @Override
    public Transfer toTransfer() {
        return new Transfer(this);    
    }
}
