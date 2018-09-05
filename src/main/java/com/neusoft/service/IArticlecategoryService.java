package com.neusoft.service;

import com.neusoft.bean.Articlecategory;

public interface IArticlecategoryService {
    int addArticlecategory(Articlecategory articlecategory);
    Articlecategory isArticlecategoryExist(Articlecategory articlecategory);
}
