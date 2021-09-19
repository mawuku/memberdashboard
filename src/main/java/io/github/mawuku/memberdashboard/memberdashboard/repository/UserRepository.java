package io.github.mawuku.memberdashboard.memberdashboard.repository;

import io.github.mawuku.memberdashboard.memberdashboard.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface UserRepository extends JpaRepository<User, Long> {

}
