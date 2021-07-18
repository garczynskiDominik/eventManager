package com.example.services;

import com.example.model.User;
import com.example.repository.UserEntityRepository;
import org.springframework.stereotype.Service;

@Service
public class UserServices {

    private final UserEntityRepository userEntityRepository;

    public UserServices(UserEntityRepository userEntityRepository) {
        this.userEntityRepository = userEntityRepository;
    }

    public User getUser(Long id) {
        return userEntityRepository.findById(id).orElse(null);

    }



}
