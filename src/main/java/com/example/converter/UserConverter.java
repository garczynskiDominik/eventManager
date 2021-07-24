package com.example.converter;

import com.example.DTO.UserDto;
import com.example.model.User;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class UserConverter {

    public UserDto entityToDto(User user) {
        UserDto dto = new UserDto();
        dto.setEmail(user.getEmail());
        dto.setPassword(user.getPassword());
        dto.setNick(user.getNick());
        dto.setEvents(user.getEvents());

        return dto;
    }

    public List<UserDto> entityToDto(List<User> users) {
        return users.stream()
                .map(x -> entityToDto(x))
                .collect(Collectors.toList());
    }

    public User dtoToEntity(UserDto userDto) {
        User user = new User();
        user.setEmail(userDto.getEmail());
        user.setPassword(userDto.getPassword());
        user.setNick(userDto.getNick());
        user.setEvents(userDto.getEvents());

        return user;
    }

    public List<User> dtoToEntity(List<UserDto> userDtos) {
        return userDtos.stream()
                .map(x -> dtoToEntity(x))
                .collect(Collectors.toList());
    }
}
