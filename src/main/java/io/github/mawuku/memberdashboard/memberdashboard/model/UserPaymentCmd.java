package io.github.mawuku.memberdashboard.memberdashboard.model;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserPaymentCmd {

    private List<Payment> userPayment;
    private User user;


    public List<Payment> getUserPayment() {
        return userPayment;
    }

    public void setUserPayment(List<Payment> userPayment) {
        this.userPayment = userPayment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "UserPaymentCmd{" +
                "userPayment=" + userPayment +
                ", user=" + user +
                '}';
    }

    @Override
    public boolean equals(Object o) {

       if (!(o instanceof UserPaymentCmd) )
           return false;

       UserPaymentCmd otherUserPaymentCmd = (UserPaymentCmd) o;
       if (otherUserPaymentCmd.user.equals(user) && otherUserPaymentCmd.userPayment.equals(userPayment))
           return true;

       return false;
    }

}

