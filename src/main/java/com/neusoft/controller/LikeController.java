package com.neusoft.controller;

import com.neusoft.bean.Likeorunlike;
import com.neusoft.bean.UserInfo;
import com.neusoft.service.ILikeService;
import com.neusoft.util.JedisClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("like")
public class LikeController {
    @Autowired
    ILikeService likeService;

    @Autowired
    private JedisClient jedisClient;

    @Value("${REDIS_ITEM_PRE}")
    private String REDIS_ITEM_PRE;

    @RequestMapping("admin/like")
    public void like(int cid, int islike,int aid, HttpServletRequest request, HttpServletResponse response){
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");

        Likeorunlike likeorunlike = new Likeorunlike();
        likeorunlike.setCommentid((long) cid);
        likeorunlike.setIslike((long) islike);
        likeorunlike.setUserid(user.getId());

        if (likeService.isLiked(likeorunlike) != null){
            likeService.delLike(likeorunlike);
        }else{
            likeService.addLike(likeorunlike);
        }
        try {
            response.getWriter().print("successful");
        } catch (IOException e) {
            e.printStackTrace();
        }
        jedisClient.del(REDIS_ITEM_PRE + ":" + aid);
    }
}
