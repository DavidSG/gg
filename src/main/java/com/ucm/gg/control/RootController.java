package com.ucm.gg.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ucm.gg.ChampionRepository;
import com.ucm.gg.model.Champion;

@Controller
public class RootController {

    private final ChampionRepository championRepository = null;

    @GetMapping("/")
    public String main() {
        return "index";
    }

    @GetMapping("/campeones")
    public String campeones(Model model) {
        Champion queryResult = championRepository.searchChampions();
        model.addAttribute("result", queryResult);
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
