package com.example.controller;

import com.example.DTO.UserDto;
import com.example.services.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;


@Controller
public class UserController {
    private final UserServices userServices;


    public UserController(UserServices userServices) {
        this.userServices = userServices;
    }

    @RequestMapping(value = {"/addUser"}, method = RequestMethod.GET)
    public String getAddUser() {
        return "login/register";
    }

    @RequestMapping(value = {"/addUser"}, method = RequestMethod.POST)
    public RedirectView postAddUser(@ModelAttribute UserDto userDto) {
        userServices.addUserPost(userDto);
        return new RedirectView("/login");
    }

}

