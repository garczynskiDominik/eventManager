package com.example.services;

import com.example.model.Event;
import com.example.repository.EventRepository;
import org.springframework.stereotype.Service;

@Service
public class EventServices {

    private final EventRepository eventRepository;

    public EventServices(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }


    public Event getEvent(Long id) {
        return eventRepository.findById(id).orElse(null);
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
