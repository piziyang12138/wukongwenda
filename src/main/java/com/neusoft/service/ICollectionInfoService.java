package com.neusoft.service;

import com.neusoft.bean.CollectionInfo;

public interface ICollectionInfoService {
    int addCollection(CollectionInfo collectionInfo);
    CollectionInfo hasCollected(CollectionInfo collectionInfo);
    int delCollection(CollectionInfo collectionInfo);
    int countCollection(int cid);
}
