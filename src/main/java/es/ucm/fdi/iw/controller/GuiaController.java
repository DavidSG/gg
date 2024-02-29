package es.ucm.fdi.iw.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import es.ucm.fdi.iw.model.Guia;

/**
 * Non-authenticated requests only.
 */
@Controller
@RequestMapping("guia")
public class GuiaController {

    private static final Logger log = LogManager.getLogger(RootController.class);

    @Autowired
    private EntityManager entityManager;
    
    @GetMapping("{id}")
    public String index(@PathVariable long id, Model model, HttpSession session) {
        Guia g = entityManager.find(Guia.class, id);
        model.addAttribute("guia", g);
        return "guia";
    }


}
