package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller


public class Login {


    @GetMapping(value = {"/login"})
    public String getLogin() {
        return "/login/login";
    }

    @PostMapping(value = {"/login"})
    public String postLogin() {
        return "/login/login";
    }

    @GetMapping(value = {"/register"})
    public String getregister() {
        return "/login/register";
    }
}