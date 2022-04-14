package com.ssm.service;

import com.ssm.po.User;

import java.util.List;

public interface UserService {
    User findUserById(Integer id);
    void addById(User user);

    void deleteById(Integer id);
    void update(User user);
    List<User> findAll();



}
