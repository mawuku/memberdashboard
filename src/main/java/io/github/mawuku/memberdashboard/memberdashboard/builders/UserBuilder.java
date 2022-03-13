package io.github.mawuku.memberdashboard.memberdashboard.builders;



import io.github.mawuku.memberdashboard.memberdashboard.model.Address;
import io.github.mawuku.memberdashboard.memberdashboard.model.Gender;
import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;
import io.github.mawuku.memberdashboard.memberdashboard.utility.DateUtility;

import java.time.LocalDate;
import java.util.List;

public class UserBuilder {

    private long id;
    private String surname;
    private String firstName;
    private String otherName;
    private String email;
    private Address address;
    private LocalDate dateOfBirth;
    private String monthOfBirth;
    private String dayOfBirth;
    private String phoneNumber;
    private Enum gender;
    private List<Payment> payments;

    public UserBuilder(){}

    public UserBuilder withId (long val) {
        this.id = val;
        return this;
    }

    public UserBuilder withSurname(String val) {
        surname = val;
        return this;
    }

    public UserBuilder withFirstName(String val) {
        firstName = val;
        return this;
    }

    public UserBuilder withOtherName(String val){
        otherName = val;
        return this;
    }

    public UserBuilder withEmail(String val) {
        email = val;
        return this;
    }

    public UserBuilder withAddress(Address val) {
        address = val;
        return this;
    }

    public UserBuilder withDateOfBirth(LocalDate val) {
        dateOfBirth = val;
        return this;
    }

    public UserBuilder withMonthOfBirth(String val) {
        monthOfBirth = val;
        return this;
    }

    public UserBuilder withDayOfBirth(String val) {
        dayOfBirth = val;
        return this;
    }

    public UserBuilder withPhoneNumber(String val) {
        phoneNumber = val;
        return this;
    }

    public UserBuilder withGender(Gender val) {
        gender = val;
        return this;
    }

    public UserBuilder withPayment(List<Payment> val) {
        payments = val;
        return this;
    }

    public User build() {
        User user = new User();

        user.setId(id);
        user.setFirstName(firstName);
        user.setSurname(surname);
        user.setOtherName(otherName);
        user.setEmail(email);
        user.setGender(gender);
        user.setDateOfBirth(dateOfBirth);
        user.setDayOfBirth(dayOfBirth);
        user.setMonthOfBirth(monthOfBirth);
        user.setPhoneNumber(phoneNumber);
        user.setAddress(address);
        user.setPayments(payments);

        if(user.getDateOfBirth() == null) {
            user.setDateOfBirth(DateUtility.convertToLocalDate(user.getDayOfBirth(),user.getMonthOfBirth()));
        }

        return user;
    }

}


