package com.neusoft.controller;

import com.neusoft.bean.Follower;
import com.neusoft.bean.UserInfo;
import com.neusoft.service.IFollowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("follower")
public class FollowController {

    @Autowired
    IFollowerService followerService;


    @RequestMapping("admin/follow")
    public void addFollow(int followedid, HttpServletRequest request, HttpServletResponse response){
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");

        Follower follower = new Follower();
        follower.setFollowedid((long) followedid);
        follower.setFollowid(user.getId());


        if (followerService.isFollowed(follower) != null){
            followerService.delFollower(follower);
        }
        else{
            followerService.addFollower(follower);
        }

        try {
            response.getWriter().print("successful");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
