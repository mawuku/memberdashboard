package io.github.mawuku.memberdashboard.memberdashboard.controller;

import io.github.mawuku.memberdashboard.memberdashboard.dao.PaymentDao;
import io.github.mawuku.memberdashboard.memberdashboard.dao.UserDao;
import io.github.mawuku.memberdashboard.memberdashboard.dao.daoimpl.UserDaoImpl;
import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserDao mem;
    @Autowired
    private PaymentDao pay;

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

    @RequestMapping("/viewUserDetails")
    public String getUserDetailsView() {
        return "viewUserDetails";
    }

    @RequestMapping("/memberList/addUserDetails")
    public String addUserDetails() {
        return "addUserDetails";
    }

    @RequestMapping("/editUserDetails")
    public String editUserDetails() {
        return "editUserDetails";
    }

}
