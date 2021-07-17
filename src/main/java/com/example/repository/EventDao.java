package com.example.repository;

import com.example.model.Event;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class EventDao {

    EntityManager em;

    public EventDao(EntityManager em) {
        this.em = em;
    }

    List<Event> findEventsByNameAndType(String nameOfEvent, String type) {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Event> cq = cb.createQuery(Event.class);


        Root<Event> event = cq.from(Event.class);
        Predicate namePredicate = cb.equal(event.get("name"), nameOfEvent);
        Predicate typePredicate = cb.like(event.get("type"), "%" + type + "%");
        cq.where(namePredicate, typePredicate);

        TypedQuery<Event> query = em.createQuery(cq);
        return query.getResultList();
    }
}
