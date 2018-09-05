package com.neusoft.mapper;

import com.neusoft.bean.User;
import com.neusoft.bean.UserInfo;

import java.util.List;
import java.util.Map;

/**
 * Created by ttc on 2018/8/2.
 */
public interface UserMapper {
    int addUser(UserInfo user);
    UserInfo isUsername(User user);
    UserInfo isUserExist(UserInfo user);
    int updateUserById(UserInfo user);
    UserInfo queryUserById(int id);
    List<Map<String,Object>> queryUserByKeyWord(String keyword);
}
