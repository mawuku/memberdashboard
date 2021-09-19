package io.github.mawuku.memberdashboard.memberdashboard.dao;

import io.github.mawuku.memberdashboard.memberdashboard.model.User;

import java.util.List;

public interface UserDao {

    void addUser(User val);

    void editUser(User val);

    User getUserById(Long val);

    List<User> getAllUsers();

    void deleteUser(User val);
}
