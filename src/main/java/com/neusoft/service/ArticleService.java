package com.neusoft.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.neusoft.bean.*;
import com.neusoft.mapper.*;
import com.neusoft.util.ArticlesWarp;
import com.neusoft.util.JedisClient;
import com.neusoft.util.fastdfsTemlate.FastDFSTemplate;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@Service
public class ArticleService implements IArticleService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    ArticleMapper articleMapper;

    @Autowired
    LikeMapper likeMapper;

    @Autowired
    CommentInfoMapper commentInfoMapper;

    @Autowired
    CollectionInfoMapper collectionInfoMapper;

    @Autowired
    FollowerMapper followerMapper;

    @Autowired
    IArticlecategoryService articlecategoryService;

    @Autowired
    SolrServer solrServer;

    @Autowired
    FastDFSTemplate fastDFSTemplate;

    @Autowired
    private JedisClient jedisClient;

    @Value("${REDIS_ITEM_PRE}")
    private String REDIS_ITEM_PRE;

    @Value("${ITEM_CACHE_EXPIRE}")
    private Integer ITEM_CACHE_EXPIRE;


    @Override
    public int addArticle(Article article) {
        articleMapper.addArticle(article);
        //添加类别
        Articlecategory articlecategory = new Articlecategory();
        articlecategory.setArticleid(article.getAid().intValue());
        articlecategory.setCategory("热门");
        //添加进solr

        ArticleInfo articleInfo = articleMapper.queryArticleByAid(article.getAid().intValue());
        UUID uuid = UUID.randomUUID();
        SolrInputDocument solrDocument = new SolrInputDocument();
        solrDocument.addField("id", uuid.toString());
        solrDocument.addField("article_title", articleInfo.getTitle());
        solrDocument.addField("article_content", articleInfo.getContent() == null ? "" : articleInfo.getContent());
        solrDocument.addField("article_aid", articleInfo.getAid());
        solrDocument.addField("article_userid", articleInfo.getUserid());
        solrDocument.addField("article_createtime", articleInfo.getCreatetime());
        solrDocument.addField("article_tags", articleInfo.getTags() == null ? "" : articleInfo.getTags());
        solrDocument.addField("article_picpath", articleInfo.getPicpath() == null ? "" : articleInfo.getPicpath());
        try {
            solrServer.add(solrDocument);
            solrServer.commit();
        } catch (SolrServerException | IOException e) {
            e.printStackTrace();
        }
        return articlecategoryService.addArticlecategory(articlecategory);
    }

    @Override
    public List<Map<String, Object>> queryArticleByPage(String category) {
        return articleMapper.queryArticleByPage(category);
    }

    @Override
    public ArticleInfo queryArticleByAid(int aid) {
        return articleMapper.queryArticleByAid(aid);
    }

    @Override
    public List<Map<String, Object>> getMoreArticle(Map<String, Object> map) {
        return articleMapper.getMoreArticle(map);
    }

    @Override
    public Map<String, Object> getArticleByAid(int aid) {
        return articleMapper.getArticleByAid(aid);
    }

    @Override
    public void getLikeAndArticle(User user, Model model, HttpServletRequest request, String category) {
        List<Map<String, Object>> articles = articleMapper.queryArticleByPage(category);
        Set<Long> like_set;
        Set<Long> unlike_set;

        for (Map<String, Object> map : articles) {
            Object html = map.get("chtml");
            if (html != null) {
                Document document = Jsoup.parse(html.toString());
                Element img = document.selectFirst("img");
                if (img != null) {
//                System.out.println(img.attr("src"));
                    map.put("img", img.attr("src"));
                }
//            System.out.println(document.body().text());
                String text = document.body().text();
                map.put("chtml", text.length() > 90 ? text.substring(0, 90) + "..." : text);
            }
        }
        if (user != null) {
            like_set = likeMapper.queryAllLikes(user.getId().intValue());
            unlike_set = likeMapper.queryAllUnLikes(user.getId().intValue());
            if (like_set.size() != 0) {
                for (Map<String, Object> map : articles) {
                    if (like_set.contains(Long.parseLong(map.get("cid").toString()))) {
                        map.put("Islike", true);
                    }
                }
            }
            if (unlike_set.size() != 0) {
                for (Map<String, Object> map : articles) {
                    if (unlike_set.contains(Long.parseLong(map.get("cid").toString()))) {
                        map.put("Isunlike", true);
                    }
                }
            }
        }

        model.addAttribute("articles", articles);
    }


    @Override
    public void to_article(int aid, UserInfo user, Model model, HttpServletRequest request) {
        String jsonArticle = null;
        try {
            jsonArticle = jedisClient.hget(REDIS_ITEM_PRE + ":" + aid,"article");
        } catch (Exception e) {
            e.printStackTrace();
        }
        ArticleInfo article = null;
        List<Map<String, Object>> list = null;
        CollectionInfo collectionInfo1 = null;
        if (jsonArticle != null && !jsonArticle.isEmpty()){
            article = JSON.parseObject(jsonArticle,new TypeReference<ArticleInfo>() {});
            String jsonList = jedisClient.hget(REDIS_ITEM_PRE + ":" + aid,"list");
            list = JSON.parseObject(jsonList,new TypeReference<List<Map<String, Object>>>() {});
            String jsonCollectionInfo1 = jedisClient.hget(REDIS_ITEM_PRE + ":" + aid,"collectionInfo1");
            collectionInfo1 = JSON.parseObject(jsonCollectionInfo1,new TypeReference<CollectionInfo>() {});
        }else{
            list = commentInfoMapper.queryCommentByAid(aid);
            article = articleMapper.queryArticleByAid(aid);
            if (article.getTags() != null) {
                article.setTag_list(Arrays.asList(article.getTags().split(",")));
            }
            for (Map<String, Object> map : list) {
                Object html = map.get("chtml");
                if (html != null) {
                    map.put("chtml", html);
                }

            }
            int row = 0;
            if (user != null) {
                CollectionInfo collectionInfo = new CollectionInfo();
                collectionInfo.setArticleid((long) aid);
                collectionInfo.setUserid(user.getId());
                collectionInfo1 = collectionInfoMapper.hasCollected(collectionInfo);

                user = userMapper.queryUserById(user.getId().intValue());

                Set<Integer> set = followerMapper.queryAllFollower(user.getId().intValue());

                Set<Long> like_set;
                Set<Long> unlike_set;
                like_set = likeMapper.queryAllLikes(user.getId().intValue());
                unlike_set = likeMapper.queryAllUnLikes(user.getId().intValue());

                if (set.size() != 0) {
                    for (Map<String, Object> map : list) {
                        if (set.contains((int) map.get("userid"))) {
                            map.put("hasFollowed", true);
                        } else {
                            map.put("hasFollowed", false);
                        }
                    }
                }
                for (Map<String, Object> map : list) {
                    if (like_set.contains(Long.parseLong(map.get("cid").toString()))) {
                        map.put("islike", true);
                    }else {
                        map.put("islike",false);
                    }
                    if (unlike_set.contains(Long.parseLong(map.get("cid").toString()))) {
                        map.put("isunlike", true);
                    }else{
                        map.put("isunlike",false);
                    }
                }
            }
            try {
                jedisClient.hset(REDIS_ITEM_PRE + ":" + aid,"article", JSON.toJSONString(article));
                jedisClient.hset(REDIS_ITEM_PRE + ":"  + aid,"list", JSON.toJSONString(list));
                jedisClient.hset(REDIS_ITEM_PRE + ":"  + aid,"collectionInfo1", JSON.toJSONString(collectionInfo1));
                jedisClient.expire(REDIS_ITEM_PRE + ":" + aid,ITEM_CACHE_EXPIRE);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        model.addAttribute("article", article);
        model.addAttribute("comments", list);
        model.addAttribute("count", list.size());
        model.addAttribute("row", collectionInfo1 == null ? 0 : 1);
    }

    @Override
    public void getMoreArticle(Map<String, Object> values, UserInfo user, HttpServletRequest request, HttpServletResponse response) {
        List<Map<String, Object>> articles = articleMapper.getMoreArticle(values);
        Set<Long> like_set;
        Set<Long> unlike_set;
        for (Map<String, Object> map : articles) {
            Object html = map.get("chtml");
            if (html != null) {
                Document document = Jsoup.parse(html.toString());
                Element img = document.selectFirst("img");
                if (img != null) {
//                System.out.println(img.attr("src"));
                    map.put("img", img.attr("src"));
                }else{
                    map.put("img", null);
                }
//            System.out.println(document.body().text());
                String text = document.body().text();
                map.put("chtml", text.length() > 90 ? text.substring(0, 90) + "..." : text);
            }

        }
        if (user != null) {
            like_set = likeMapper.queryAllLikes(user.getId().intValue());
            unlike_set = likeMapper.queryAllUnLikes(user.getId().intValue());
            for (Map<String, Object> map : articles) {
                if (like_set.contains(Long.parseLong(map.get("cid").toString()))) {
                    map.put("islike", true);
                }else {
                    map.put("islike",false);
                }
                if (unlike_set.contains(Long.parseLong(map.get("cid").toString()))) {
                    map.put("isunlike", true);
                }else{
                    map.put("isunlike",false);
                }
            }
        }
        for (Map<String, Object> map : articles) {
            int collection_count = collectionInfoMapper.countCollection((int) map.get("aid"));
            map.put("collection_count", collection_count);
            int rescount = commentInfoMapper.AnswerCount((int) map.get("aid"));
            map.put("rescount", rescount);
            if (map.get("cid") != null) {
                int likecount = likeMapper.likeCount((int) map.get("cid"));
                int unlikecount = likeMapper.unlikeCount((int) map.get("cid"));
                map.put("likecount", likecount);
                map.put("unlikecount", unlikecount);
            }
        }
        ArticlesWarp articlesWarp = new ArticlesWarp();
        articlesWarp.setList(articles);

        try {
            response.getWriter().print(JSON.toJSONString(articlesWarp));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void askQuestions(Model model, String keyword, UserInfo user, HttpServletRequest request, int start, int size) {
        SolrQuery solrQuery = new SolrQuery();
        solrQuery.set("q", keyword);
        solrQuery.set("df", "article_keywords");//df=>default field
        solrQuery.setSort("article_aid", SolrQuery.ORDER.desc);
        solrQuery.setStart(start);
        solrQuery.setRows(size);

        //开启高亮显示
        solrQuery.setHighlight(true);
        solrQuery.addHighlightField("article_title");
        solrQuery.addHighlightField("article_content");
        solrQuery.setHighlightSimplePre("<em>");
        solrQuery.setHighlightSimplePost("</em>");

        QueryResponse queryResponse = null;
        try {
            queryResponse = solrServer.query(solrQuery);
        } catch (SolrServerException e) {
            e.printStackTrace();
        }

        SolrDocumentList solrDocumentList = queryResponse.getResults();
        List<Map<String, Object>> res = new ArrayList<>();
        Map<String, Map<String, List<String>>> mapMapHighlighting = queryResponse.getHighlighting();
        for (SolrDocument solrDocument : solrDocumentList) {
            String id = (String) solrDocument.get("id");
            int aid = (int) solrDocument.get("article_aid");
            Map<String, Object> map = articleMapper.getArticleByAid(aid);
            Map<String, List<String>> map1 = mapMapHighlighting.get(id);
            for (Map.Entry<String, List<String>> entry : map1.entrySet()) {
                if (entry.getKey().equals("article_title")) {
                    map.put("title", entry.getValue().get(0));
                }
                if (entry.getKey().equals("article_content")) {
                    map.put("content", entry.getValue().get(0));
                }
            }
            res.add(map);
        }
        for (Map<String, Object> map : res) {
            int collection_count = collectionInfoMapper.countCollection((int) map.get("aid"));
            map.put("collection_count", collection_count);
            int rescount = commentInfoMapper.AnswerCount((int) map.get("aid"));
            map.put("rescount", rescount);
            if (map.get("cid") != null) {
                int likecount = likeMapper.likeCount((int) map.get("cid"));
                int unlikecount = likeMapper.unlikeCount((int) map.get("cid"));
                map.put("likecount", likecount);
                map.put("unlikecount", unlikecount);
            }
        }
        Set<Long> like_set;
        Set<Long> unlike_set;
        if (user != null) {
            like_set = likeMapper.queryAllLikes(user.getId().intValue());
            unlike_set = likeMapper.queryAllUnLikes(user.getId().intValue());
            if (like_set.size() != 0) {
                for (Map<String, Object> map : res) {
                    if (map.get("cid") != null) {
                        if (like_set.contains(Long.parseLong(map.get("cid").toString()))) {
                            map.put("Islike", true);
                        }
                    }
                }
            }
            if (unlike_set.size() != 0) {
                for (Map<String, Object> map : res) {
                    if (map.get("cid") != null) {
                        if (unlike_set.contains(Long.parseLong(map.get("cid").toString()))) {
                            map.put("Isunlike", true);
                        }
                    }
                }
            }
        }
        for (Map<String, Object> map : res) {
            Object html = map.get("chtml");
            if (html != null) {
                Document document = Jsoup.parse(html.toString());
                Element img = document.selectFirst("img");
                if (img != null) {
//                System.out.println(img.attr("src"));
                    map.put("img", img.attr("src"));
                }
//            System.out.println(document.body().text());
                String text = document.body().text();
                map.put("chtml", text.length() > 90 ? text.substring(0, 90) + "..." : text);
            }

        }
        model.addAttribute("list", res);
    }

    @Override
    public ArticlesWarp askQuestions(String keyword, UserInfo user, int queryaid, int size, HttpServletRequest request) {
        SolrQuery solrQuery = new SolrQuery();
        solrQuery.set("q", keyword);
        solrQuery.set("df", "article_keywords");//df=>default field
        solrQuery.setSort("article_aid", SolrQuery.ORDER.desc);

        solrQuery.addFilterQuery("article_aid:[0 TO " + queryaid + "]");

        //开启高亮显示
        solrQuery.setHighlight(true);
        solrQuery.addHighlightField("article_title");
        solrQuery.addHighlightField("article_content");
        solrQuery.setHighlightSimplePre("<em>");
        solrQuery.setHighlightSimplePost("</em>");

        QueryResponse queryResponse = null;
        try {
            queryResponse = solrServer.query(solrQuery);
        } catch (SolrServerException e) {
            e.printStackTrace();
        }

        SolrDocumentList solrDocumentList = queryResponse.getResults();
        List<Map<String, Object>> res = new ArrayList<>();
        Map<String, Map<String, List<String>>> mapMapHighlighting = queryResponse.getHighlighting();
        for (SolrDocument solrDocument : solrDocumentList) {
            String id = (String) solrDocument.get("id");
            int aid = (int) solrDocument.get("article_aid");
            Map<String, Object> map = articleMapper.getArticleByAid(aid);
            Map<String, List<String>> map1 = mapMapHighlighting.get(id);
            for (Map.Entry<String, List<String>> entry : map1.entrySet()) {
                if (entry.getKey().equals("article_title")) {
                    map.put("title", entry.getValue().get(0));
                }
                if (entry.getKey().equals("article_content")) {
                    map.put("content", entry.getValue().get(0));
                }
            }
            res.add(map);
        }
        for (Map<String, Object> map : res) {
            int collection_count = collectionInfoMapper.countCollection((int) map.get("aid"));
            map.put("collection_count", collection_count);
            int rescount = commentInfoMapper.AnswerCount((int) map.get("aid"));
            map.put("rescount", rescount);
            if (map.get("cid") != null) {
                int likecount = likeMapper.likeCount((int) map.get("cid"));
                int unlikecount = likeMapper.unlikeCount((int) map.get("cid"));
                map.put("likecount", likecount);
                map.put("unlikecount", unlikecount);
            }
        }
        Set<Long> like_set;
        Set<Long> unlike_set;
        if (user != null) {
            like_set = likeMapper.queryAllLikes(user.getId().intValue());
            unlike_set = likeMapper.queryAllUnLikes(user.getId().intValue());
            if (like_set.size() != 0) {
                for (Map<String, Object> map : res) {
                    if (map.get("cid") != null) {
                        if (like_set.contains(Long.parseLong(map.get("cid").toString()))) {
                            map.put("Islike", true);
                        }
                    }
                }
            }
            if (unlike_set.size() != 0) {
                for (Map<String, Object> map : res) {
                    if (map.get("cid") != null) {
                        if (unlike_set.contains(Long.parseLong(map.get("cid").toString()))) {
                            map.put("Isunlike", true);
                        }
                    }
                }
            }
        }
        for (Map<String, Object> map : res) {
            Object html = map.get("chtml");
            if (html != null) {
                Document document = Jsoup.parse(html.toString());
                Element img = document.selectFirst("img");
                if (img != null) {
//                System.out.println(img.attr("src"));
                    map.put("img", img.attr("src"));
                }
//            System.out.println(document.body().text());
                String text = document.body().text();
                map.put("chtml", text.length() > 90 ? text.substring(0, 90) + "..." : text);
                map.put("keyword", keyword);
            }

        }
        ArticlesWarp articlesWarp = new ArticlesWarp();
        articlesWarp.setList(res);
        return articlesWarp;
    }

    @Override
    public void getHotArticle(Model model) {
        List<Map<String,Object>> hot = articleMapper.getHotArticle();
        for (Map<String, Object> map : hot) {
            Object html = map.get("chtml");
            if (html != null) {
                Document document = Jsoup.parse(html.toString());
                Element img = document.selectFirst("img");
                if (img != null) {
//                System.out.println(img.attr("src"));
                    map.put("img", img.attr("src"));
                }
//            System.out.println(document.body().text());
                String text = document.body().text();
                map.put("chtml", text.length() > 50 ? text.substring(0, 50) + "..." : text);
            }
        }
        model.addAttribute("hot",hot);
    }
}
