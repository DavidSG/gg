package es.ucm.fdi.iw.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.commonmark.node.*;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

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

    private static class GuiaParaMostrar {
        public Guia guia;
        public String html;
    }

    @GetMapping("{id}")
    public String index(@PathVariable long id, Model model, HttpSession session) {
        Guia g = entityManager.find(Guia.class, id);
        Parser parser = Parser.builder().build();
        Node document = parser.parse("1.md");
        HtmlRenderer renderer = HtmlRenderer.builder().build();
        String renderedHtml = renderer.render(document); // Render Markdown to HTML

        model.addAttribute("guia", g);
        model.addAttribute("renderedHtml", renderedHtml); // Add HTML content as attribute

        return "guia";
    }

}
