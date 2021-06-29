package com.example.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class AboutControler {

    @RequestMapping(value = {"/about"}, method = RequestMethod.GET)
    public String getAll() {
        return "about/about";
    }
}
