package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Table;
import java.util.HashSet;
import java.util.Set;

@Data
@Entity
@Table(name = "users")
public class UserEntity extends BaseEntity {

    private String username;
    private String password;
    @ElementCollection(fetch = FetchType.EAGER)
    private Set<String> role = new HashSet<>();

    public UserEntity(String username, String password, Set<String> role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public UserEntity() {

    }
}
