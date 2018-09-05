package com.neusoft.service;

import com.neusoft.bean.Commentinfo;
import com.neusoft.bean.UserInfo;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;

public interface ICommentInfoService {
    int addComment(Commentinfo commentinfo);
    List<Map<String,Object>> queryCommentByAid(int aid);
    List<Map<String,Object>> queryCommentInfoById(int id);
    void quertCommentByIdAndFollowed(Model model, int id, UserInfo user);
    int AnswerCount(int aid);
    Map<String,Object> getOneComment(int aid);
}
