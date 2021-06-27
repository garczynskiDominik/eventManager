package com.example.config;


import com.example.model.UserEntityDetails;
import com.example.repository.UserEntityRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class AppUserDetailsServices implements UserDetailsService {
    private final UserEntityRepository userEntityRepository;

    public AppUserDetailsServices(UserEntityRepository userEntityRepository) {
        this.userEntityRepository = userEntityRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return  userEntityRepository
                .findByEmailIgnoreCase(email)
                .map(UserEntityDetails::new)
                .orElseThrow(()-> new UsernameNotFoundException(email));
    }
}
