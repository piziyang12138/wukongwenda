package com.neusoft.service;

import com.neusoft.bean.Articlecategory;
import com.neusoft.mapper.ArticlecategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticlecategoryService implements IArticlecategoryService{

    @Autowired
    ArticlecategoryMapper articlecategoryMapper;

    public int addArticlecategory(Articlecategory articlecategory){
        Articlecategory articlecategory1 = articlecategoryMapper.isArticlecategoryExist(articlecategory);
        if (articlecategory1 != null){
            return 0;
        }else {
            return articlecategoryMapper.addArticlecategory(articlecategory);
        }
    }

    @Override
    public Articlecategory isArticlecategoryExist(Articlecategory articlecategory) {
        return articlecategoryMapper.isArticlecategoryExist(articlecategory);
    }
}
