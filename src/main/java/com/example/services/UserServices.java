package com.example.services;

import com.example.DTO.UserDto;
import com.example.converter.UserConverter;
import com.example.model.User;
import com.example.repository.UserEntityRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServices {

    private final UserEntityRepository userEntityRepository;
    private final UserConverter userConverter;
    private final PasswordEncoder passwordEncoder;


    public UserDto getUser(Long id) {
        return userConverter.entityToDto(userEntityRepository.findById(id).orElse(null));
    }

    public void addUserPost(UserDto userDto) {
        User user = userConverter.dtoToEntity(userDto);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userEntityRepository.save(user);
    }
}
