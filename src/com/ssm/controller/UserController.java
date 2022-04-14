package com.ssm.controller;

import com.ssm.po.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /*
     * 根据ID查询用户详情
     *
     * */
    @RequestMapping("/findUserById")
    public String findUserById(Integer id, Model model) {
        User user = userService.findUserById(id);
        model.addAttribute("user", user);
        //返回用户信息展示页
        return "user";
    }

    @RequestMapping("/addUser")
    public String addUser(){
        return "addById";
    }

    //添加
    @RequestMapping("/addById")
    @ResponseBody
    public User addById(@RequestBody User user){
        userService.addById(user);
        String id = user.getId();
        String username = user.getUsername();
        System.out.println("id="+id);
        System.out.println("username="+username);
        return user;
    }
    //删除
    @RequestMapping("/deleteById")
    public String deleteById(Integer id){
        userService.deleteById(id);
        return  "redirect:findAll";
    }
    //修改的页面
    @RequestMapping("/edit")
    public String edit(Integer id, Model model){
        model.addAttribute("id", id);

        return  "edit";
    }
    //修改的接口
    @RequestMapping("/update")
    @ResponseBody
    public User update(@RequestBody User user){
       userService.update(user);
       return user ;
    }

    //查看所有
    @RequestMapping("/userList")
    @ResponseBody
    public List<User> userList(){
        List<User> userList=userService.findAll();
        for (User user1:userList){
            System.out.println(user1.toString());
        }
        return userList;
    }
    //返回页面
    @RequestMapping("/findAll")
    public String findAll(){
        return "findAll";
    }

}
