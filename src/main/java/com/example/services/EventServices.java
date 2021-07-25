package com.example.services;

import com.example.DTO.EventDto;
import com.example.converter.EventConverter;
import com.example.model.Event;
import com.example.model.User;
import com.example.repository.EventDao;
import com.example.repository.EventRepository;
import com.example.repository.UserEntityRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class EventServices {

    private final EventRepository eventRepository;
    private final EventConverter eventConverter;
    private final UserEntityRepository userEntityRepository;
    private final EventDao eventDao;

    public EventServices(EventRepository eventRepository, EventConverter eventConverter, UserEntityRepository userEntityRepository, EventDao eventDao) {
        this.eventRepository = eventRepository;
        this.eventConverter = eventConverter;
        this.userEntityRepository = userEntityRepository;
        this.eventDao = eventDao;
    }

    public EventDto getEvent(Long id) {
        Event event = eventRepository.findById(id).orElse(null);
        return eventConverter.entityToDto(event);
    }

    public void editEvent(Event event, Long id) {
        Event editEvent1 = new Event(
                id,
                event.getNameOfEvent(),
                event.getStartDate(),
                event.getEndDate(),
                event.getDescription(),
                event.getImg(),
                event.getType(),
                event.getAuthor(),
                event.getUsers()
        );
        eventRepository.save(editEvent1);
    }

    public void userSaveToEvent(Long id) {

        Event event = eventRepository.findById(id).orElse(null);
        User userToEvent = getUser();
        userToEvent.addEvent(event);
        eventRepository.save(event);
    }

    public void userDeleteFromEvent(Long id) {

        Event event = eventRepository.findById(id).orElse(null);
        User userToEvent = getUser();
        userToEvent.removeEvent(event);
        eventRepository.save(event);
    }

    public User getUser() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String nick;
        if (principal instanceof UserDetails) {
            nick = ((UserDetails) principal).getUsername();
        } else {
            nick = principal.toString();
        }
        return userEntityRepository.findByNick(nick);
    }


    public void getEvents(Model model) {
        List<Event> list = eventRepository.findAll();
        List<EventDto> listDtos = eventConverter.entityToDto(list);
        model.addAttribute("event", listDtos);
    }

    public void addEventPost(EventDto eventDto) {
        Event event = eventConverter.dtoToEntity(eventDto);
        event.setAuthor(getUser());
        eventRepository.save(event);
    }

    public void saveEditEvent(Event event, Long id) {
        event.setId(id);
        editEvent(event, id);
    }

    public void findEvent(Model model, String value) {
        List<Event> list = eventDao.findEventsByNameAndType(value);
        List<EventDto> listDtos = eventConverter.entityToDto(list);
        model.addAttribute("event", listDtos);
    }
}

