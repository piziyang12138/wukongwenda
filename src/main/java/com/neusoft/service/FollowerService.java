package com.neusoft.service;

import com.neusoft.bean.Follower;
import com.neusoft.mapper.FollowerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class FollowerService implements IFollowerService{

    @Autowired
    FollowerMapper followerMapper;

    @Override
    public int addFollower(Follower follower) {
        return followerMapper.addFollower(follower);
    }

    @Override
    public Follower isFollowed(Follower follower) {
        return followerMapper.isFollowed(follower);
    }

    @Override
    public int delFollower(Follower follower) {
        return followerMapper.delFollower(follower);
    }

    @Override
    public Set<Integer> queryAllFollower(int id) {
        return followerMapper.queryAllFollower(id);
    }

    @Override
    public int queryFollowedCount(int id) {
        return followerMapper.queryFollowedCount(id);
    }
}
