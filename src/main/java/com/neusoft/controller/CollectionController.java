package com.neusoft.controller;

import com.neusoft.bean.CollectionInfo;
import com.neusoft.bean.UserInfo;
import com.neusoft.service.ICollectionInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("collection")
public class CollectionController {
    @Autowired
    ICollectionInfoService collectionInfoService;


    @RequestMapping("admin/collection")
    public void collection(int aid, HttpServletRequest request, HttpServletResponse response){
        UserInfo user = (UserInfo) request.getSession().getAttribute("user");

        CollectionInfo collectionInfo = new CollectionInfo();
        collectionInfo.setArticleid((long) aid);
        collectionInfo.setUserid(user.getId());

        CollectionInfo collectionInfo1 = collectionInfoService.hasCollected(collectionInfo);

        if (collectionInfo1 != null){
            collectionInfoService.delCollection(collectionInfo);
        }
        else{
            collectionInfoService.addCollection(collectionInfo);
        }


        try {
            response.getWriter().print("successful");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
