package com.neusoft.service;

import com.neusoft.bean.User;
import com.neusoft.bean.UserInfo;

import java.util.List;
import java.util.Map;

public interface IUserService {
    int addUser(UserInfo user);
    UserInfo isUsername(User user);
    UserInfo isUserExist(UserInfo user);
    int updateUserById(UserInfo user);
    UserInfo queryUserById(int id);
    List<Map<String,Object>> queryUserByKeyWord(String keyword);
}
