package io.github.mawuku.memberdashboard.memberdashboard.model;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "member")
public class User implements Serializable {

    @Id
    @SequenceGenerator(
            name = "member_sequence",
            sequenceName = "member_sequence",
            allocationSize = 1,
            initialValue = 100

    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "member_sequence"
    )
    private long id;

    @Column(name = "surname")
    private String surname;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "other_name")
    private String otherName;

    @Column(name = "email")
    private String email;

    @ManyToOne
    @JoinColumn(name = "address_fk")
    private Address address;

    @Column(name = "date_of_birth")
    private LocalDate dateOfBirth;

    @Column(name = "phone_number")
    private String phoneNumber;

    //Check on using at Enumerated here
    @Column(name = "gender")
    private String gender;

    @OneToMany
    @JoinColumn(name = "member_fk")
    @Column(name = "payments")
    private List<Payment> payments;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<Payment> getPayments() {
        return payments;
    }

    public void setPayments(List<Payment> payments) {
        this.payments = payments;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getOtherName() {
        return otherName;
    }

    public void setOtherName(String otherName) {
        this.otherName = otherName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }
    //May have to overload the this method.
    public void setGender(Enum gender) {
        this.gender = gender.toString();
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", surname='" + surname + '\'' +
                ", firstName='" + firstName + '\'' +
                ", otherName='" + otherName + '\'' +
                ", email='" + email + '\'' +
                ", address=" + address +
                ", dateOfBirth=" + dateOfBirth +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", gender='" + gender + '\'' +
                ", payments=" + payments +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof User))
            return false;
        User otherUser = (User) o;
        return (otherUser.phoneNumber.equals(phoneNumber)) || (otherUser.email.equals(email));
    }

    @Override
    public int hashCode() {
        int result = phoneNumber.hashCode();
        result = 31 * result + email.hashCode();
        return result;
    }
}
