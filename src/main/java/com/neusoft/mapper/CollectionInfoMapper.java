package com.neusoft.mapper;

import com.neusoft.bean.CollectionInfo;

public interface CollectionInfoMapper {
    int addCollection(CollectionInfo collectionInfo);
    CollectionInfo hasCollected(CollectionInfo collectionInfo);
    int delCollection(CollectionInfo collectionInfo);
    int countCollection(int cid);
}
