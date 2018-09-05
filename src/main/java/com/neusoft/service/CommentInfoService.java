package com.neusoft.service;

import com.neusoft.bean.Commentinfo;
import com.neusoft.bean.UserInfo;
import com.neusoft.mapper.CommentInfoMapper;
import com.neusoft.mapper.FollowerMapper;
import com.neusoft.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
public class CommentInfoService implements ICommentInfoService{

    @Autowired
    CommentInfoMapper commentInfoMapper;

    @Autowired
    FollowerMapper followerMapper;

    @Autowired
    UserMapper userMapper;


    @Override
    public int addComment(Commentinfo commentinfo) {
        return commentInfoMapper.addComment(commentinfo);
    }

    @Override
    public List<Map<String,Object>> queryCommentByAid(int aid) {
        return commentInfoMapper.queryCommentByAid(aid);
    }

    @Override
    public List<Map<String,Object>> queryCommentInfoById(int id) {
        return commentInfoMapper.queryCommentInfoById(id);
    }

    @Override
    public void quertCommentByIdAndFollowed(Model model, int id, UserInfo user) {
        List<Map<String,Object>> list = commentInfoMapper.queryCommentInfoById(id);
        UserInfo user1 = userMapper.queryUserById(id);
        boolean followed = false;
        if (user != null) {
            Set<Integer> set = followerMapper.queryAllFollower(user.getId().intValue());
            if (set.contains(id)){
                followed = true;
            }
        }
        model.addAttribute("comments",list);
        model.addAttribute("userinfo",user1);
        model.addAttribute("followed",followed);
    }

    @Override
    public int AnswerCount(int aid) {
        return commentInfoMapper.AnswerCount(aid);
    }

    @Override
    public Map<String,Object> getOneComment(int aid) {
        return commentInfoMapper.getOneComment(aid);
    }
}
