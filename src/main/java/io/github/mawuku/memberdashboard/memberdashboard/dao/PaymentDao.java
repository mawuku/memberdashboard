package io.github.mawuku.memberdashboard.memberdashboard.dao;

import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;

import java.util.List;

public interface PaymentDao {

    void addPayment(Payment payment);

    List<Payment> getAllPayments();
}
