package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TeamController {

    @GetMapping(value = {"/team"})
    public String getTeam() {
        return "team/team";
    }
}
