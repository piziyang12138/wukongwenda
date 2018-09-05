package com.neusoft.controller;

import com.neusoft.util.FastDFS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("img")
public class ImageUploadController {

    @Autowired
    FastDFS fastDFS;

    @RequestMapping("upload")
    public void upload(@RequestParam MultipartFile file, HttpServletRequest request, HttpServletResponse response){
        if (file == null){
            return;
        }
        try {
            File temp = File.createTempFile("temp_image","");
            file.transferTo(temp);
            String filepath = fastDFS.upload(temp);
            response.getWriter().print(filepath);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
