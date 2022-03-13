package io.github.mawuku.memberdashboard.memberdashboard.builders;



import io.github.mawuku.memberdashboard.memberdashboard.model.Address;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;

import java.util.List;


public class AddressBuilder {

    private long id;
    private String unitNumber;
    private String streetNumber;
    private String streetName;
    private String city;
    private String state;
    private String postalCode;
    private String country;
    private List<User> users;

    public AddressBuilder() {}

    public AddressBuilder withId(long val) {
        id =val;
        return this;
    }

    public AddressBuilder withUnitNumber(String val) {
        unitNumber = val;
        return this;
    }

    public AddressBuilder withStreetNumber(String val) {
        streetNumber = val;
        return this;
    }

    public AddressBuilder withStreetName(String val) {
        streetName = val;
        return this;
    }

    public AddressBuilder withCity(String val) {
        city = val;
        return this;
    }

    public AddressBuilder withState(String val) {
        state = val;
        return this;
    }

    public AddressBuilder withPostalCode(String val) {
        postalCode = val;
        return this;
    }

    public AddressBuilder withCountry(String val) {
        country = val;
        return this;
    }

    public AddressBuilder withUser(List<User> val) {
        users = val;
        return this;
    }

    public Address build() {
        //return new AddressBuilder(this);
        Address add = new Address();
        add.setId(id);
        add.setCountry(country);
        add.setState(state);
        add.setPostalCode(postalCode);
        add.setCity(city);
        add.setStreetNo(streetNumber);
        add.setStreetName(streetName);
        add.setUnitNumber(unitNumber);
        add.setUsers(users);

        return add;
    }

}


