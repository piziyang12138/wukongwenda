package com.neusoft.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bean.Commentinfo;
import com.neusoft.bean.User;
import com.neusoft.service.ICommentInfoService;
import com.neusoft.util.CommentWrap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("comment")
public class CommentController {
    @Autowired
    ICommentInfoService commentInfoService;

    @RequestMapping("admin/add")
    public void addComment(Commentinfo commentinfo, HttpServletRequest request, HttpServletResponse response){

        User user = (User) request.getSession().getAttribute("user");

        commentinfo.setUserid(user.getId());
        commentInfoService.addComment(commentinfo);

        CommentWrap commentWrap = new CommentWrap();
        commentWrap.setContent(commentinfo.getChtml());
        commentWrap.setCreatetime(commentinfo.getCreatetime());
        commentWrap.setPicpath(user.getPicpath());
        commentWrap.setUsername(user.getUsername());
        commentWrap.setUserid(user.getId().intValue());
        try {
            response.getWriter().print(JSON.toJSONString(commentWrap));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
