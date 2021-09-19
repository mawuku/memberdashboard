package io.github.mawuku.memberdashboard.memberdashboard.dao.daoimpl;

import io.github.mawuku.memberdashboard.memberdashboard.dao.UserDao;
import io.github.mawuku.memberdashboard.memberdashboard.model.User;
import io.github.mawuku.memberdashboard.memberdashboard.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserDaoImpl implements UserDao {

    @Autowired
    private UserRepository userRepo;

    @Override
    public void addUser(User val) {

        userRepo.save(val);
    }

    @Override
    public void editUser(User val) {

    }

    @Override
    public User getUserById(Long val) {
        return null;
    }

    @Override
    public List<User> getAllUsers() {
        List<User> allUsers = userRepo.findAll();
        return allUsers;
    }

    @Override
    public void deleteUser(User val) {

    }
}
