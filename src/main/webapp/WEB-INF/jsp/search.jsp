<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/8/17
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="baidu-site-verification" content="6v2i5ZXAcT">
    <meta name="360-site-verification" content="d2d5af5afd7ab435d58bcb3decb28822">
    <meta name="google-site-verification" content="aGcHAsDaqk3chrC0a1ySOxLSc5oiqaV649yu7Xl7qjI">
    <meta name="sogou_site_verification" content="qpGA3ltIUV">
    <meta name="shenma-site-verification" content="34c05607e2a9430ad4249ed48faaf7cb_1432711730">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <title>悟空问答 - 搜索</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common_1b698e6.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search_c440f11.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <style>#BAIDU_DSPUI_FLOWBAR, .adsbygoogle, .ad, div[class^="ad-widsget"], div[id^="div-gpt-ad-"], a[href*="cpro.baidu.com"], a[href*="@"][href*=".exe"], a[href*="/?/"][href*=".exe"], .adpushwin {
        display: none !important;
        max-width: 0 !important;
        max-height: 0 !important;
        overflow: hidden !important;
    }

    </style>
    <style>
        em{
            color: red;
        }
    </style>
    <script src="${pageContext.request.contextPath}/layer/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <script src="${pageContext.request.contextPath}/thridpartjs/arttemplate.min.js"></script>
    <script>
        contextPath = '${pageContext.request.contextPath}';
    </script>
    <script src="${pageContext.request.contextPath}/js/search.js" charset="UTF-8"></script>
    <script src="${pageContext.request.contextPath}/js/header.js"></script>
</head>
<body data-log-from="SearchPage">

<div id="wrapper" data-log-from="">
    <div class=""></div>
    <%@include file="header.jsp" %>
    <div class="answer-wrapper"></div>
    <main class="main-container page-search tag-0">
        <div id="main-index-question-list" class="index-question-list">
            <div class="search-tab"><a href="javascript:;" data-log="Visit_synthsizeTab|From_"
                                       class="search-tab-item active">全部</a>
                <a href="javascript:;" data-log="Visit_answerquestionTab|From_" class="search-tab-item">答题</a> <a
                        href="javascript:;" data-log="Visit_userSearchTab|From_" class="search-tab-item">用户</a></div>
            <div class="w-feed search-all" enterfrom="search-all" data-log-from="synthesizeTab">
                <div class="w-feed-container" id="w-feed-container"><!----> <!----> <!----> <!---->
                    <c:if test="${!empty user_list}">
                        <div class="w-search-user">
                            <c:forEach items="${user_list}" var="user" begin="0" end="0">
                                <a target="_blank" href="https://www.wukong.com/user/?uid=92363205468"
                                   data-log="Visit_Profile|From_" class="avatar"><img
                                        src="${user.picpath}"></a>
                                <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                        class="iconfont icon-details_add_icon"></i> <i
                                        class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                                <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                                       href="https://www.wukong.com/user/?uid=92363205468"
                                                                                       class="user-info"><span
                                        class="uname">${user.username}</span>
                                    <!----> <!----></a> <a target="_blank"
                                                           href="https://www.wukong.com/user/?uid=92363205468"
                                                           class="answer-info"><!---->${user.follwedcount}粉丝</a></div>
                            </c:forEach>

                        </div><!---->
                    </c:if>
                    <c:forEach items="${list}" var="article">
                        <div data-log-from="Feed" class="question-v3"><!---->
                            <input type="hidden" value="${article.aid}">
                            <input type="hidden" value="${keyword}">
                            <div class="question-title"><h2><a
                                    href="${pageContext.request.contextPath}/article/${article.aid}"
                                    target="_blank" data-log="Visit_Question|From_Link">${article.title}</a>
                            </h2>
                            </div>
                            <div class="question-info"><span
                                    class="question-answer-num">${article.rescount}回答</span><span
                                    class="question-follow-num">${article.collection_count}人收藏</span></div>
                            <!---->
                            <div class="question-answers">
                                <c:choose>
                                    <c:when test="${!empty article.username}">
                                        <c:if test="${!empty article.img}">
                                            <div class="answer-item-v3 has-pic">
                                                <div class="answer-item-pic"><a href="javascript:"><img
                                                        src="${article.img}"></a>
                                                </div>
                                                <!---->
                                                <div class="answer-info">
                                                    <div class="answer-info-user"><a target="_blank"
                                                                                     href="${pageContext.request.contextPath}/user/${article.comment_userid}"
                                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                                     class="answer-info-user-avatar"><img
                                                            alt=""
                                                            src="${article.upicpath}">
                                                        <span class="answer-info-user-name">${article.username}
                                <i class="iconfont icon-all_newv"
                                   style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                                                        <span class="answer-info-user-title">法律行业从业者</span></div>
                                                </div>
                                                <div class="answer-item-content">
                                                    <p><a
                                                            href="javascript:;"
                                                            data-log="PopUp_AnswerContent|From_">
                                                            ${article.chtml}
                                                        <span
                                                                class="answer-item-whole">全文</span></a></p>
                                                </div>
                                                <div class="answer-oper">
                                                    <input type="hidden" value="${article.cid}">
                                                    <c:choose>
                                                        <c:when test="${article.islike}">
                                                            <a href="javascript:" data-log="Like|From_"
                                                               class="w-like active" onclick="like(this)">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                                                    class="like-num">${article.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_"
                                                               class="w-unlike" onclick="">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${article.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:when>
                                                        <c:when test="${article.isunlike}">
                                                            <a href="javascript:" data-log="Like|From_" class="w-like"
                                                               onclick="">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                                                    class="like-num">${article.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_"
                                                               class="w-unlike active" onclick="unlike(this)">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${article.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a href="javascript:" data-log="Like|From_" class="w-like"
                                                               onclick="like(this)">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                                                    class="like-num">${article.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_"
                                                               class="w-unlike" onclick="unlike(this)">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${article.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:otherwise>
                                                    </c:choose>


                                                    <a href="javascript:" class="w-answer-nointerest-btn">
                                                        <i class="iconfont icon-ask_close"></i></a> <a
                                                        href="javascript:"
                                                        data-log="Visit_Comment|From_"
                                                        class="answer-oper-comments"><i
                                                        class="iconfont icon-ask_comment"></i> <span
                                                        class="comment-count">0</span>
                                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                                            </div>
                                        </c:if>
                                        <c:if test="${empty article.img}">
                                            <div class="answer-item-v3"><!----> <!---->
                                                <div class="answer-info">
                                                    <div class="answer-info-user"><a target="_blank"
                                                                                     href="${pageContext.request.contextPath}/user/${article.comment_userid}"
                                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                                     class="answer-info-user-avatar"><img
                                                            alt=""
                                                            src="${article.upicpath}">
                                                        <span
                                                                class="answer-info-user-name">${article.username}
                                                            <!----></span></a> <!----></div>
                                                </div>
                                                <div class="answer-item-content"><p><a
                                                        href="/answer/6589044082973081869/"
                                                        data-log="PopUp_AnswerContent|From_">${article.chtml}
                                                    <span
                                                            class="answer-item-whole">全文</span></a>
                                                </p></div>
                                                <div class="answer-oper">
                                                    <input type="hidden" value="${article.cid}">
                                                    <c:choose>
                                                        <c:when test="${article.islike}">
                                                            <a href="javascript:" data-log="Like|From_"
                                                               class="w-like active" onclick="like(this)">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                                                    class="like-num">${article.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_"
                                                               class="w-unlike" onclick="">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${article.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:when>
                                                        <c:when test="${article.isunlike}">
                                                            <a href="javascript:" data-log="Like|From_" class="w-like"
                                                               onclick="">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                                                    class="like-num">${article.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_"
                                                               class="w-unlike active" onclick="unlike(this)">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${article.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a href="javascript:" data-log="Like|From_" class="w-like"
                                                               onclick="like(this)">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                                                    class="like-num">${article.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_"
                                                               class="w-unlike" onclick="unlike(this)">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${article.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:otherwise>
                                                    </c:choose>


                                                    <a href="javascript:" class="w-answer-nointerest-btn">
                                                        <i class="iconfont icon-ask_close"></i></a> <a
                                                        href="javascript:"
                                                        data-log="Visit_Comment|From_"
                                                        class="answer-oper-comments"><i
                                                        class="iconfont icon-ask_comment"></i> <span
                                                        class="comment-count">0</span>
                                                    <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                                                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                                            </div>
                                        </c:if>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">滚动加载更多</span></div>
                </div>
                <div class="w-feed search-invite" data-log-from="!answerquestion" enterfrom="search-answer"
                     style="display: none">
                    <div class="w-feed-container"><!---->

                        <!----> <!----> <!----></div>
                    <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">滚动加载更多</span></div>
                </div>
                <div class="w-feed search-user" enterfrom="search-user" data-log-from="userTab"
                     style="display: none;">
                    <div class="w-feed-container">
                        <c:forEach items="${user_list}" var="user">
                            <div class="w-search-user" style=" margin-top: 0;margin-bottom: 24px;padding: 0">
                                <a target="_blank" href="https://www.wukong.com/user/?uid=92363205468" data-log="Visit_Profile|From_" class="avatar">
                                    <img src="${user.picpath}">
                                </a>
                                <div class="follow-user">
                                    <a data-log="Follow_User|From_" class="w-follow-btn">
                                    <i class="iconfont icon-details_add_icon"></i>
                                    <i class="iconfont icon-details_attention_icon"></i>
                                    <span>关注</span>
                                    </a>
                                </div>
                                <div data-log="Visit_Profile|From_" class="content">
                                    <a target="_blank" href="https://www.wukong.com/user/?uid=92363205468" class="user-info">
                                        <span class="uname">${user.username}</span>
                                    <!----> <!---->
                                    </a>
                                    <a target="_blank" href="https://www.wukong.com/user/?uid=92363205468" class="answer-info"><!---->${user.follwedcount}粉丝</a>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">没有更多内容</span></div>
                </div>
            </div>
            <div class="sub-contianer"></div>
            <div class="detail"></div>
            <div data-node="loadmore" class="index-question-loadmore">
                <div class="index-question-loadmore-w"></div>
            </div>
    </main>
    <div data-log-from="FloatingBtn" class="assist"><!----> <a href="javascript:;" data-node="static-feedback"
                                                               data-log="PopUp_CreateFeedback|From_" class="j-feedback"><span>反馈</span></a>
        <a href="javascript:;" class="j-go-top" style="height: 0px; margin-bottom: 0px;"><i
                class="iconfont icon-icon_top"></i></a></div>
</div>
<footer class="copyright">
    <p>©2017 wukongwenda.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
    <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>


</body>
<%@include file="arttemplatescript.jsp" %>
</html>
