package com.example.converter;

import com.example.DTO.EventDto;
import com.example.model.Event;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class EventConverter {

    public EventDto entityToDto(Event event) {
        EventDto dto = new EventDto();
        dto.setId(event.getId());
        dto.setNameOfEvent(event.getNameOfEvent());
        dto.setDescription(event.getDescription());
        dto.setImg(event.getImg());

        return dto;
    }

    public List<EventDto> entityToDto(List<Event> events) {
        return events.stream()
                .map(x -> entityToDto(x))
                .collect(Collectors.toList());
    }

    public Event dtoToEntity(EventDto eventDto) {
        Event event = new Event();
        event.setId(eventDto.getId());
        event.setNameOfEvent(eventDto.getNameOfEvent());
        event.setDescription(eventDto.getDescription());
        event.setImg(eventDto.getImg());

        return event;
    }

    public List<Event> dtoToEntity(List<EventDto> eventDtos) {
        return eventDtos.stream()
                .map(x -> dtoToEntity(x))
                .collect(Collectors.toList());
    }
}
