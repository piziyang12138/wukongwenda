<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/18
  Time: 14:30
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
    <meta name="baidu-site-verification" content="KbXG9YmVWW">
    <meta name="360-site-verification" content="d2d5af5afd7ab435d58bcb3decb28822">
    <meta name="google-site-verification" content="aGcHAsDaqk3chrC0a1ySOxLSc5oiqaV649yu7Xl7qjI">
    <meta name="sogou_site_verification" content="BxZ5It8zZM">
    <meta name="shenma-site-verification" content="4fbe336d62bfe25d0eea203e2e4fe1c4_1503629253">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <meta name="description" content="悟空问答，一款靠谱的问答社区，专注分享知识、经验、观念。在这里，所有人都能找到答案、参与讨论。">
    <meta name="keywords" content="悟空问答,头条问答,问答">
    <title>悟空问答</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_4c95c68.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <style>#BAIDU_DSPUI_FLOWBAR, .adsbygoogle, .ad, div[class^="ad-widsget"], div[id^="div-gpt-ad-"], a[href*="cpro.baidu.com"], a[href*="@"][href*=".exe"], a[href*="/?/"][href*=".exe"], .adpushwin {
        display: none !important;
        max-width: 0 !important;
        max-height: 0 !important;
        overflow: hidden !important;
    }</style>
    <script src="${pageContext.request.contextPath}/layer/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <script src="${pageContext.request.contextPath}/thridpartjs/arttemplate.min.js"></script>
    <script>
        contextPath = '${pageContext.request.contextPath}';
    </script>
    <script src="${pageContext.request.contextPath}/js/index.js" charset="UTF-8"></script>
    <script src="${pageContext.request.contextPath}/js/header.js"></script>
</head>
<body data-log-from="Index">
<div id="wrapper" data-log-from="">
    <%@include file="header.jsp" %>
    <div class="answer-wrapper"></div>
    <main class="main-container page-index tag-0">
        <div id="pagelet-sidebar" class="right-part">
            <div id="placeholver_sidebar">
                <div>
                    <c:choose>
                        <c:when test="${!empty user}">
                            <div id="user-card" class="user-card">
                                <div id="widget-usercard" data-log-from="ProfileCard" class="w-usercard"><a
                                        target="_blank"
                                        href="${pageContext.request.contextPath}/user/${user.id}"
                                        data-log="Visit_Profile|From_"
                                        class="userinfo clearfix">
                                    <div class="avatar"><img
                                            src="${user.picpath}"
                                            alt=""></div>
                                    <div class="user-desc"><h2 class="user-name">
                                            ${user.username}
                                        <!----></h2>
                                        <div class="user-intro">

                                        </div>
                                        <div class="user-title">
                                            2131
                                        </div> <!----></div>
                                </a>
                                    <div class="user-data clearfix">
                                        <div class="user-data-single user-data-answer"><a
                                                href="https://www.wukong.com/user/?type=0" target="_blank"><h3>
                                                ${user.rescount}
                                        </h3> <span>回答</span></a></div>
                                        <a href="https://www.wukong.com/user/?type=0" target="_blank"
                                           class="user-data-single user-data-digg"><h3>
                                            0
                                        </h3> <span>收到赞</span> <!----></a> <a
                                            href="https://www.wukong.com/attention/?type=2" target="_blank"
                                            data-log="Visit_FansTab|From_" class="user-data-single user-data-follow">
                                        <h3>
                                                ${user.followedcount}
                                        </h3> <span>粉丝</span> <!----></a></div>
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                    <div data-node="hot-board" data-log-from="!Campaign" class="hot-board">
                        <div class="unslider"><div class="banner unslider-horizontal" style="overflow: hidden;"><ul class="unslider-wrap unslider-carousel" style="width: 300%; margin-left: -100%; left: 0%;"><li class="unslider-clone" data-index="2" style="width: 33.3333%;"><div class="anno-content">
                            异地恋的哪个瞬间让你庆幸自己还好没放弃？
                        </div> <a href="javascript:" target="_blank" title="异地恋的哪个瞬间让你庆幸自己还好没放弃？" data-log="Visit_Campaign|From_" class="wenda-board"><img src="http://120.79.237.11/group1/M00/00/86/rBJmnFuPhDuAADMUAAAj9KSMZww107_big.jpg" alt=""></a></li><li data-index="0" class="unslider-active" style="width: 33.3333%;"><div class="anno-content">
                            异地恋的哪个瞬间让你庆幸自己还好没放弃？
                        </div> <a href="javascript:" target="_blank" title="异地恋的哪个瞬间让你庆幸自己还好没放弃？" data-log="Visit_Campaign|From_" class="wenda-board"><img src="http://120.79.237.11/group1/M00/00/86/rBJmnFuPhDuAADMUAAAj9KSMZww107_big.jpg" alt=""></a></li><li class="unslider-clone" data-index="1" style="width: 33.3333%;"><div class="anno-content">
                            异地恋的哪个瞬间让你庆幸自己还好没放弃？
                        </div> <a href="javascript:" target="_blank" title="异地恋的哪个瞬间让你庆幸自己还好没放弃？" data-log="Visit_Campaign|From_" class="wenda-board"><img src="http://120.79.237.11/group1/M00/00/86/rBJmnFuPhDuAADMUAAAj9KSMZww107_big.jpg" alt=""></a></li></ul></div><nav class="unslider-nav"><ol><li data-slide="0" class="unslider-active">1</li></ol></nav></div>
                    </div>
                    <div data-node="hot-wenda" class="hot-wenda">
                        <div data-log-from="Recommended" class="hot-qa"><h4><span>精选回答</span> <a
                                href="https://www.wukong.com/" data-node="recommand-feed" target="_blank">更多
                            <i class="iconfont icon-ask_arrow_right"></i></a></h4>
                            <div class="hot-qa-list">
                                <c:forEach items="${hot}" var="hot">
                                    <div class="hot-item hottest">
                                        <a href="${pageContext.request.contextPath}/article/${hot.aid}" target="_blank"
                                           data-log="Visit_Question|From_"><h2 class="title">
                                                ${hot.title}</h2></a>
                                        <div class="answer-user">
                                            <div class="user-info">
                                                <div data-node="like" data-log="Like|From_" class="answer-like"><span
                                                        data-node="like-count">${hot.num}赞</span> <i class="answer-like-icon"></i>
                                                </div>
                                                <span class="arrow"></span>
                                                <div class="user-link"><a
                                                        href="${pageContext.request.contextPath}/user/${hot.id}" target="_blank"
                                                        data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                                                        src="${hot.picpath}" alt=""></a> <a
                                                        href="https://www.wukong.com/user/?uid=63384641374" target="_blank"
                                                        data-log="Visit_Profile|From_" class="answer-user-name"><span
                                                        class="uname" style="color: rgb(51, 51, 51);"> ${hot.username}
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                                                        title="公司法律师" style="color: rgb(119, 119, 119);"></span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="javscript:" target="_blank"
                                           data-log="Visit_Question|From_">
                                            <div class="preview">
                                                <c:if test="${!empty hot.img}">
                                                    <div class="preview-image"><img src="${hot.img}" alt="">
                                                    </div>
                                                </c:if>
                                                <p class="content">
                                                    ${hot.chtml}</p>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>
                        </div>
                    </div> <!----> <!---->
                    <div class="w-contact"><h4><span class="no-text"></span></h4>
                        <div class="contact-info"><p>
                            © 2017 今日头条
                        </p>
                            <p class="cooperate">
                                悟空问答合作邮箱：wendahz@toutiao.com
                            </p>
                            <p>
                                悟空问答侵权投诉通道：ask@bytedance.com
                            </p>
                            <p>
                                京ICP备12025439号-14
                            </p>
                            <p>
                                京公网安备11000002002030号
                            </p>
                            <p>
                                网络文化经营许可证
                            </p>
                            <p>
                                跟帖评论自律管理承诺书
                            </p>
                            <p>
                                违法和不良信息举报电话：010-83434121
                            </p>
                            <p>
                                公司名称：北京字节跳动科技有限公司/北京字
                            </p>
                            <p>
                                节跳动网络技术有限公司
                            </p></div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div id="main-header" data-log-from="Feed" class="header">
            <nav class="widget-tag-nav clearfix"><a href="javascript:" data-node="tag-item"
                                                    data-id="6300775428692904450"
                                                    class="tag-item current"><span>热门</span></a> <a href="javascript:; "
                                                                                                    data-node="tag-item"
                                                                                                    data-log="Visit_Feed_Wonderful_Tab|From_"
                                                                                                    class="tag-item"><span>精选</span></a>
                <a href="javascript:" target="_blank" data-node="tag-item"
                   data-log="Visit_FeedSecondTab|From_" class="tag-item"><span>社会</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_FeedThirdTab|From_" class="tag-item"><span>娱乐</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_FeedFourthTab|From_" class="tag-item"><span>体育</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed5thTab|From_" class="tag-item"><span>汽车</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed6thTab|From_" class="tag-item"><span>财经</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed7thTab|From_" class="tag-item"><span>科技</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed8thTab|From_" class="tag-item"><span>育儿</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed9thTab|From_" class="tag-item"><span>历史</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed10thTab|From_" class="tag-item"><span>美食与烹饪</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed11thTab|From_" class="tag-item"><span>数码</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed12thTab|From_" class="tag-item"><span>时尚</span></a><a
                        href="javascript:" target="_blank" data-node="tag-item"
                        data-log="Visit_Feed13thTab|From_" class="tag-item"><span>宠物</span></a>
                <div class="toogle"><span class="text">
        更多<i class="iconfont icon-ask_arrow_down"></i></span>
                    <div class="hide-list"><a href="javascript:" target="_blank"
                                              data-node="tag-item" data-log="Visit_Feed14thTab|From_"
                                              class="tag-item"><span>收藏</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed15thTab|From_" class="tag-item"><span>家居</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed16thTab|From_" class="tag-item"><span>心理</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed17thTab|From_" class="tag-item"><span>文化</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed18thTab|From_" class="tag-item"><span>三农</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed19thTab|From_" class="tag-item"><span>健康</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed20thTab|From_" class="tag-item"><span>科学</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed21thTab|From_" class="tag-item"><span>游戏</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed22thTab|From_" class="tag-item"><span>动漫</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed23thTab|From_" class="tag-item"><span>教育</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed24thTab|From_" class="tag-item"><span>职场</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed25thTab|From_" class="tag-item"><span>旅游</span></a><a
                            href="javascript:" target="_blank" data-node="tag-item"
                            data-log="Visit_Feed26thTab|From_" class="tag-item"><span>电影</span></a></div>
                </div>
            </nav>
        </div>
        <div id="main-index-question-list" data-log-from="Feed" class="index-question-list">
            <div class="w-feed">
                <div class="w-feed-container" id="container"><!---->


                    <c:forEach items="${articles}" var="article">
                        <div data-log-from="Feed" class="question-v3"><!---->
                            <input type="hidden" value="${article.aid}">
                            <div class="question-title"><h2><a
                                    href="${pageContext.request.contextPath}/article/${article.aid}"
                                    target="_blank" data-log="Visit_Question|From_Link">${article.title}</a>
                            </h2>
                                <div class="question-info"><span
                                        class="question-answer-num">${article.rescount}回答</span><span
                                        class="question-follow-num">${article.collection_count}人收藏</span></div>
                            </div> <!---->
                            <div class="question-answers">
                                <c:choose>
                                    <c:when test="${!empty article.username}">
                                        <c:if test="${!empty article.img}">
                                            <div class="answer-item-v3 has-pic">
                                                <div class="answer-item-pic"><a href="javascript:"><img
                                                        src="${pageContext.request.contextPath}${article.img}"></a>
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
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
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
                                                            src="${article.upicpath}"> <span
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
                            </div> <!----></div>
                    </c:forEach>
                </div>
                <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">滚动加载更多</span></div>
            </div>
        </div>
        <div class="sub-contianer"></div>
        <div class="detail"></div>
        <div data-node="loadmore" class="index-question-loadmore">
            <div class="index-question-loadmore-w"></div>
        </div>
    </main>
    <div data-log-from="FloatingBtn" class="assist"><a href="javascript:;" data-node="static-refresh"
                                                       data-log="ActiveRefresh|From_" class="j-refresh"><i
            class="iconfont icon-refresh"></i></a> <a href="javascript:;" data-node="static-feedback"
                                                      data-log="PopUp_CreateFeedback|From_"
                                                      class="j-feedback"><span>反馈</span></a> <a href="javascript:;"
                                                                                                class="j-go-top"><i
            class="iconfont icon-icon_top"></i></a></div>
</div>
<footer class="copyright">
    <p>©2017 www.wukong.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
    <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
<div data-node="widget-share-group" class="widget-share-group">
    <div class="share-group-content clearfix">
        <div class="qr"></div>
        <div data-node="weixin" data-url="" data-desc="" data-log="Share_Weixin|From_" class="share-link weixin"><i
                class="iconfont icon-wechat_share"></i></div>
        <div data-node="weibo" data-url="" data-desc="" data-log="Share_Weibo|From_" class="share-link weibo"><i
                class="iconfont icon-weibo_share"></i></div>
        <div data-node="qzone" data-url="" data-desc="" data-log="Share_Qzone|From_" class="share-link qq"><i
                class="iconfont icon-qzone_share"></i></div>
    </div>
    <div class="share-group-arrow"><i></i></div>

</div>
<%@include file="arttemplatescript.jsp" %>
</body>
</html>
