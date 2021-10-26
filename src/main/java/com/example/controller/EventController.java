package com.example.controller;

import com.example.DTO.EventDto;
import com.example.model.Event;
import com.example.services.EventServices;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.transaction.Transactional;

@Controller
@RequiredArgsConstructor
public class EventController {

    private final EventServices eventServices;

    @GetMapping(value = {"/event"})
    public String getEvents(Model model) {
        eventServices.getEvents(model);
        return "event/event";
    }

    @GetMapping(value = {"/event/addEvent"})
    public String getAddEvent() {
        return "event/addEvent";
    }

    @PostMapping(value = {"/event/addEvent"})
    public RedirectView postAddEvent(@ModelAttribute EventDto eventDto) {
        eventServices.addEventPost(eventDto);
        return new RedirectView("/event");
    }

    @PostMapping(value = {"/event/editEvent/{id}"})
    public RedirectView postEditEvent(@ModelAttribute Event event, @PathVariable("id") Long id) {
        eventServices.saveEditEvent(event, id);
        return new RedirectView("/event");
    }

    @GetMapping(value = {"/event/editEvent/{id}"})
    public String getEditEvent(Model model, @PathVariable("id") Long id) {
        eventServices.editEventGet(model, id);
        return "event/editEvent";
    }

    @Transactional
    @PostMapping(value = {"/event/deleteEvent/{id}"})
    public RedirectView deleteEvent(@PathVariable("id") Long id) {
        eventServices.delete(id);
        return new RedirectView("/event");
    }

    @GetMapping(value = {"/event/infoEvent/{id}"})
    public String getInfoAboutEvent(Model model, @PathVariable("id") Long id) {
        eventServices.getInfoEvent(model, id);
        return "event/infoEvent";
    }

    @GetMapping(value = {"/event/search"})
    public String getFindEvent(Model model, @RequestParam("value") String value) {
        eventServices.findEvent(model, value);
        return "event/event";
    }

    @GetMapping(value = {"/event/saveOnEvent/{id}"})
    public RedirectView saveUserOnEvent(@PathVariable("id") Long id) {
        eventServices.userSaveToEvent(id);
        return new RedirectView("/event");
    }

    @GetMapping(value = {"/event/deleteFromEvent/{id}"})
    public RedirectView deleteUserFromEvent(@PathVariable("id") Long id) {
        eventServices.userDeleteFromEvent(id);
        return new RedirectView("/event");
    }
}