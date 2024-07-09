package itu.noteEtudiant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EtudiantController {
    
    @RequestMapping("/")
    public String viewIndex(Model model)
    {
        return "home/home";
    }
}
