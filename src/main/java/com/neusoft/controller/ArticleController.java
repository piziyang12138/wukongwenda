package com.neusoft.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bean.Article;
import com.neusoft.bean.User;
import com.neusoft.bean.UserInfo;
import com.neusoft.service.IArticleService;
import com.neusoft.service.ICommentInfoService;
import com.neusoft.service.IFollowerService;
import com.neusoft.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.neusoft.util.ArticleWrap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("article")
public class ArticleController {

    @Autowired
    IUserService userService;

    @Autowired
    ICommentInfoService commentInfoService;

    @Autowired
    IFollowerService followerService;

    @Autowired
    IArticleService articleService;

    @RequestMapping("/{aid}")
    public String to_article(@PathVariable int aid, HttpSession session, Model model, HttpServletRequest request){
        UserInfo user = (UserInfo) session.getAttribute("user");
        articleService.to_article(aid,user,model,request);
        session.setAttribute("user",user);
        return "article";
    }

    @RequestMapping("getmore")
    public void getMoreArticle(String category,int aid,HttpServletRequest request,HttpServletResponse response){
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");
        Map<String,Object> map = new HashMap<>();
        map.put("aid",aid);
        map.put("category",category);
        articleService.getMoreArticle(map,user,request,response);
    }

    @RequestMapping("/admin/add")
    public void add(Article article,HttpServletResponse response,HttpSession session){

        User user = (User)session.getAttribute("user");

        article.setUserid(user.getId());

        articleService.addArticle(article);

        ArticleWrap articleWrap = new ArticleWrap();
        articleWrap.setAid(article.getAid().intValue());
        articleWrap.setTitle(article.getTitle());
        try {
            response.getWriter().print(JSON.toJSONString(articleWrap));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
