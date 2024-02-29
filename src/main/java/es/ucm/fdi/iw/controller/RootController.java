package es.ucm.fdi.iw.controller;

import java.util.List;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
        return "db";
    }

    @GetMapping("/campeones")
    public String campeones(Model model) {
        List<Campeon> cs = entityManager.createQuery("SELECT c FROM Campeon c").getResultList();
        model.addAttribute("campeones", cs);
        return "campeones";
    }

    @GetMapping("/guias")
    public String guides() {
        return "guias";
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
    public String matchHistory() {
        return "matchHistory";
    }
}
