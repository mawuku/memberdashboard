package io.github.mawuku.memberdashboard.memberdashboard.model;

import org.springframework.stereotype.Component;


public class RegisterCmd {
    private User user;
    private Address address;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "RegisterCmd{" +
                "user=" + user +
                ", address=" + address +
                '}';
    }
}
