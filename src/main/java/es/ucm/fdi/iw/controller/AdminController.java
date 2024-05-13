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
    @GetMapping("/{id}/eliminar")
    public String eliminarUsuario(@PathVariable Long id, HttpSession session, Model model) {
        User admin = (User) session.getAttribute("u");
        if (id != admin.getId()){
            User u = entityManager.find(User.class, id);
            entityManager.createQuery(
                "DELETE FROM Guia g WHERE g.autor = :usuario ")
                .setParameter("usuario", u)
                .executeUpdate();
            
            entityManager.createQuery(
                "DELETE FROM Vote v WHERE v.autor = :usuario ")
                .setParameter("usuario", u)
                .executeUpdate();

            entityManager.createQuery(
                "DELETE FROM Comentario c WHERE c.autor = :usuario ")
                .setParameter("usuario", u)
                .executeUpdate();

            entityManager.createQuery(
                            "DELETE FROM User u WHERE u.id = :usuario ")
                            .setParameter("usuario", id)
                            .executeUpdate();
        }

        return "redirect:/listaUsers";
    }
}
