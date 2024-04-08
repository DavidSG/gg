package es.ucm.fdi.iw.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.commonmark.renderer.html.HtmlRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import es.ucm.fdi.iw.model.Campeon;
import es.ucm.fdi.iw.model.Guia;
import es.ucm.fdi.iw.model.Item;
import es.ucm.fdi.iw.model.User;

/**
 * Non-authenticated requests only.
 */
@Controller
public class RootController {

    private static final Logger log = LogManager.getLogger(RootController.class);

    @Autowired
    private EntityManager entityManager;

    @GetMapping("/")
    public String index(Model model) {
        return "index";
    }

    /*
     * @GetMapping("/")
     * public String index(Model model) {
     * return "index";
     * }
     */

    @GetMapping("/login")
    public String login(Model model) {
        return "login";
    }

    @GetMapping("/db")
    public String header(Model model) {
        return "db";
    }

    @GetMapping("/guias")
    public String guias(@RequestParam(defaultValue = "") String campeon,
            @RequestParam(defaultValue = "") String posiciones,
            @RequestParam(defaultValue = "") String etiquetas,
            @RequestParam(defaultValue = "") String orderBy,
            Model model, HttpSession session) {

        String orderByS = "";
        if (!orderBy.equals("")) {
            orderByS = " ORDER BY g." + orderBy;
        }

        List<Guia> gs = entityManager.createQuery(
                "SELECT g FROM Guia g WHERE LOWER(g.campeon) LIKE LOWER(:campeon) AND g.posiciones LIKE :posiciones AND g.etiquetas LIKE :etiquetas"
                        + orderByS,
                Guia.class)
                .setParameter("campeon", "%" + campeon + "%")
                .setParameter("posiciones", "%" + posiciones + "%")
                .setParameter("etiquetas", "%" + etiquetas + "%")
                .getResultList();

        model.addAttribute("guias", gs);
        model.addAttribute("campeon", campeon);
        model.addAttribute("posiciones", posiciones);
        model.addAttribute("etiquetas", etiquetas);
        model.addAttribute("orderBy", orderBy);

        return "guias";
    }

    @GetMapping("/misGuias")
    public String misGuias(Model model, HttpSession session) {
        return "misGuias";
    }

    @GetMapping("/nuevaGuia")
    public String nuevaGuia(Model model) {
        return "nuevaGuia";
    }

    @GetMapping("/campeones")
    public String campeones(Model model) {
        return "campeones";
    }

    @GetMapping("/items")
    public String items(Model model) {
        List<Item> is = entityManager.createQuery("select i from Item i").getResultList();
        model.addAttribute("items", is);
        return "items";
    }

    @GetMapping("/miperfil")
    public String miperfil() {
        return "miperfil";
    }

    @GetMapping("/matchHistory")
    public String matchHistory(Model model) {
        return "matchHistory";
    }

    /*
     * @GetMapping("/campeones")
     * public String campeones(@RequestParam(defaultValue = "") String nombre,
     * 
     * @RequestParam(defaultValue = "") String posiciones,
     * Model model, HttpSession session) {
     * List<Campeon> cs = entityManager.createQuery(
     * "SELECT c FROM Campeon c WHERE LOWER(c.nombre) LIKE LOWER(:nombre) AND c.posiciones LIKE :posiciones"
     * ,
     * Campeon.class)
     * .setParameter("nombre", "%" + nombre + "%")
     * .setParameter("posiciones", "%" + posiciones + "%")
     * .getResultList();
     * model.addAttribute("campeones", cs);
     * model.addAttribute("nombre", nombre);
     * model.addAttribute("posiciones", posiciones);
     * return "campeones";
     * }
     */

}
