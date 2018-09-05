package com.neusoft.util;

import java.util.List;
import java.util.Map;

/**
 * Created by ttc on 2018/7/25.
 */
public class ArticlesWarp {
    private List<Map<String,Object>> list;
    private int start;
    private String keyword;

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public List<Map<String,Object>> getList() {
        return list;
    }

    public void setList(List<Map<String,Object>> list) {
        this.list = list;
    }
}
