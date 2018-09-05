package com.neusoft.controller;

import com.neusoft.bean.User;
import com.neusoft.bean.UserInfo;
import com.neusoft.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.neusoft.util.GenerateCode;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

@Controller
@RequestMapping("loginAndregister")
public class LoginAndRegisterController {

    @Autowired
    IUserService userService;


    @RequestMapping("generatecode")
    public void generatecode(HttpServletRequest request, HttpServletResponse response) {
        int codeCount = 4;

        //验证码由哪些字符组成
        char[] codeSequence = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".toCharArray();

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < codeCount; i++) {
            Random random = new Random();
            int index = random.nextInt(62);
            sb.append(codeSequence[index]);
        }

        request.getSession().setAttribute("vertifycode", sb.toString());

        GenerateCode gc = new GenerateCode();
        BufferedImage image = gc.Generate(sb.toString());
        OutputStream os = null;
        try {
            os = response.getOutputStream();
            ImageIO.write(image, "jpg", os);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != os) {
                    os.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }

    @RequestMapping("checkcode")
    public void checkcode(String code,HttpServletRequest request,HttpServletResponse response) throws IOException {
        String right_code = (String)request.getSession().getAttribute("vertifycode");
        response.getWriter().print(code.equalsIgnoreCase(right_code) ? "successful" : "failed");
    }


    @RequestMapping("login")
    public String login(User user,HttpServletRequest request,String captcha1,String referer){
        UserInfo userInfo = new UserInfo();
        userInfo.setUsername(user.getUsername());
        userInfo.setPwd(user.getPwd());
        UserInfo userInfo1 = userService.isUserExist(userInfo);
        String checkcode = (String) request.getSession().getAttribute("vertifycode");
        if (!captcha1.equalsIgnoreCase(checkcode)){
            return "";
        }
        if (userInfo1 != null){
            userInfo1 = userService.queryUserById(userInfo1.getId().intValue());
            request.getSession().setAttribute("user",userInfo1);
            return "redirect:"+referer;
        }
        else{
            request.setAttribute("error","用户名或密码错误");
            return "redirect:/register_login/login";
        }
    }

    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }

    @RequestMapping("register")
    public String register(HttpSession session, UserInfo user, Model model,HttpServletRequest request){
        User user1 = userService.isUsername(user);
        if (user1 != null){
            model.addAttribute("error","用户名已存在");
            return request.getContextPath()+"register_login";
        }else{
            user.setPicpath("http://192.168.230.133/group1/M00/00/5C/wKjmhVt_QsaAB1BCAAAvWPyiDo4712_big.jpg");
            userService.addUser(user);
        }
        session.setAttribute("user",user);
        return "redirect:/";
    }
}
