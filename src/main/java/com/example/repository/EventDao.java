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

        Predicate namePredicate = cb.like(cb.upper(event.get("nameOfEvent")), "%" + value.toUpperCase()+ "%");
        Predicate typePredicate = cb.like(cb.upper(event.get("type")), "%" + value.toUpperCase() + "%");
        Predicate descriptionPredicate = cb.like(cb.upper(event.get("description")), "%" + value.toUpperCase() + "%");

        Predicate or = cb.or(namePredicate, typePredicate, descriptionPredicate);
        cq.where(or);

        TypedQuery<Event> query = em.createQuery(cq);
        return query.getResultList();
    }
}
