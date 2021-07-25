package com.example.controller;

import com.example.DTO.EventDto;
import com.example.model.Event;
import com.example.repository.EventRepository;
import com.example.services.EventServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.transaction.Transactional;

@Controller
public class EventController {

    private final EventServices eventServices;
    private final EventRepository eventRepository;


    public EventController(EventServices eventServices, EventRepository eventRepository) {
        this.eventServices = eventServices;
        this.eventRepository = eventRepository;
    }

    @RequestMapping(value = {"/event"}, method = RequestMethod.GET)
    public String getEvents(Model model) {
        eventServices.getEvents(model);
        return "event/event";
    }

    @RequestMapping(value = {"/event/addEvent"}, method = RequestMethod.GET)
    public String getAddEvent() {
        return "event/addEvent";
    }

    @RequestMapping(value = {"/event/addEvent"}, method = RequestMethod.POST)
    public RedirectView postAddEvent(@ModelAttribute EventDto eventDto) {
        eventServices.addEventPost(eventDto);
        return new RedirectView("/event");
    }

    @RequestMapping(value = {"/event/editEvent/{id}"}, method = RequestMethod.POST)
    public RedirectView postEditEvent(@ModelAttribute Event event, @PathVariable("id") Long id) {
        eventServices.saveEditEvent(event, id);
        return new RedirectView("/event");
    }

    @RequestMapping(value = {"/event/editEvent/{id}"}, method = RequestMethod.GET)
    public String getEditEvent(Model model, @PathVariable("id") Long id) {
        model.addAttribute("event", eventServices.getEvent(id));
        return "event/editEvent";
    }

    @Transactional
    @RequestMapping(value = {"/event/deleteEvent/{id}"}, method = {RequestMethod.POST, RequestMethod.DELETE})
    public RedirectView deleteEvent(@PathVariable("id") Long id) {
        eventRepository.deleteById(id);
        return new RedirectView("/event");
    }

    @RequestMapping(value = {"/event/infoEvent/{id}"}, method = RequestMethod.GET)
    public String getInfoAboutEvent(Model model, @PathVariable("id") Long id) {
        model.addAttribute("event", eventServices.getEvent(id));
        return "event/infoEvent";
    }

    @RequestMapping(value = {"/event/search"}, method = RequestMethod.GET)
    public String getFindEvent(Model model, @RequestParam("value") String value) {
        eventServices.findEvent(model, value);
        return "event/event";
    }

    @RequestMapping(value = {"/event/saveOnEvent/{id}"}, method = {RequestMethod.GET})
    public RedirectView saveUserOnEvent(@PathVariable("id") Long id) {
        eventServices.userSaveToEvent(id);
        return new RedirectView("/event");
    }

    @RequestMapping(value = {"/event/deleteFromEvent/{id}"}, method = {RequestMethod.GET})
    public RedirectView deleteUserFromEvent(@PathVariable("id") Long id) {
        eventServices.userDeleteFromEvent(id);
        return new RedirectView("/event");
    }
}
