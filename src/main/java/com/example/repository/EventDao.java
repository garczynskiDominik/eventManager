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

    public List<Event> findEventsByNameAndType(String value) {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Event> cq = cb.createQuery(Event.class);


        Root<Event> event = cq.from(Event.class);

        Predicate namePredicate = cb.like(event.get("nameOfEvent"), "%" + value+ "%");
        Predicate typePredicate = cb.like(event.get("type"), "%" + value + "%");
        Predicate descriptionPredicate = cb.like(event.get("description"), "%" + value + "%");

        Predicate or = cb.or(namePredicate, typePredicate, descriptionPredicate);
        cq.where(or);

        TypedQuery<Event> query = em.createQuery(cq);
        return query.getResultList();
    }
}
