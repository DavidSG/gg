package com.ucm.gg.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {

    @GetMapping("/")
    public String main() {
        return "index";
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
