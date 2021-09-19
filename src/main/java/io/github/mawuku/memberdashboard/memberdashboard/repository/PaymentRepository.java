package io.github.mawuku.memberdashboard.memberdashboard.repository;

import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface PaymentRepository extends JpaRepository<Payment, Long> {

}
