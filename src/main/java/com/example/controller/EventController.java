package com.example.controller;

import com.example.DTO.EventDto;
import com.example.converter.EventConverter;
import com.example.model.Event;
import com.example.model.User;
import com.example.repository.EventDao;
import com.example.repository.EventRepository;
import com.example.repository.UserEntityRepository;
import com.example.services.EventServices;
import com.example.services.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.transaction.Transactional;
import java.util.List;

@Controller
public class EventController {

    private final EventServices eventServices;
    private final EventRepository eventRepository;
    private final EventConverter eventConverter;
    private final EventDao eventDao;

    public EventController(EventServices eventServices, EventRepository eventRepository, EventConverter eventConverter, EventDao eventDao) {
        this.eventServices = eventServices;
        this.eventRepository = eventRepository;
        this.eventConverter = eventConverter;
        this.eventDao = eventDao;
    }

    //get all
    @RequestMapping(value = {"/event"}, method = RequestMethod.GET)
    public String getEvent(Model model) {
        List<Event> list = eventRepository.findAll();
        List<EventDto> listDtos = eventConverter.entityToDto(list);
        model.addAttribute("event", listDtos);
        return "event/event";
    }

    //add
    @RequestMapping(value = {"/addEvent"}, method = RequestMethod.GET)
    public String getAddEvent() {
        return "event/addEvent";
    }

    //add
    @RequestMapping(value = {"/addEvent"}, method = RequestMethod.POST)
    public RedirectView postAddEvent(@ModelAttribute EventDto eventDto) {
        Event event = eventConverter.dtoToEntity(eventDto);
        eventRepository.save(event);
        return new RedirectView("/event");
    }

    //edit post
    @RequestMapping(value = {"/editEvent/{id}"}, method = RequestMethod.POST)
    public RedirectView saveEditEvent(@ModelAttribute Event event, @PathVariable("id") Long id) {
        eventServices.editEvent(event, id);
        return new RedirectView("/event");

    }

    //edit get
    @RequestMapping(value = {"/editEvent/{id}"}, method = RequestMethod.GET)
    public String getEditEvent(Model model, @PathVariable("id") Long id) {
        model.addAttribute("event", eventServices.getEvent(id));
        return "event/editEvent";
    }

    //delete
    @Transactional
    @RequestMapping(value = {"/deleteEvent/{id}"}, method = {RequestMethod.POST, RequestMethod.DELETE})
    public RedirectView deleteEvent(@PathVariable("id") Long id) {
        eventRepository.deleteById(id);
        return new RedirectView("/event");
    }

    @RequestMapping(value = {"/infoEvent/{id}"}, method = RequestMethod.GET)
    public String getInfoEvent(Model model, @PathVariable("id") Long id) {
        model.addAttribute("event", eventServices.getEvent(id));
        return "event/infoEvent";
    }

    @RequestMapping(value = {"/search"}, method = RequestMethod.GET)
    public String getEvent(Model model, @RequestParam("value") String value) {
        List<Event> list = eventDao.findEventsByNameAndType(value);
        List<EventDto> listDtos = eventConverter.entityToDto(list);
        model.addAttribute("event", listDtos);
        return "event/event";
    }
}
