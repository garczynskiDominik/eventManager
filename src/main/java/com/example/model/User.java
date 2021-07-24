package com.example.model;

import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name = "users")
public class User extends BaseEntity {

    private String email;
    private String password;
    private String nick;
    private boolean enable = true;
    private String roles = "ROLE_ADMIN";


    @ManyToMany(
            cascade = {CascadeType.MERGE, CascadeType.PERSIST}
    )
    @JoinTable(
            name = "users_events",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "event_id")
    )
    private Set<Event> events = new HashSet<>();


    @ElementCollection(fetch = FetchType.EAGER)
    private Set<String> role = new HashSet<>();

    public void addEvent(Event event) {
        this.events.add(event);
        event.getUsers().add(this);
    }

    public void removeEvent(Event event) {
        this.events.remove(event);
        event.getUsers().remove(this);
    }
}
