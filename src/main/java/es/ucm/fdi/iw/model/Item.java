package es.ucm.fdi.iw.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Item {
    @Id
    private String id;
    private String nombre;
    private String etiquetas;
}
