package com.neusoft.controller;

import com.neusoft.bean.UserInfo;
import com.neusoft.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    IUserService userService;
    @RequestMapping("edit")
    public void edit_user(String username,String introduction, HttpServletRequest request, HttpServletResponse response){

        UserInfo user = (UserInfo) request.getSession().getAttribute("user");

        if (username != null) {
            user.setUsername(username);
        }

        if (introduction != null){
            user.setIntroduction(introduction);
        }

        userService.updateUserById(user);
        request.getSession().setAttribute("user",user);
    }

    @RequestMapping("edit_picpath")
    public void editpicpath(String picpath,HttpServletRequest request,HttpServletResponse response){
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");
        user.setPicpath(picpath);
        userService.updateUserById(user);
        request.getSession().setAttribute("user",user);
        try {
            response.getWriter().print("success");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
