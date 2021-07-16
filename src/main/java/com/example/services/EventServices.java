package com.example.services;

import com.example.DTO.EventDto;
import com.example.converter.EventConverter;
import com.example.model.Event;
import com.example.repository.EventRepository;
import org.springframework.stereotype.Service;

@Service
public class EventServices {

    private final EventRepository eventRepository;
    private final EventConverter eventConverter;

    public EventServices(EventRepository eventRepository, EventConverter eventConverter) {
        this.eventRepository = eventRepository;
        this.eventConverter = eventConverter;
    }

    public EventDto getEvent(Long id) {
        Event event = eventRepository.findById(id).orElse(null);
        return eventConverter.entityToDto(event);
    }

    public void editEvent(Event event, Long id) {
        Event edit = new Event(
                id,
                event.getNameOfEvent(),
                event.getStartDate(),
                event.getEndDate(),
                event.getDescription(),
                event.getImg()
        );

        eventRepository.save(edit);
    }
}
