package com.example.DTO;


import com.example.model.Event;
import lombok.Data;
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
