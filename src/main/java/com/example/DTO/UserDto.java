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

@Getter
@Setter
@NoArgsConstructor


public class UserDto {

    private String email;
    private String password;
    private String nick;
    private Set<Event> events = new HashSet<>();
    private String author;


    public UserDto(String email, String password, String nick, Set<Event> events) {
        this.email = email;
        this.password = password;
        this.nick = nick;
        this.events = events;
        //this.author = new EventServices().getUser();
    }
}
