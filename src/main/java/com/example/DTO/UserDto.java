package com.example.DTO;

import com.example.converter.EventConverter;
import com.example.model.Event;
import com.example.repository.EventRepository;
import com.example.repository.UserEntityRepository;
import com.example.services.EventServices;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Data

public class UserDto {

    private Long id;
    private String email;
    private String password;
    private String nick;
    private String author;
    private Set<Event> events = new HashSet<>();




}
