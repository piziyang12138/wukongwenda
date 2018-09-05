package com.neusoft.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.bean.UserInfo;
import com.neusoft.service.IArticleService;
import com.neusoft.util.ArticlesWarp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("search")
public class SearchController {

    @Autowired
    IArticleService articleService;

    @RequestMapping("getmore")
    public void getmore(String keyword,int aid, Model model, HttpServletRequest request, HttpServletResponse response){
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");
        ArticlesWarp articlesWarp = articleService.askQuestions(keyword,user,aid-1,8,request);
        try {
            response.getWriter().print(JSON.toJSONString(articlesWarp));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
