package com.ssm.serviceImpl;

import com.ssm.dao.UserDao;
import com.ssm.po.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    /*查询用户*/
    public User findUserById(Integer id) {
        return this.userDao.findUserById(id);
    }

    /*添加用户*/
    @Override
    public void addById(User user) {
        this.userDao.addById(user);
    }

    @Override
    public void deleteById(Integer id) {
        this.userDao.deleteById(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public List<User> findAll() {
        return this.userDao.findAll();
    }


}
