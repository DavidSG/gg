package es.ucm.fdi.iw.controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.commonmark.node.*;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

import java.nio.file.Path;

import es.ucm.fdi.iw.model.Comentario;
import es.ucm.fdi.iw.model.Guia;
import es.ucm.fdi.iw.model.Message;
import es.ucm.fdi.iw.model.Transferable;
import es.ucm.fdi.iw.model.User;
import es.ucm.fdi.iw.model.Vote;

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
        
        // Coger guia con id
        Guia g = entityManager.find(Guia.class, id);

        
        // Coger like, dislike 
        int vote = 0;
        User u = (User) session.getAttribute("u");
        if (u != null) {
            u = entityManager.find(User.class, u.getId());
            List<Boolean> voteList = entityManager.createQuery(
                    "SELECT v.vote FROM Vote v WHERE v.autor = :autor AND v.guia = :guia",
            Boolean.class)
                .setParameter("autor", u)
                .setParameter("guia", g)
                .getResultList();
            
            
            if(voteList.isEmpty()) vote = 0;
            else if (voteList.get(0)) vote = 1;
            else vote = 2;
        }

        // INCLUIR ARCHIVO MD 
        String htmlContent = "Texto no encontrado";
        try {
            String mdContent = g.getTexto();
            Parser parser = Parser.builder().build();
            Node document = parser.parse(mdContent);
            HtmlRenderer renderer = HtmlRenderer.builder().build();
            htmlContent = renderer.render(document);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        

        model.addAttribute("vote", vote);
        model.addAttribute("md", htmlContent);
        model.addAttribute("guia", g);
        /*model.addAttribute("comentarios", c);*/

        return "guia";
    }

    /*@GetMapping(path = "recibido", produces = "application/json")
	@Transactional // para no recibir resultados inconsistentes
	@ResponseBody  // para indicar que no devuelve vista, sino un objeto (jsonizado)
	public List<Comentario.Transfer> retrieveComments(@PathVariable long id, HttpSession session) {
        // Conseguir una lista de comentarios que hay en la
        
		return  u.getReceived().stream().map(Transferable::toTransfer).collect(Collectors.toList());
	}	*/

}
