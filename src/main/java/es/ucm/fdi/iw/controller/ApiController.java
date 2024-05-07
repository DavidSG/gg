package es.ucm.fdi.iw.controller;

import java.io.FileWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;
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
import es.ucm.fdi.iw.model.Transferable;
import es.ucm.fdi.iw.model.User;
import es.ucm.fdi.iw.model.Vote;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.messaging.simp.SimpMessagingTemplate;

/**
 * Non-authenticated requests only.
 */
@Controller
@RequestMapping("/api")
public class ApiController {

    private static final Logger log = LogManager.getLogger(ApiController.class);

    @Autowired
    private EntityManager entityManager;

    @Autowired
    private SimpMessagingTemplate messagingTemplate;

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
    public List<Guia.Transfer> getGuias(@RequestParam String ordenar, HttpSession session) {
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
                .getResultList().stream().map(Transferable::toTransfer).collect(Collectors.toList());

    }

    @GetMapping(path = "/guiasU", produces = "application/json")
    @ResponseBody
    public List<Guia.Transfer> getGuiasU(@RequestParam String ordenar, HttpSession session) {
        User u = (User) session.getAttribute("u");
        if (u == null) {
            // boom!
        } else {
            u = entityManager.find(User.class, u.getId());
        }

        String orderBy = " ORDER BY ";
        if (ordenar.charAt(0) == '1') {
            orderBy += "g.total DESC";
        } else if (ordenar.charAt(0) == '2') {
            orderBy += "g.total ASC";
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
                .setParameter("autor", u)
                .getResultList().stream().map(Transferable::toTransfer).collect(Collectors.toList());
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

            guia.setAutor(u);
            guia.setFecha(LocalDate.now().toString());
            guia.setPuntuacion(0);

            /*
             * Query query = entityManager.
             * createNativeQuery("SELECT u.elo FROM User u WHERE u.user = :user");
             * query.setParameter("autor", u.getUsername());
             * Object elo = query.getSingleResult();
             * String eloString = elo.toString();
             */

            guia.setElo("diamante");

            entityManager.persist(guia);

            /*String mdPath = "src/main/resources/md/" + guia.getId() + ".md";

            FileWriter writer = new FileWriter(mdPath);
            writer.write(guia.getTexto());
            writer.close();*/

            return ResponseEntity.ok("Nueva guía creada con éxito");
        } catch (Exception e) {

            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error al crear la nueva guía: " + e.getMessage());
        }
    }

    public static class VoteProxy {
        public Boolean like;
        public Long guia;
    }

    @Transactional
    @PostMapping(path = "/voteguia", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> likeGuia(@RequestBody VoteProxy proxy, HttpSession session, Vote vote) {
        try {
            User u = (User) session.getAttribute("u");
            if (u == null) {
                // boom!
            } else {
                u = entityManager.find(User.class, u.getId());

                vote.setVote(proxy.like);
                vote.setGuia(entityManager.find(Guia.class, proxy.guia));

                entityManager.createQuery(
                        "DELETE FROM Vote v WHERE v.autor = :autor AND v.guia = :guia")
                        .setParameter("autor", u)
                        .setParameter("guia", vote.getGuia())
                        .executeUpdate();

                // Si se ha seleccionado un voto, se sube uno nuevo
                if (proxy.like != null) {
                    vote.setAutor(u);
                    entityManager.persist(vote);
                }
            }

            return ResponseEntity.ok("Nueva guía creada con éxito");
        } catch (Exception e) {

            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error al crear la nueva guía: " + e.getMessage());
        }
    }

    public static class ComentarioProxy {
        public String contenido;
        public Long guia_id;
    }

    @Transactional
    @PostMapping(path = "/comentarguia", produces = "application/json")
    @ResponseBody
    public String postComentario(@RequestBody ComentarioProxy proxy, HttpSession session, Comentario comentario)
            throws JsonProcessingException {

        User u = (User) session.getAttribute("u");

        // Crear y persistir el comentario en la base de datos
        comentario.setAutor_id(u);
        comentario.setGuia_id(entityManager.find(Guia.class, proxy.guia_id));
        comentario.setContenido(proxy.contenido);
        comentario.setDateSent(DateTimeFormatter.ISO_LOCAL_DATE_TIME.format(LocalDateTime.now()));
        entityManager.persist(comentario);
        entityManager.flush(); // Para obtener el ID antes de la confirmación

        // Convertir el comentario a JSON
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(comentario.toTransfer());

        log.info("Sending a message to {} with contents '{}'", comentario.getId(), json);

        // Enviar el comentario a través de WebSockets
        messagingTemplate.convertAndSend("/guia/" + comentario.getGuia_id() + "/queue/updates", json);

        return "{\"resultado\": \"comentario enviado.\"}";
    }

    /*
     * @Transactional
     * 
     * @PostMapping(path = "/comentarguia", produces = "application/json")
     * 
     * @ResponseBody
     * public ResponseEntity<String> comentarGuia(@RequestBody Comentario
     * comentario, HttpSession session) {
     * try {
     * User u = (User) session.getAttribute("u");
     * if (u == null) {
     * // boom!
     * } else {
     * u = entityManager.find(User.class, u.getId());
     * 
     * comentario.setAutor_id(u.getUsername());
     * entityManager.persist(comentario);
     * }
     * 
     * return ResponseEntity.ok("Nueva guía creada con éxito");
     * } catch (Exception e) {
     * 
     * e.printStackTrace();
     * return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).
     * body("Error al crear la nueva guía: " + e.getMessage());
     * }
     * }
     */
}
