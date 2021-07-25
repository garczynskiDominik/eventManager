package com.example.converter;

import com.example.DTO.EventDto;
import com.example.model.Event;
import com.example.services.EventServices;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class EventConverter {

    private final UserConverter userConverter;

    public EventConverter(UserConverter userConverter) {
        this.userConverter = userConverter;
    }


    public EventDto entityToDto(Event event) {
        EventDto dto = new EventDto();
        dto.setId(event.getId());
        dto.setNameOfEvent(event.getNameOfEvent());
        dto.setDescription(event.getDescription());
        dto.setImg(event.getImg());
        dto.setStartDate(event.getStartDate());
        dto.setEndDate(event.getEndDate());
        dto.setType(event.getType());
        dto.setUsers(event.getUsers());
        dto.setAuthor(userConverter.entityToDto(event.getAuthor()));
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
        event.setStartDate(eventDto.getStartDate());
        event.setEndDate(eventDto.getEndDate());
        event.setType(eventDto.getType());
        event.setUsers(eventDto.getUsers());
        event.setAuthor(event.getAuthor());

        return event;
    }

    public List<Event> dtoToEntity(List<EventDto> eventDtos) {
        return eventDtos.stream()
                .map(x -> dtoToEntity(x))
                .collect(Collectors.toList());
    }
}
