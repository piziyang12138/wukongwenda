package com.neusoft.controller;


import com.neusoft.bean.UserInfo;
import com.neusoft.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

@Controller
public class HelloController {

    @Autowired
    IArticleService articleService;

    @Value("${REDIS_ITEM_PRE}")
    private String REDIS_ITEM_PRE;

    @Value("${ITEM_CACHE_EXPIRE}")
    private Integer ITEM_CACHE_EXPIRE;

    @RequestMapping("/")
    public String hello(Model model, HttpServletRequest request){
//        UserInfo user = (UserInfo) request.getSession().getAttribute("user");
//        articleService.getLikeAndArticle(user,model,request,"热门");
        articleService.getHotArticle(model);
        return "index";
    }

    @RequestMapping("large/{img}")
    public void getImg(@PathVariable String img, HttpServletResponse response, HttpServletRequest request) throws IOException {
        File image = new File(request.getServletContext().getRealPath("/")+"upload"+File.separator+img+".jpg");
        FileInputStream fi = new FileInputStream(image);
        int length = fi.available();
        byte data[] = new byte[length];
        fi.read(data);
        OutputStream os = response.getOutputStream();
        os.write(data);
        os.flush();
    }


}
