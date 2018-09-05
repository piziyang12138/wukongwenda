package com.neusoft.service;

import com.neusoft.bean.CollectionInfo;
import com.neusoft.mapper.ArticleMapper;
import com.neusoft.mapper.CollectionInfoMapper;
import com.neusoft.mapper.CommentInfoMapper;
import com.neusoft.mapper.LikeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CollectionInfoService implements ICollectionInfoService {
    @Autowired
    ArticleMapper articleMapper;

    @Autowired
    LikeMapper likeMapper;

    @Autowired
    CommentInfoMapper commentInfoMapper;

    @Autowired
    CollectionInfoMapper collectionInfoMapper;

    @Override
    public int addCollection(CollectionInfo collectionInfo) {
        return collectionInfoMapper.addCollection(collectionInfo);
    }

    @Override
    public CollectionInfo hasCollected(CollectionInfo collectionInfo) {
        return collectionInfoMapper.hasCollected(collectionInfo);
    }

    @Override
    public int delCollection(CollectionInfo collectionInfo) {
        return collectionInfoMapper.delCollection(collectionInfo);
    }

    @Override
    public int countCollection(int cid) {
        return collectionInfoMapper.countCollection(cid);
    }
}
