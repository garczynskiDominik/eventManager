package com.example.repository;

import com.example.model.Event;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;
import java.util.Optional;

@Repository
public interface EventRepository extends JpaRepository<Event, Long> {
    Optional<Event> findById(Long id);

    List<Event> findAll();

    void deleteById(Long id);

    Event save(Event event);



}
