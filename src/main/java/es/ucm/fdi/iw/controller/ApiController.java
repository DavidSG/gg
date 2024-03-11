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
import org.springframework.web.client.RestTemplate;

import es.ucm.fdi.iw.model.Campeon;
import es.ucm.fdi.iw.model.Guia;
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

    @GetMapping("/campeones")
    public String campeones(@RequestParam(defaultValue = "") String nombre,
            @RequestParam(defaultValue = "") String posiciones,
            Model model, HttpSession session) {
        List<Campeon> cs = entityManager.createQuery(
                "SELECT c FROM Campeon c WHERE LOWER(c.nombre) LIKE LOWER(:nombre) AND c.posiciones LIKE :posiciones",
                Campeon.class)
                .setParameter("nombre", "%" + nombre + "%")
                .setParameter("posiciones", "%" + posiciones + "%")
                .getResultList();
        model.addAttribute("campeones", cs);
        model.addAttribute("nombre", nombre);
        model.addAttribute("posiciones", posiciones);
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
        RestTemplate restTemplate = new RestTemplate();
        String apiKey = "RGAPI-1b502722-f491-400f-9697-5d40fae6d653";

        String summonerUrl = "https://euw1.api.riotgames.com/lol/summoner/v4/summoners/by-name/DavidSG45";
        summonerUrl += "?api_key=" + apiKey;
        ResponseEntity<String> summonerResponse = restTemplate.getForEntity(summonerUrl, String.class);
        model.addAttribute("summoner", summonerResponse.getBody());

        String historyUrl = "https://europe.api.riotgames.com/lol/match/v5/matches/by-puuid/OWazwPxDlipqRAdDtVoPl9yeLHEp5EyPUmuT2lFx72-M9SB2KYMcQUMMGFbhOq0OBRqAzpa_4VQZoA/ids?start=0&count=20";
        historyUrl += "&api_key=" + apiKey;
        ResponseEntity<String> matchHistoryResponse = restTemplate.getForEntity(historyUrl, String.class);
        model.addAttribute("history", matchHistoryResponse.getBody());

        /*
         * String matchUrl =
         * "https://europe.api.riotgames.com/lol/match/v5/matches/EUW1_6836248164?api_key=RGAPI-3ff69220-8e9a-472f-acb1-1f253ce847b4";
         * ResponseEntity<String> matchResponse = restTemplate.getForEntity(matchUrl,
         * String.class);
         * model.addAttribute("match", matchResponse.getBody());
         */

        // model.addAttribute(

        return "matchHistory";
    }

}
