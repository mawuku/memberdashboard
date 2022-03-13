package io.github.mawuku.memberdashboard.memberdashboard;

import com.github.javafaker.Faker;
import io.github.mawuku.memberdashboard.memberdashboard.builders.AddressBuilder;
import io.github.mawuku.memberdashboard.memberdashboard.builders.UserBuilder;
import io.github.mawuku.memberdashboard.memberdashboard.model.Address;
import io.github.mawuku.memberdashboard.memberdashboard.model.Gender;
import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;
import io.github.mawuku.memberdashboard.memberdashboard.repository.PaymentRepository;
import io.github.mawuku.memberdashboard.memberdashboard.repository.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;
import java.util.concurrent.TimeUnit;

@SpringBootApplication
public class MemberdashboardApplication {

	public static void main(String[] args) {
		SpringApplication.run(MemberdashboardApplication.class, args);
	}

	@Bean
	CommandLineRunner commandLineRunner(UserRepository userRepository, PaymentRepository paymentRepository) {
		return args -> {

//			//Set Date
//			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");
//			String date = "19/01/1987";
//			LocalDate localDate = LocalDate.parse(date, formatter);
			List<Payment> userTestPayment = new ArrayList<>();
			Formatter formatter = new Formatter();

			//Faking for user specific transaction details
			/*
			trying to mock user payment details to test user payment page.
			 */

			for (int j = 0; j <= 100; j++) {
				//generating values with faker
				Faker fakerPayment = new Faker();

				//Payments init
				String type = "CREDIT";
				Double amountPayment = (Double) (Math.random() * 100);
				Double balancePayment = (Double) (Math.random() * 100);
				String payedToPayment = fakerPayment.name().firstName();


				Payment paymentPayment = new Payment();
				paymentPayment.setAmount(amountPayment);
				paymentPayment.setBalance(balancePayment);
				paymentPayment.setPayedTo(payedToPayment);
				paymentPayment.setType(type);
				paymentPayment.setTimeStamp(LocalTime.now());
				paymentPayment.setTransactionDate(LocalDate.now());

				userTestPayment.add(paymentPayment);
				paymentRepository.save(paymentPayment);

			}


				//Test user MK
			Address addr = new AddressBuilder().withUnitNumber("7")
					.withStreetNumber("96")
					.withStreetName("Adelaide Street")
					.withCity("Oxley Park")
					.withPostalCode("2760")
					.withState("NSW")
					.withCountry("Australia")
					.build();

			User mk = new UserBuilder().withSurname("Awuku")
					.withFirstName("Makafui")
					.withOtherName("Cudjoe")
					.withEmail("makafui.awuku@yahoo.com")
					.withPhoneNumber("0422775596")
					.withGender(Gender.MALE)
					.withMonthOfBirth("Jan")
					.withDayOfBirth("9")
					.withAddress(addr)
					.withPayment(userTestPayment)
					.build();

			userRepository.save(mk);

		// Faking for memberlist and all transaction details.
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
