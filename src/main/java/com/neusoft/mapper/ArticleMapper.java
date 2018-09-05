package com.neusoft.mapper;

import com.neusoft.bean.Article;
import com.neusoft.bean.ArticleInfo;

import java.util.List;
import java.util.Map;

public interface ArticleMapper {
    int addArticle(Article article);
    List<Map<String,Object>> queryArticleByPage(String category);
    ArticleInfo queryArticleByAid(int aid);
    List<Map<String,Object>> getMoreArticle(Map<String,Object> map);
    //使用Map作为返回值，不想改动前面那个方法 虽然功能类似
    Map<String,Object> getArticleByAid(int aid);
    List<Map<String,Object>> getHotArticle();
}
