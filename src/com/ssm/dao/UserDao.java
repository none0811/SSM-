package com.ssm.dao;

import com.ssm.po.User;

import java.util.List;

/*
* User接口文件
* */
public interface UserDao {
    /*
    * 根据ID查询用户
    * */
    public User findUserById(Integer id);
    /*
    * 添加用户
    * */
    void addById(User user);

    void deleteById(Integer id);
    void update(User user);
    List<User> findAll();
}

