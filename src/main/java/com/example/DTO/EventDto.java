package com.example.DTO;

import com.example.model.User;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Data
public class EventDto {

    private Long id;
    private String nameOfEvent;
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date startDate;
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date endDate;
    private String description;
    private String img;
    private String type;
    private Set<User> users = new HashSet<>();
}
