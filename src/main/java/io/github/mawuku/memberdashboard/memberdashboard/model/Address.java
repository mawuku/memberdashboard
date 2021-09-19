package io.github.mawuku.memberdashboard.memberdashboard.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "address")
public class Address implements Serializable {

    @Id
    @SequenceGenerator(
            name = "address_sequence",
            sequenceName = "address_sequence",
            allocationSize = 1,
            initialValue = 1

    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "address_sequence"
    )
    private long id;

    @Column(name = "unit_number")
    private String unitNumber;

    @Column(name = "street_number")
    private String streetName;

    @Column(name = "city")
    private String city;

    @Column(name = "state")
    private String state;

    @Column(name = "postal_code")
    private String postalCode;

    @Column(name = "country")
    private String country;

    @OneToMany(mappedBy = "address")
    @Column(name = "users")
    private List<User> users;

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUnitNumber() {
        return unitNumber;
    }

    public void setUnitNumber(String unitNumber) {
        this.unitNumber = unitNumber;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", unitNumber='" + unitNumber + '\'' +
                ", streetName='" + streetName + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", country='" + country + '\'' +
                ", users=" + users +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Address))
            return false;
        Address otherAddress = (Address) o;
        if ((otherAddress.getCountry().equals(country)) && (otherAddress.getState().equals(state))
                && (otherAddress.getPostalCode().equals(postalCode))
                && (otherAddress.getCity().equals(city))
                && (otherAddress.getStreetName().equals(streetName))
                && (otherAddress.getUnitNumber().equals(unitNumber)))

            return true;
        return false;
    }

    @Override
    public int hashCode() {
        int result = country.hashCode();
        result = 31 * result + state.hashCode();
        result = 31 * result + postalCode.hashCode();
        result = 31 * result + city.hashCode();
        result = 31 * result + streetName.hashCode();
        result = 31 * result + unitNumber.hashCode();
        return result;
    }


}
