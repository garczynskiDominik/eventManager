package com.example.controller;

import com.example.DTO.UserDto;
import com.example.converter.UserConverter;
import com.example.model.User;
import com.example.repository.UserEntityRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;


@Controller
public class UserController {

    private final UserEntityRepository userEntityRepository;
    private final UserConverter userConverter;
    private final PasswordEncoder passwordEncoder;


    public UserController(UserEntityRepository userEntityRepository, UserConverter userConverter, PasswordEncoder passwordEncoder) {
        this.userEntityRepository = userEntityRepository;
        this.userConverter = userConverter;
        this.passwordEncoder = passwordEncoder;
    }

    //get all
        @RequestMapping(value = {"/users"}, method = RequestMethod.GET)
        public String getEducation(Model model) {
            List<User> listEducations = userEntityRepository.findAll();
            List<UserDto> userDtos = userConverter.entityToDto(listEducations);
            model.addAttribute("education", userDtos);
            return "education/education";
        }

        //add get
        @RequestMapping(value = {"/addUser"}, method = RequestMethod.GET)
        public String getAddTEducation() {
            return "login/register";
        }

        //add post
        @RequestMapping(value = {"/addUser"}, method = RequestMethod.POST)
        public RedirectView addUser(@ModelAttribute UserDto userDto) {
            User user = userConverter.dtoToEntity(userDto);
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            userEntityRepository.save(user);
            return new RedirectView("/login");
        }

    }

