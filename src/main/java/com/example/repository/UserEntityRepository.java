package com.example.repository;

import com.example.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserEntityRepository extends JpaRepository<User, Long> {

    User findByNick(String nick);

    Optional<User> findById(Long id);

    List<User> findAll();

    User save(User user);

    Optional<User> findByEmailIgnoreCase(String username);
}

