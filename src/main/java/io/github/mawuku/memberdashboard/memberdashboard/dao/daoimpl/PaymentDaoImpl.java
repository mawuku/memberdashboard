package io.github.mawuku.memberdashboard.memberdashboard.dao.daoimpl;

import io.github.mawuku.memberdashboard.memberdashboard.dao.PaymentDao;
import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PaymentDaoImpl implements PaymentDao {

    @Autowired
    private PaymentRepository paymentRepo;

    @Override
    public void addPayment(Payment payment) {

        paymentRepo.save(payment);

    }

    @Override
    public List<Payment> getAllPayments() {
        List<Payment> allPayment = paymentRepo.findAll();
        return allPayment;
    }


}
