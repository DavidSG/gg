package com.ucm.gg.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class RootController {

    @GetMapping("/")
    public String front() { 
        return "main"; 
    }

    @GetMapping("/matchHistory")
    public String matchHistory() { 
        return "matchHistory"; 
    }

}
