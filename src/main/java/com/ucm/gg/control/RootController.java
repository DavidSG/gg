package com.ucm.gg.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class RootController {

    @GetMapping("/front")
    public String front() { 
        return "front"; 
    }

    @GetMapping("/matchHistory")
    public String matchHistory() { 
        return "matchHistory"; 
    }
}
