package es.ucm.fdi.iw.controller;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import es.ucm.fdi.iw.model.Campeon;
import es.ucm.fdi.iw.model.Comentario;
import es.ucm.fdi.iw.model.Guia;
import es.ucm.fdi.iw.model.Hechizo;
import es.ucm.fdi.iw.model.Item;
import es.ucm.fdi.iw.model.User;
import es.ucm.fdi.iw.model.Vote;

/**
 * Non-authenticated requests only.
 */
@Controller
@RequestMapping("/api")
public class ApiController {

    private static final Logger log = LogManager.getLogger(RootController.class);

    @Autowired
    private EntityManager entityManager;

    @GetMapping(path = "/campeones", produces = "application/json")
    @ResponseBody
    public List<Campeon> getCampeones() {
        return entityManager.createQuery(
                "SELECT c FROM Campeon c",
                Campeon.class)
                // .setParameter("nombre", "%" + nombre + "%")
                .getResultList();
    }

    @GetMapping(path = "/hechizos", produces = "application/json")
    @ResponseBody
    public List<Hechizo> getHechizos() {
        return entityManager.createQuery(
                "SELECT h FROM Hechizo h",
                Hechizo.class)
                .getResultList();
    }

    @GetMapping(path = "/items", produces = "application/json")
    @ResponseBody
    public List<Item> getItems() {
        return entityManager.createQuery(
                "SELECT i FROM Item i",
                Item.class)
                .getResultList();
    }

    @GetMapping(path = "/guias", produces = "application/json")
    @ResponseBody
    public List<Guia> getGuias(@RequestParam String ordenar, @RequestParam(defaultValue = "no") String usuario,
            HttpSession session) {
        User u = (User) session.getAttribute("u");
        if (u == null) {
            // boom!
        } else {
            u = entityManager.find(User.class, u.getId());
        }

        String orderBy = " ORDER BY ";
        if (ordenar.charAt(0) == '1') {
            orderBy += "g.puntuacion DESC";
        } else if (ordenar.charAt(0) == '2') {
            orderBy += "g.puntuacion ASC";
        }

        if (ordenar.charAt(1) == '1') {
            if (orderBy.length() > 10) {
                orderBy += ", ";
            }
            orderBy += "g.fecha DESC";
        } else if (ordenar.charAt(1) == '2') {
            if (orderBy.length() > 10) {
                orderBy += ", ";
            }
            orderBy += "g.fecha ASC";
        }

        if (orderBy.equals(" ORDER BY "))
            orderBy = "";

        return entityManager.createQuery(
                "SELECT g FROM Guia g" + orderBy,
                Guia.class)
                .getResultList();

    }

    @GetMapping(path = "/guiasU", produces = "application/json")
    @ResponseBody
    public List<Guia> getGuiasU(@RequestParam String ordenar, HttpSession session) {
        User u = (User) session.getAttribute("u");
        if (u == null) {
            // boom!
        } else {
            u = entityManager.find(User.class, u.getId());
        }

        String orderBy = " ORDER BY ";
        if (ordenar.charAt(0) == '1') {
            orderBy += "g.puntuacion DESC";
        } else if (ordenar.charAt(0) == '2') {
            orderBy += "g.puntuacion ASC";
        }

        if (ordenar.charAt(1) == '1') {
            if (orderBy.length() > 10) {
                orderBy += ", ";
            }
            orderBy += "g.fecha DESC";
        } else if (ordenar.charAt(1) == '2') {
            if (orderBy.length() > 10) {
                orderBy += ", ";
            }
            orderBy += "g.fecha ASC";
        }

        if (orderBy.equals(" ORDER BY "))
            orderBy = "";

        return entityManager.createQuery(
                "SELECT g FROM Guia g WHERE g.autor = :autor" + orderBy,
                Guia.class)
                .setParameter("autor", u.getUsername())
                .getResultList();

    }

    @Transactional
    @PostMapping(path = "/nuevaguia", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> createGuia(@RequestBody Guia guia, HttpSession session) {
        try {
            User u = (User) session.getAttribute("u");
            if (u == null) {
                // boom!
            } else {
                u = entityManager.find(User.class, u.getId());
            }

            guia.setAutor(u.getUsername());
            guia.setFecha(LocalDate.now().toString());
            guia.setPuntuacion(0);

            /*Query query = entityManager.createNativeQuery("SELECT u.elo FROM User u WHERE u.user = :user");
            query.setParameter("autor", u.getUsername());
            Object elo = query.getSingleResult();
            String eloString = elo.toString();*/

            guia.setElo("diamante");

            entityManager.persist(guia);

            return ResponseEntity.ok("Nueva guía creada con éxito");
        } catch (Exception e) {
           
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al crear la nueva guía: " + e.getMessage());
        }
    }

    @Transactional
    @PostMapping(path = "/voteguia", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> likeGuia(@RequestBody Vote vote, HttpSession session) {
        try {
            User u = (User) session.getAttribute("u");
            if (u == null) {
                // boom!
            } else {
                u = entityManager.find(User.class, u.getId());

                entityManager.createQuery(
                    "DELETE FROM Vote v WHERE v.autor = :autor AND v.guia = :guia")
                    .setParameter("autor", u.getUsername())
                    .setParameter("guia", vote.getGuia()) 
                    .executeUpdate();

                // Si se ha seleccionado un voto, se sube uno nuevo
                if (vote.getVote() != null){
                    vote.setAutor(u.getUsername());
                    entityManager.persist(vote);
                }
            }

            return ResponseEntity.ok("Nueva guía creada con éxito");
        } catch (Exception e) {
           
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al crear la nueva guía: " + e.getMessage());
        }
    }

    @Transactional
    @PostMapping(path = "/comentarguia", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> comentarGuia(@RequestBody Comentario comentario, HttpSession session) {
        try {
            User u = (User) session.getAttribute("u");
            if (u == null) {
                // boom!
            } else {
                u = entityManager.find(User.class, u.getId());

                comentario.setAutor_id(u.getUsername());
                entityManager.persist(comentario);
            }

            return ResponseEntity.ok("Nueva guía creada con éxito");
        } catch (Exception e) {

            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al crear la nueva guía: " + e.getMessage());
        }
    }
}
