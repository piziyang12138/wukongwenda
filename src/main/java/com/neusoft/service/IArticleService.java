package com.neusoft.service;

import com.neusoft.bean.Article;
import com.neusoft.bean.ArticleInfo;
import com.neusoft.bean.User;
import com.neusoft.bean.UserInfo;
import com.neusoft.util.ArticlesWarp;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public interface IArticleService {
    int addArticle(Article article);
    List<Map<String,Object>> queryArticleByPage(String category);
    ArticleInfo queryArticleByAid(int aid);
    List<Map<String,Object>> getMoreArticle(Map<String,Object> map);
    Map<String,Object> getArticleByAid(int aid);
    void getLikeAndArticle(User user, Model model, HttpServletRequest request,String category);
    void to_article(int aid, UserInfo user,Model model,HttpServletRequest request);
    void getMoreArticle(Map<String,Object> map,UserInfo user,HttpServletRequest request, HttpServletResponse response);
    void askQuestions(Model model,String keyword,UserInfo user,HttpServletRequest request,int start,int size);
    ArticlesWarp askQuestions(String keyword, UserInfo user, int aid, int size,HttpServletRequest request);
    void getHotArticle(Model model);
}
