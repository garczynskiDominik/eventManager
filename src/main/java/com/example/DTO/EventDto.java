package com.example.DTO;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

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
}
