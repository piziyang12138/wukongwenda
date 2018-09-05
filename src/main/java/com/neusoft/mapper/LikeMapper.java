package com.neusoft.mapper;

import com.neusoft.bean.Likeorunlike;

import java.util.Set;

public interface LikeMapper {
    int addLike(Likeorunlike likeorunlike);
    Likeorunlike isLiked(Likeorunlike likeorunlike);
    int delLike(Likeorunlike likeorunlike);
    Set<Long> queryAllLikes(int id);
    Set<Long> queryAllUnLikes(int id);
    int likeCount(int cid);
    int unlikeCount(int cid);
}
