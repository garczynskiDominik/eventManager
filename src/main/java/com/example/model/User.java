package com.example.model;

import lombok.*;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Table;
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
    private  String roles = "ROLE_USER";
    @ElementCollection(fetch = FetchType.EAGER)
    private Set<String> role = new HashSet<>();






}
