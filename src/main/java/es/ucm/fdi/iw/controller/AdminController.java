package es.ucm.fdi.iw.controller;

import javax.persistence.EntityManager;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.transaction.Transactional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import es.ucm.fdi.iw.model.Campeon;
import es.ucm.fdi.iw.model.Guia;
import es.ucm.fdi.iw.model.Hechizo;
import es.ucm.fdi.iw.model.Item;
import es.ucm.fdi.iw.model.User;
import es.ucm.fdi.iw.model.User.Role;

/**
 *  Site administration.
 *
 *  Access to this end-point is authenticated - see SecurityConfig
 */
@Controller
@RequestMapping("admin")
public class AdminController {

	private static final Logger log = LogManager.getLogger(AdminController.class);

    @Autowired
	private EntityManager entityManager;

    @Autowired
	private PasswordEncoder passwordEncoder;

    public String encodePassword(String rawPassword) {
		return passwordEncoder.encode(rawPassword);
	}
    
    @Transactional
    @PostMapping(path = "/agregar-usuario", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> agregarUsuario(@RequestBody User target, HttpSession session) {
        // Aquí puedes realizar la lógica para agregar el usuario a la base de datos o a cualquier otro almacenamiento
        try{
            User requester = (User)session.getAttribute("u");
            if (requester.hasRole(Role.ADMIN)) {
                // create new user
                String password = target.getPassword();
                target.setPassword(encodePassword(password));
                target.setEnabled(true);
                entityManager.persist(target);
                entityManager.flush(); // forces DB to add user & assign valid id
            }
            return ResponseEntity.ok("Usuario creado con éxito");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error al crear el usuario: " + e.getMessage());
        }
    }

    @Transactional
    @PostMapping(path = "/agregar-item", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> agregarItem(@RequestBody Item target, HttpSession session) {
        // Aquí puedes realizar la lógica para agregar el item a la base de datos o a cualquier otro almacenamiento
        try{
            User requester = (User)session.getAttribute("u");
            if (requester.hasRole(Role.ADMIN)) {
                // create new item
                entityManager.persist(target);
                entityManager.flush(); // forces DB to add item & assign valid id
            }
            return ResponseEntity.ok("item creado con éxito");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error al crear el item: " + e.getMessage());
        }
    }

    @Transactional
    @PostMapping(path = "/agregar-hechizo", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> agregarHechizo(@RequestBody Hechizo target, HttpSession session) {
        // Aquí puedes realizar la lógica para agregar el Hechizo a la base de datos o a cualquier otro almacenamiento
        try{
            User requester = (User)session.getAttribute("u");
            if (requester.hasRole(Role.ADMIN)) {
                // create new Hechizo
                entityManager.persist(target);
                entityManager.flush(); // forces DB to add Hechizo & assign valid id
            }
            return ResponseEntity.ok("Hechizo creado con éxito");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error al crear el Hechizo: " + e.getMessage());
        }
    }
    
    @Transactional
    @PostMapping(path = "/agregar-campeon", produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> agregarCampeon(@RequestBody Campeon target, HttpSession session) {
        // Aquí puedes realizar la lógica para agregar el Campeon a la base de datos o a cualquier otro almacenamiento
        try{
            User requester = (User)session.getAttribute("u");
            if (requester.hasRole(Role.ADMIN)) {
                // create new Campeon
                entityManager.persist(target);
                entityManager.flush(); // forces DB to add Campeon & assign valid id
            }
            return ResponseEntity.ok("Campeon creado con éxito");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error al crear el Campeon: " + e.getMessage());
        }
    }
    
    @Transactional
    @GetMapping("/{id}/eliminar")
    public String eliminarUsuario(@PathVariable Long id, HttpSession session, Model model) {
        User admin = (User) session.getAttribute("u");
        if (id != admin.getId()){
            User u = entityManager.find(User.class, id);
            entityManager.createQuery(
                "DELETE FROM Comentario c WHERE c.autor = :usuario ")
                .setParameter("usuario", u)
                .executeUpdate();
            
            entityManager.createQuery(
                "DELETE FROM Vote v WHERE v.autor = :usuario ")
                .setParameter("usuario", u)
                .executeUpdate();
    

            entityManager.createQuery(
                "DELETE FROM Guia g WHERE g.autor = :usuario ")
                .setParameter("usuario", u)
                .executeUpdate();
            
            entityManager.createQuery(
                            "DELETE FROM User u WHERE u.id = :usuario ")
                            .setParameter("usuario", id)
                            .executeUpdate();
        }

        return "redirect:/listaUsers";
    }

    @Transactional
    @GetMapping("/{id}/eliminarGuia")
    public String eliminarGuia(@PathVariable Long id, HttpSession session) {
        User u = (User) session.getAttribute("u");
        Guia g = entityManager.find(Guia.class, id);

        entityManager.createQuery(
            "DELETE FROM Vote v WHERE v.guia = :guia")
            .setParameter("guia", g)
            .executeUpdate();

        entityManager.createQuery(
            "DELETE FROM Comentario c WHERE c.guia = :guia")
            .setParameter("guia", g)
            .executeUpdate();
            
        entityManager.createQuery(
            "DELETE FROM Guia g WHERE g.id = :guia")
            .setParameter("guia", id)
            .executeUpdate();

        return "redirect:/listaGuias";
    }
}
