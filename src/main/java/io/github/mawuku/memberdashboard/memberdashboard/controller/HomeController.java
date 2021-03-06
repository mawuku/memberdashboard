package io.github.mawuku.memberdashboard.memberdashboard.controller;

import io.github.mawuku.memberdashboard.memberdashboard.dao.PaymentDao;
import io.github.mawuku.memberdashboard.memberdashboard.dao.UserDao;
import io.github.mawuku.memberdashboard.memberdashboard.dao.daoimpl.UserDaoImpl;
import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.model.RegisterCmd;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;
import io.github.mawuku.memberdashboard.memberdashboard.model.UserPaymentCmd;
import io.github.mawuku.memberdashboard.memberdashboard.utility.DateUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserDao mem;
    @Autowired
    private PaymentDao pay;
    @Autowired
    private UserPaymentCmd userPaymentDetails;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/memberList")
    public String getUsers(Model model) {
        List<User> allUsers = mem.getAllUsers();
        model.addAttribute("allUsers", allUsers);
        return "memberList";
    }

    @RequestMapping("/paymentList")
    public String getPayments(Model model) {
        List<Payment> allPayments = pay.getAllPayments();
        model.addAttribute("allPayments", allPayments);
        return "paymentList";
    }

    @RequestMapping("/memberList/viewUserDetails/{id}")
    public String getUserDetailsView(@PathVariable Long id, Model model) {

        User user = mem.getUserById(id);
        User user1 = DateUtility.adjustUserDate(user);
        model.addAttribute(user1);

        return "viewUserDetails";
    }

    @RequestMapping("/memberList/addUserDetails")
    public String addUserDetails(Model model) {
        //Register class contains address & User used for jsp form
        RegisterCmd cmd = new RegisterCmd();
        model.addAttribute("cmd", cmd);
        return "addUserDetails";
    }

    @RequestMapping(value = "/memberList/addUserDetails", method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("cmd") RegisterCmd cmd, HttpServletRequest request) {

       // System.out.println(cmd.toString());
        cmd.getUser().setAddress(cmd.getAddress());
        cmd.getUser().setDateOfBirth(DateUtility.convertToLocalDate(cmd.getUser().getDayOfBirth(), cmd.getUser().getMonthOfBirth()));
        mem.addUser(cmd.getUser());

        return "redirect:/memberList";
    }


    @RequestMapping("/memberList/editUserDetails/{id}")
    public String editUserDetails(@PathVariable Long id, Model model) {

        User user = mem.getUserById(id);
        user = DateUtility.adjustUserDate(user);
        model.addAttribute(user);

        return "editUserDetails";
    }

    @RequestMapping(value = "/memberList/editUserDetails", method = RequestMethod.POST)
    public String editUserDetailsPost(@ModelAttribute("user") User user, Model model, HttpServletRequest request) {


        user.setDateOfBirth(DateUtility.convertToLocalDate(user.getDayOfBirth(),user.getMonthOfBirth()));
        mem.editUser(user);

        return "redirect:/memberList";
    }

    @RequestMapping("/memberList/paymentDetails/{id}")
    public String viewUserPaymentDetails(@PathVariable Long id, Model model) {

        User userWithPayment = mem.getUserById(id);
        List<Payment> userPayments = userWithPayment.getPayments();
        userPaymentDetails.setUser(userWithPayment);
        userPaymentDetails.setUserPayment(userPayments);

        model.addAttribute("userPaymentDetails", userPaymentDetails);
        return "paymentDetails";
    }
}
