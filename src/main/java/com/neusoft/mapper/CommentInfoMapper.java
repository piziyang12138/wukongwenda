package com.neusoft.mapper;

import com.neusoft.bean.Commentinfo;

import java.util.List;
import java.util.Map;

public interface CommentInfoMapper {
    int addComment(Commentinfo commentinfo);
    List<Map<String,Object>> queryCommentByAid(int aid);
    List<Map<String,Object>> queryCommentInfoById(int id);
    int AnswerCount(int aid);
    Map<String,Object> getOneComment(int aid);
}
