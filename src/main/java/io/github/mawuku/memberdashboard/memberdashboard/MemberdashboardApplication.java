package io.github.mawuku.memberdashboard.memberdashboard;

import com.github.javafaker.Faker;
import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;
import io.github.mawuku.memberdashboard.memberdashboard.repository.PaymentRepository;
import io.github.mawuku.memberdashboard.memberdashboard.repository.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.time.LocalTime;
import java.util.concurrent.TimeUnit;

@SpringBootApplication
public class MemberdashboardApplication {

	public static void main(String[] args) {
		SpringApplication.run(MemberdashboardApplication.class, args);
	}

	@Bean
	CommandLineRunner commandLineRunner(UserRepository userRepository, PaymentRepository paymentRepository) {
		return args -> {
		for (int i = 0; i <= 100; i++) {
			//generating values with faker
			Faker faker = new Faker();

			/**
			 * timeStamp
			 * type
			 * amount
			 * balance
			 * payedTo
			 */
			//Payments init
			 String type = "CREDIT";
			 Double amount = (Double)(Math.random()*100);
			 Double balance = (Double)(Math.random()*100);
			 String payedTo = faker.name().firstName();

			Payment payment = new Payment();
			payment.setAmount(amount);
			payment.setBalance(balance);
			payment.setPayedTo(payedTo);
			payment.setType(type);

			paymentRepository.save(payment);
			//user init
			String surname = faker.name().lastName();
			String firstName = faker.name().firstName();
			String otherName = faker.name().firstName();
			String email = String.format("%s.%s@gmail.com.au", firstName, surname);
			String phoneNumber = faker.phoneNumber().cellPhone();


			//Creating user
			User user = new User();

			user.setFirstName(firstName);
			user.setSurname(surname);
			user.setOtherName(otherName);
			user.setEmail(email);
			user.setPhoneNumber(phoneNumber);

			userRepository.save(user);

		}
		};

	}

}
