package es.ucm.fdi.iw.controller;

import java.time.LocalDate;
import java.util.List;

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
import org.springframework.web.client.RestTemplate;
import com.fasterxml.jackson.databind.JsonNode;

import es.ucm.fdi.iw.model.Campeon;
import es.ucm.fdi.iw.model.Guia;
import es.ucm.fdi.iw.model.Hechizo;
import es.ucm.fdi.iw.model.Item;
import es.ucm.fdi.iw.model.User;

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
            guia.setAutor("b");
            guia.setFecha(LocalDate.now().toString());
            guia.setPuntuacion(10);
            guia.setElo("diamante");
            guia.setTexto("texto a");

            for(int i = 0; i < 10; i++) {
                System.out.println(guia.getId());
                System.out.println(guia.getTitulo());
                System.out.println(guia.getAutor());
                System.out.println(guia.getFecha());
                System.out.println(guia.getPuntuacion());
                System.out.println(guia.getCampeon());
                System.out.println(guia.getPosiciones());
                System.out.println(guia.getEtiquetas());
                System.out.println(guia.getElo());
                System.out.println(guia.getHechizos());
                System.out.println(guia.getItems());
                System.out.println(guia.getTexto());
                System.out.println();
            }

            entityManager.persist(guia);

            

            return ResponseEntity.ok("Nueva guía creada con éxito");
        } catch (Exception e) {
           
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error al crear la nueva guía: " + e.getMessage());
        }
    }
}
