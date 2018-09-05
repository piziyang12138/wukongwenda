package com.neusoft.service;

import com.neusoft.bean.Likeorunlike;
import com.neusoft.mapper.LikeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Set;

@Service
public class LikeService implements ILikeService{

    @Autowired
    LikeMapper likeMapper;

    @Override
    public int addLike(Likeorunlike likeorunlike) {
        return likeMapper.addLike(likeorunlike);
    }

    @Override
    public Likeorunlike isLiked(Likeorunlike likeorunlike) {
        return likeMapper.isLiked(likeorunlike);
    }

    @Override
    public int delLike(Likeorunlike likeorunlike) {
        return likeMapper.delLike(likeorunlike);
    }

    @Override
    public Set<Long> queryAllLikes(int id) {
        return likeMapper.queryAllLikes(id);
    }

    @Override
    public Set<Long> queryAllUnLikes(int id) {
        return likeMapper.queryAllUnLikes(id);
    }

    @Override
    public int likeCount(int cid) {
        return likeMapper.likeCount(cid);
    }

    @Override
    public int unlikeCount(int cid) {
        return likeMapper.unlikeCount(cid);
    }
}
