package com.example.DTO;

import com.example.model.Event;
import lombok.Data;

import java.util.HashSet;
import java.util.Set;

@Data

public class UserDto {

    private String email;
    private String password;
    private String nick;
    private Set<Event> events = new HashSet<>();

}
