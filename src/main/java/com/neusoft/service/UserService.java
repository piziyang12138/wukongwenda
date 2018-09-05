package com.neusoft.service;

import com.neusoft.bean.User;
import com.neusoft.bean.UserInfo;
import com.neusoft.mapper.FollowerMapper;
import com.neusoft.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserService implements IUserService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    FollowerMapper followerMapper;

    @Override
    public int addUser(UserInfo user) {
        return userMapper.addUser(user);
    }

    @Override
    public UserInfo isUsername(User user) {
        return userMapper.isUsername(user);
    }

    @Override
    public UserInfo isUserExist(UserInfo user) {
        return userMapper.isUserExist(user);
    }

    @Override
    public int updateUserById(UserInfo user) {
        return userMapper.updateUserById(user);
    }

    @Override
    public UserInfo queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    @Override
    public List<Map<String,Object>> queryUserByKeyWord(String keyword) {
        List<Map<String,Object>> list = userMapper.queryUserByKeyWord(keyword);
        for (Map<String,Object> map:list){
            int count = followerMapper.queryFollowedCount((int)map.get("id"));
            map.put("follwedcount",count);
        }
        return list;
    }
}
