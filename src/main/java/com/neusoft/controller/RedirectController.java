package com.neusoft.controller;

import com.neusoft.bean.UserInfo;
import com.neusoft.service.IArticleService;
import com.neusoft.service.ICommentInfoService;
import com.neusoft.service.IFollowerService;
import com.neusoft.service.IUserService;
import org.apache.solr.client.solrj.SolrServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class RedirectController {

    @Autowired
    IUserService userService;

    @Autowired
    ICommentInfoService commentInfoService;

    @Autowired
    IFollowerService followerService;

    @Autowired
    SolrServer solrServer;

    @Autowired
    IArticleService articleService;

    @RequestMapping("register_login/{login}")
    public String register_login(@PathVariable String login,Model model,HttpServletRequest request){
        model.addAttribute("model",login);
        String referer = request.getHeader("referer");
        model.addAttribute("referer",referer);
        return "register_login";
    }

    @RequestMapping("user/{id}")
    public String toUser(@PathVariable int id, HttpServletRequest request,Model model){
        UserInfo user1 = (UserInfo) request.getSession().getAttribute("user");
        commentInfoService.quertCommentByIdAndFollowed(model,id,user1);
        return "user";
    }

    @RequestMapping("/admin/editor_user")
    public String toEditUser(){
        return "editor_user";
    }

    @RequestMapping("search")
    public String toSearch(String keyword, Model model, HttpSession session,HttpServletRequest request){
        System.out.println("yyyyyyyyyyyy");
        System.out.println(keyword);
        UserInfo user = (UserInfo) session.getAttribute("user");
        articleService.askQuestions(model,keyword,user,request,0,8);
        List<Map<String,Object>> list = userService.queryUserByKeyWord(keyword);
        model.addAttribute("user_list",list);
        model.addAttribute("keyword",keyword);
        return "search";
    }
}
