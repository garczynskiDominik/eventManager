package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TeamController {

    @RequestMapping(value = {"/team"}, method = RequestMethod.GET)
    public String getTeam() {
        return "team/team";
    }
}
