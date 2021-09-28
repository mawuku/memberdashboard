package io.github.mawuku.memberdashboard.memberdashboard.controller;

import io.github.mawuku.memberdashboard.memberdashboard.dao.PaymentDao;
import io.github.mawuku.memberdashboard.memberdashboard.dao.UserDao;
import io.github.mawuku.memberdashboard.memberdashboard.dao.daoimpl.UserDaoImpl;
import io.github.mawuku.memberdashboard.memberdashboard.model.Payment;
import io.github.mawuku.memberdashboard.memberdashboard.model.RegisterCmd;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;
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

        model.addAttribute(user);

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
    public String addProductPost(@ModelAttribute("cmd") RegisterCmd cmd, HttpServletRequest request) {

       // System.out.println(cmd.toString());
        cmd.getUser().setAddress(cmd.getAddress());
        cmd.getUser().setDateOfBirth(DateUtility.convertToLocalDate(cmd.getUser().getDayOfBirth(), cmd.getUser().getMonthOfBirth()));
        mem.addUser(cmd.getUser());

        return "redirect:/memberList";
    }


    @RequestMapping("/editUserDetails")
    public String editUserDetails() {
        return "editUserDetails";
    }

}
