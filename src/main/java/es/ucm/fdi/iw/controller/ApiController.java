package es.ucm.fdi.iw.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import es.ucm.fdi.iw.model.Campeon;
import es.ucm.fdi.iw.model.Guia;
import es.ucm.fdi.iw.model.Hechizo;
import es.ucm.fdi.iw.model.Item;

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

}
