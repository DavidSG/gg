package com.ucm.gg.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class RootController {

    @GetMapping("/")
    public String main() { 
        return "main"; 
    }

    @GetMapping("/campeones.html")
    public String campeones() { 
        return "campeones"; 
    }

    @GetMapping("/guides.html")
    public String guides() { 
        return "guides"; 
    }

    @GetMapping("/items.html")
    public String items() { 
        return "items"; 
    }

    @GetMapping("/ajustes.html")
    public String ajustes() { 
        return "ajustes"; 
    }

    @GetMapping("/matchHistory.html")
    public String matchHistory() { 
        return "matchHistory"; 
    }

}
