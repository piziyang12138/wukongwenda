package com.neusoft.service;

import com.neusoft.bean.Follower;

import java.util.Set;

public interface IFollowerService {
    int addFollower(Follower follower);
    Follower isFollowed(Follower follower);
    int delFollower(Follower follower);
    Set<Integer> queryAllFollower(int id);
    int queryFollowedCount(int id);
}
