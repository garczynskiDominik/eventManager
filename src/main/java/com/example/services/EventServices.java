package com.example.services;

import com.example.DTO.EventDto;
import com.example.converter.EventConverter;
import com.example.model.Event;
import com.example.model.User;
import com.example.repository.EventRepository;
import com.example.repository.UserEntityRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

@Service
public class EventServices {

    private final EventRepository eventRepository;
    private final EventConverter eventConverter;
    private final UserEntityRepository userEntityRepository;

    public EventServices(EventRepository eventRepository, EventConverter eventConverter, UserEntityRepository userEntityRepository) {
        this.eventRepository = eventRepository;
        this.eventConverter = eventConverter;
        this.userEntityRepository = userEntityRepository;
    }

    public EventDto getEvent(Long id) {
        Event event = eventRepository.findById(id).orElse(null);
        return eventConverter.entityToDto(event);
    }

    public void editEvent(Event event) {
        eventRepository.save(event);
    }

    public void userSaveToEvent(Long id) {

        Event event = eventRepository.findById(id).orElse(null);
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String nick;
        if (principal instanceof UserDetails) {
            nick = ((UserDetails) principal).getUsername();
        } else {
            nick = principal.toString();
        }
        User userToEvent = userEntityRepository.findByNick(nick);
        userToEvent.addEvent(event);
        eventRepository.save(event);
    }

    public void userDeleteFromEvent(Long id) {

        Event event = eventRepository.findById(id).orElse(null);
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String nick;
        if (principal instanceof UserDetails) {
            nick = ((UserDetails) principal).getUsername();
        } else {
            nick = principal.toString();
        }
        User userToEvent = userEntityRepository.findByNick(nick);
        userToEvent.removeEvent(event);
        eventRepository.save(event);

    }


}

