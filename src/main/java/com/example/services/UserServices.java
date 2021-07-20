package com.example.services;

import com.example.DTO.UserDto;
import com.example.converter.UserConverter;
import com.example.model.User;
import com.example.repository.UserEntityRepository;
import org.springframework.stereotype.Service;

@Service
public class UserServices {

    private final UserEntityRepository userEntityRepository;
    private final UserConverter userConverter;

    public UserServices(UserEntityRepository userEntityRepository, UserConverter userConverter) {
        this.userEntityRepository = userEntityRepository;
        this.userConverter = userConverter;
    }

    public UserDto getUser(Long id) {

        return userConverter.entityToDto(userEntityRepository.findById(id).orElse(null));

    }


}
