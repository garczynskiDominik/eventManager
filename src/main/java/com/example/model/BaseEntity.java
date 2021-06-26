package com.example.model;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;
import java.util.UUID;

@Getter
@Setter
@MappedSuperclass
@NoArgsConstructor
public class BaseEntity {

    @Id
    private Long id;
    private String uuid = UUID.randomUUID().toString();
    @Version
    private long version;

    public BaseEntity(Long id, String uuid, long version) {
        this.id = id;
        this.uuid = uuid;
        this.version = version;
    }
}
