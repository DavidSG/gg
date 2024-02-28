package es.ucm.fdi.iw.controller;

import java.util.List;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import es.ucm.fdi.iw.model.Campeon;
import es.ucm.fdi.iw.model.Item;

/**
 * Non-authenticated requests only.
 */
@Controller
public class RootController {

    private static final Logger log = LogManager.getLogger(RootController.class);

    @Autowired
    private EntityManager entityManager;

    @GetMapping("/login")
    public String login(Model model) {
        return "login";
    }

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

    @GetMapping("/db")
    public String header(Model model) {
        List<Campeon> cs = entityManager.createQuery("select c from Campeon c").getResultList();
        model.addAttribute("campeones", cs);
        List<Item> is = entityManager.createQuery("select i from Item i").getResultList();
        model.addAttribute("items", is);
        return "db";
    }

    @GetMapping("/campeones")
    public String campeones() {
        return "campeones";
    }

    @GetMapping("/guides")
    public String guides() {
        return "guides";
    }

    @GetMapping("/items")
    public String items() {
        return "items";
    }

    @GetMapping("/miperfil")
    public String miperfil() {
        return "miperfil";
    }

    @GetMapping("/matchHistory")
    public String matchHistory() {
        return "matchHistory";
    }
}
