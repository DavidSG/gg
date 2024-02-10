package com.ucm.gg.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class RootController {

    @GetMapping("/")
    public String main() { 
        return "main"; 
    }

    @GetMapping("/ajustes.html")
    public String ajustes() { 
        return "ajustes"; 
    }

    @GetMapping("/matchHistory")
    public String matchHistory() { 
        return "matchHistory"; 
    }

}
