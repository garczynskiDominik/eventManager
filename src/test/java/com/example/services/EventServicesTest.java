package com.example.services;

import com.example.DTO.EventDto;
import com.example.converter.EventConverter;
import com.example.converter.UserConverter;
import com.example.model.Event;
import com.example.model.User;
import com.example.repository.EventRepository;
import com.example.repository.UserEntityRepository;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;

import java.util.Date;
import java.util.HashSet;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

class EventServicesTest {
    private EventRepository eventRepository = mock(EventRepository.class);
    private UserEntityRepository userEntityRepository = mock(UserEntityRepository.class);


    @Test
    void getEvent() {
        EventServices eventServices = new EventServices(eventRepository, new EventConverter(new UserConverter()), userEntityRepository);
        when(eventRepository.findById(12L)).thenReturn(Optional.of(new Event(12L, "dsa", new Date(), new Date(), "dsd", "dsd", "sds", new User(), new HashSet<>())));
        EventDto event = eventServices.getEvent(12L);

        assertEquals(event.getId(), 12);
    }
}