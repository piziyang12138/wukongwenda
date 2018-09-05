<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/20
  Time: 14:29
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
    <meta name="sogou_site_verification" content="qpGA3ltIUV">
    <meta name="shenma-site-verification" content="34c05607e2a9430ad4249ed48faaf7cb_1432711730">
    <meta name="pathname" content="wenda_pc_question">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <title>
        ${article.title}-悟空问答
    </title>
    <meta name="keywords" content="悟空问答,穷人,瞎折腾,同意,空想">
    <meta name="description"
          content="${article.title}没钱人还是应该老实本分的上班，别总想这干点什么买卖了搞点什么项目的。当然我不否认，人要有梦想的这句话，但是不切实际的空想和盲目的用多年积攒的储蓄去干一些看似很有前景的事情，绝对是不靠谱的。因为之所以你是穷人是普通人最重要的是眼界不够宽而不是胆子不够大。况且穷人的钱毕竟少真的经不起折腾，奉劝每一个人在打算投资时一定要谨慎。:创业行动家 琳妹观点：不同意，折腾可以改变命运，不折腾才会穷一辈子。如果有想法，就一定要去尝试，试过才知道行不行。一个项:-穷人，瞎折腾，同意，空想">
    <meta property="og:type" content="article">
    <meta property="og:title" content="${article.title}-穷人,瞎折腾,同意,空想">
    <meta property="og:description"
          content="${article.title}没钱人还是应该老实本分的上班，别总想这干点什么买卖了搞点什么项目的。当然我不否认，人要有梦想的这句话，但是不切实际的空想和盲目的用多年积攒的储蓄去干一些看似很有前景的事情，绝对是不靠谱的。因为之所以你是穷人是普通人最重要的是眼界不够宽而不是胆子不够大。况且穷人的钱毕竟少真的经不起折腾，奉劝每一个人在打算投资时一定要谨慎。:创业行动家 琳妹观点：不同意，折腾可以改变命运，不折腾才会穷一辈子。如果有想法，就一定要去尝试，试过才知道行不行。一个项:-穷人，瞎折腾，同意，空想">
    <meta property="og:url" content="https://www.wukong.com/question/6501433762578956558/">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common_1b698e6.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_4c95c68.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/question_single_static_f271b8e.css"
          charset="GBK">
    <link href="${pageContext.request.contextPath}/editor-md-master/css/editormd.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/editor-md-master/examples/css/style.css">
    <style>#BAIDU_DSPUI_FLOWBAR, .adsbygoogle, .ad, div[class^="ad-widsget"], div[id^="div-gpt-ad-"], a[href*="cpro.baidu.com"], a[href*="@"][href*=".exe"], a[href*="/?/"][href*=".exe"], .adpushwin {
        display: none !important;
        max-width: 0 !important;
        max-height: 0 !important;
        overflow: hidden !important;
    }

    .answer-user-name, .answer-user-tag, .user-name, .question-name, .question-text, .user-title, .question-bottom {
        text-align: left;
    }

    .answer-wrapper-inline .write-content-submit:hover {
        background-color: #265a88;
    }


    </style>
    <script>
        contextPath = '${pageContext.request.contextPath}';
    </script>
    <script src="${pageContext.request.contextPath}/layer/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/editor-md-master/editormd.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <script src="${pageContext.request.contextPath}/thridpartjs/arttemplate.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/header.js"></script>
    <script src="${pageContext.request.contextPath}/js/article.js" charset="UTF-8" type="text/javascript"></script>
</head>
<body data-log-from="Question" spellcheck="false">
<div id="wrapper" class="static">
    <%@include file="header.jsp" %>
    <div class="answer-wrapper"></div>
    <main class="main-container page-question-static ">
        <div id="main-header" class="header"></div> <!---->
        <div id="main-index-question-list" class="index-question-list">
            <div id="pagelet-sidebar" class="right-part">
                <div id="placeholver_sidebar">
                    <div>
                        <c:choose>
                            <c:when test="${!empty user}">
                                <div id="user-card" class="user-card">
                                    <div id="widget-usercard" data-log-from="ProfileCard" class="w-usercard"><a
                                            target="_blank"
                                            href="${pageContext.request.contextPath}/jsp/user.jsp"
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
                                                data-log="Visit_FansTab|From_"
                                                class="user-data-single user-data-follow"><h3>
                                            ${user.followedcount}
                                        </h3> <span>粉丝</span> <!----></a></div>
                                    </div>
                                </div>
                            </c:when>
                        </c:choose>
                        <div data-node="hot-board" data-log-from="!Campaign" class="hot-board">
                            <div class="unslider">
                                <div class="banner unslider-horizontal" style="overflow: hidden;">
                                    <ul class="unslider-wrap unslider-carousel"
                                        style="width: 500%; margin-left: -100%; left: -200%;">
                                        <li class="unslider-clone" data-index="4" style="width: 20%;">
                                            <div class="anno-content">
                                                有奖问答｜零基础玩转财务自由
                                            </div>
                                            <a href="https://www.wukong.com/wendawap/topic/6566146388508279048"
                                               target="_blank" title="有奖问答｜零基础玩转财务自由" data-log="Visit_Campaign|From_"
                                               class="wenda-board"><img src="./悟空问答-文章界面_files/8e1f0009c8f8dc6bade0"
                                                                        alt=""></a></li>
                                        <li data-index="0" class="" style="width: 20%;">
                                            <div class="anno-content">
                                                今日头条x勺子课堂：解码大食代
                                            </div>
                                            <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                                               target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                                               class="wenda-board"><img src="./悟空问答-文章界面_files/9b23000b3afd0b741a27"
                                                                        alt=""></a></li>
                                        <li data-index="1" class="" style="width: 20%;">
                                            <div class="anno-content">
                                                我在 2018 世界杯现场
                                            </div>
                                            <a href="https://www.wukong.com/question/6566860373691990275/"
                                               target="_blank" title="我在 2018 世界杯现场" data-log="Visit_Campaign|From_"
                                               class="wenda-board"><img src="./悟空问答-文章界面_files/98a3000f4c6f021778dc"
                                                                        alt=""></a></li>
                                        <li data-index="2" class="unslider-active" style="width: 20%;">
                                            <div class="anno-content">
                                                有奖问答｜零基础玩转财务自由
                                            </div>
                                            <a href="https://www.wukong.com/wendawap/topic/6566146388508279048"
                                               target="_blank" title="有奖问答｜零基础玩转财务自由" data-log="Visit_Campaign|From_"
                                               class="wenda-board"><img src="./悟空问答-文章界面_files/8e1f0009c8f8dc6bade0"
                                                                        alt=""></a></li>
                                        <li class="unslider-clone" data-index="3" style="width: 20%;">
                                            <div class="anno-content">
                                                今日头条x勺子课堂：解码大食代
                                            </div>
                                            <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                                               target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                                               class="wenda-board"><img src="./悟空问答-文章界面_files/9b23000b3afd0b741a27"
                                                                        alt=""></a></li>
                                    </ul>
                                </div>
                                <nav class="unslider-nav">
                                    <ol>
                                        <li data-slide="0" class="">1</li>
                                        <li data-slide="1" class="">2</li>
                                        <li data-slide="2" class="unslider-active">3</li>
                                    </ol>
                                </nav>
                            </div>
                        </div> <!---->
                        <div data-log-from="Invited" class="invite-quest"><h4 style="margin-top: 40px;">
                            <span>等我来答</span> <a href="https://www.wukong.com/myquest/" target="_blank"
                                                 data-log="Visit_QuestionInvited|From_">更多
                            <i class="iconfont icon-ask_arrow_right"></i></a></h4>
                            <div class="invite-list">
                                <div class="item clearfix"><!---->
                                    <div class="preview-image"><img src="./悟空问答-文章界面_files/91240009d3c441efc5e9" alt="">
                                    </div>
                                    <a href="https://www.wukong.com/question/6579748229393416462/" target="_blank"
                                       data-log="Visit_Question|From_" class="item-link"><h2 class="title">
                                        什么时候你觉得特别迷茫？</h2></a> <a data-node="answer" href="javascript:;"
                                                                 data-log="PopUp_Answer|From_" class="answer-btn"><i
                                            class="iconfont icon-ask_write"></i>回答
                                    </a></div>
                                <div class="item clearfix"><!----> <!----> <a
                                        href="https://www.wukong.com/question/6579778497554678029/" target="_blank"
                                        data-log="Visit_Question|From_" class="item-link"><h2 class="title">
                                    你认为追女孩子最有效的一招是什么？</h2></a> <a data-node="answer" href="javascript:;"
                                                                  data-log="PopUp_Answer|From_" class="answer-btn"><i
                                        class="iconfont icon-ask_write"></i>回答
                                </a></div>
                                <div class="item clearfix"><!---->
                                    <div class="preview-image"><img src="./悟空问答-文章界面_files/9124000a6202f9c8c508" alt="">
                                    </div>
                                    <a href="https://www.wukong.com/question/6580066949282136323/" target="_blank"
                                       data-log="Visit_Question|From_" class="item-link"><h2 class="title">
                                        你喜欢天真的女孩还是成熟的女孩？</h2></a> <a data-node="answer" href="javascript:;"
                                                                     data-log="PopUp_Answer|From_" class="answer-btn"><i
                                            class="iconfont icon-ask_write"></i>回答
                                    </a></div>
                            </div>
                        </div> <!---->
                        <div class="w-contact" style="display: none;"><h4><span class="no-text"></span></h4>
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
            <div class="question question-single">
                <div data-qid="6501433762578956558" data-init-offset="5" itemscope="itemscope"
                     itemtype="http://schema.org/Question" class="question-item">
                    <meta itemprop="keywords" content="${article.tags}">
                    <meta itemprop="url" content="https://www.wukong.com/question/6501433762578956558/">
                    <meta itemprop="answerCount" content="${count}">
                    <meta itemprop="dateCreated" content="Wed Dec 20 2017 09:23:28 GMT+0800 (中国标准时间)">
                    <div class="question-tags">
                        <c:forEach items="${article.tag_list}" var="tag">
                            <a href="javascript:" target="_blank"
                               data-log="Visit_Tag|From_" class="tag">${tag}</a>
                        </c:forEach>
                         <!----></div>
                    <h1 itemprop="name" class="question-name">
                        ${article.title}
                    </h1>
                    <div itemprop="description" class="question-text">
                        ${article.content}
                    </div>
                    <c:choose>
                        <c:when test="${!empty article.picpath}">
                            <div class="question-img-preview">
                                <div class="image-box">
                                    <img data-node="preview"
                                         src="${article.picpath}"
                                         data-src="//p3.pstatp.com/list/190x124/5044000373ed2c530102"
                                         data-width="168" data-height="114" class=""
                                         style="width: 174px; height: 114px; margin-left: -3px; margin-top: 0px;"
                                         id="preview-img">
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                    <div class="question-bottom"><a data-node="answer" href="javascript:;"
                                                    data-log="PopUp_Answer|From_Description" popup_answer=""
                                                    class="action-btn answer-btn"><i
                            class="iconfont icon-ask_write"></i>回答
                    </a> <a data-node="followquestion" data-follow="0" href="javascript:"
                            data-log="Follow_Question|From_" class="action-btn" id="collection-btn">
                        <c:choose>
                            <c:when test="${row > 0}">
                                <i class="iconfont icon-collection collected"></i>
                                <span class="text">已收藏</span>
                            </c:when>
                            <c:otherwise>
                                <i class="iconfont icon-collection"></i>
                                <span class="text">收藏问题</span>
                            </c:otherwise>
                        </c:choose>
                        (<span class="count">${article.collection_count}</span>)
                    </a> <a data-node="invite-answer" data-log="Toggle_Invite|From_" href="javascript:;"
                            class="action-btn toggle-invite-answer"><i class="iconfont icon-ask_add_friend"></i><span>邀请回答</span></a>
                        <!---->
                        <div class="new-share-group">
                            <div data-node="widget-share-group" class="widget-share-group">
                                <div class="share-group-content clearfix">
                                    <div class="qr"></div>
                                    <div data-node="weixin" data-url="" data-desc="" data-log="Share_Weixin|From_"
                                         class="share-link weixin"><i class="iconfont icon-wechat_share"></i></div>
                                    <div data-node="weibo" data-url="" data-desc="" data-log="Share_Weibo|From_"
                                         class="share-link weibo"><i class="iconfont icon-weibo_share"></i></div>
                                    <div data-node="qzone" data-url="" data-desc="" data-log="Share_Qzone|From_"
                                         class="share-link qq"><i class="iconfont icon-qzone_share"></i></div>
                                </div>
                                <div class="share-group-arrow"><i></i></div>
                            </div>
                        </div>
                        <div class="inform"><i class="iconfont icon-CombinedShape"></i> <span
                                data-log="PopUp_Inform|From_InformQuestion">举报</span></div>
                    </div>
                    <div class="invite-answer">
                        <div data-log-from="InviteAnswer" class="w-invite-answer">
                            <div class="invite-status">立即邀请用户，更快获得回答</div>
                            <div class="invite-list"></div>
                        </div>
                    </div>
                    <div class="answer-wrapper-inline">
                        <div class="">
                            <div class="anchor"></div>
                            <div class="answer-write">
                                <div class="write">
                                    <div class="write-content">
                                        <div class="hold-position" style="display: none;"></div>
                                        <form method="post" id="markdown-form">
                                            <div id="test-editormd" class="editormd editormd-vertical"
                                                 style="width: 90%; height: 740px;">
                                                <textarea class="editormd-markdown-textarea"
                                                          placeholder="Enjoy Markdown! coding now..."></textarea>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="submitbar" style="height: 50px;" id="submitbar"><span class="manuscript-tip">

        </span>
                            <input type="hidden" value="${article.aid}" name="aid">
                            <a data-node="post-content" data-log="Click_Post_Answer|From_Question_Answer"
                   class="btn btn-primary write-content-submit" >发表答案</a>
                        </div>
                        </div>
                    </div>
                    <h3 class="answer-count-h"><span>${count}个回答</span></h3> <!----> <!----> <!---->
                    <div class="all-answers">
                        <div data-log-from="Answer" class="answers">
                            <div class="title-fixed">
                                <div class="suspension-search">
                                    <div class="logo-box"><a href="https://www.wukong.com/"
                                                             data-log="Visit_Index|From_logo" title="悟空问答"
                                                             class="logo-link"><img
                                            src="./悟空问答-文章界面_files/logo_5df43ca.png" alt="悟空问答" class="logo"></a></div>
                                    <div class="search-box">
                                        <div data-node="searchBox" data-log-from="SearchBox"
                                             class="widget-search-input">
                                            <form action="https://www.wukong.com/search/" method="get"
                                                  data-node="searchForm" target="_blank">
                                                <div class="input-group clearfix"><input autocomplete="off"
                                                                                         ga_event="nav_search_input"
                                                                                         data-node="searchInput"
                                                                                         name="keyword" type="text"
                                                                                         placeholder="搜索你感兴趣的问题">
                                                    <div class="btn-submit">
                                                        <button ga_event="nav_search" type="submit" href="javascript:;">
                                                            <i class="iconfont icon-ask_search"></i></button>
                                                    </div>
                                                </div>
                                            </form> <!----></div>
                                    </div>
                                </div>
                                <div class="suspension-title-wrapper">
                                    <div class="suspension-title">
                                        <div class="question-title">${article.title}</div> <!----> <a
                                            data-node="answer" href="javascript:;"
                                            data-log="PopUp_Answer|From_dingbuxuanfu" popup_answer=""
                                            class="action-btn answer-btn"><i class="iconfont icon-ask_write"></i>回答
                                    </a></div>
                                </div>
                            </div>
                            <div class="answer-items" id="answer-items">
                                <c:forEach items="${comments}" var="comment">
                                    <div data-node="answer-item" data-ansid="6558898480486547715" itemscope="itemscope"
                                         itemtype="http://schema.org/Answer" itemprop="suggestedAnswer"
                                         class="answer-item sticky-item req_1">
                                        <meta itemprop="upvoteCount" content="21">
                                        <meta itemprop="url"
                                              content="https://www.wukong.com/answer/6558898480486547715/">
                                        <meta itemprop="commentCount" content="18">
                                        <meta itemprop="dateCreated" content="${comment.createtime}">
                                        <a href="https://www.wukong.com/answer/6558898480486547715/"
                                           class="seo-link"></a>
                                        <div class="fake-cover"></div>
                                        <div class="answer-text h_1200 fold">
                                            <div itemprop="text" class="answer-text-full rich-text">
                                                    ${comment.chtml}
                                            </div>
                                            <a href="javascript:;" class="j-expand-showfull expand-bottom"
                                               >展开全部</a>

                                            <!---->
                                            <div class="answer-tool">
                                                <div class="comment-tool">
                                                    <input type="hidden" value="${comment.cid}">
                                                    <c:choose>
                                                        <c:when test="${comment.islike}">
                                                            <a href="javascript:" data-log="Like|From_" class="w-like answer-like-count active" onclick="like(this)">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">${comment.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_" class="w-unlike answer-dislike-count" onclick="">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${comment.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:when>
                                                        <c:when test="${comment.isunlike}">
                                                            <a href="javascript:" data-log="Like|From_" class="w-like answer-like-count" onclick="">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">${comment.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_" class="w-unlike answer-dislike-count active" onclick="unlike(this)">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${comment.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a href="javascript:" data-log="Like|From_" class="w-like answer-like-count" onclick="like(this)">
                                                                <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">${comment.likecount}</span>
                                                                <span>赞</span></a>
                                                            <a href="javascript:" data-log="Downvote|From_" class="w-unlike answer-dislike-count" onclick="unlike(this)">
                                                                <i class="iconfont icon-ask_stamp"></i>
                                                                <span class="unlike-count">${comment.unlikecount}</span>
                                                                <span>踩</span>
                                                            </a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <a data-node="show-comment" href="javascript:;"
                                                        data-ansid="6558898480486547715" data-answer-uid="52713245090"
                                                        data-is_ban_comment="0" data-log="Visit_Comment|From_"
                                                        class="show-comment"><i class="iconfont icon-ask_comment"></i>
                                                    18评论

                                                </a>
                                                    <div data-node="share-group" data-ansid="6558898480486547715"
                                                         class="share-group share-anchor"><i
                                                            class="iconfont icon-share-home"></i> <span
                                                            class="share">分享</span>
                                                        <div data-node="widget-share-group" class="widget-share-group">
                                                            <div class="share-group-content clearfix">
                                                                <div class="qr"></div>
                                                                <div data-node="weixin" data-url="" data-desc=""
                                                                     data-log="Share_Weixin|From_"
                                                                     class="share-link weixin"><i
                                                                        class="iconfont icon-wechat_share"></i></div>
                                                                <div data-node="weibo" data-url="" data-desc=""
                                                                     data-log="Share_Weibo|From_"
                                                                     class="share-link weibo">
                                                                    <i class="iconfont icon-weibo_share"></i></div>
                                                                <div data-node="qzone" data-url="" data-desc=""
                                                                     data-log="Share_Qzone|From_" class="share-link qq">
                                                                    <i
                                                                            class="iconfont icon-qzone_share"></i></div>
                                                            </div>
                                                            <div class="share-group-arrow"><i></i></div>
                                                        </div>
                                                    </div>
                                                    <div class="inform"><i class="iconfont icon-CombinedShape"></i>
                                                        <span
                                                                data-log="PopUp_Inform|From_informAnswer">举报</span>
                                                    </div>
                                                </div> <!----> <!----></div>
                                        </div>
                                        <div class="comment-container hide"></div>
                                        <div data-log-from="!Question" itemscope="itemscope"
                                             itemtype="http://schema.org/Person" itemprop="author" class="answer-user">
                                            <meta itemprop="url" content="">
                                            <meta itemprop="name" content="${comment.username}">
                                            <meta itemprop="description" content="中国工商银行广西分行营业部大堂经理">
                                            <a href="${pageContext.request.contextPath}/toUser.do?id=${comment.userid}" target="_blank"
                                               data-log="Visit_Profile|From_ProfilePic" class="answer-user-avatar"><img
                                                    src="${comment.picpath}"
                                                    alt=""
                                                    itemprop="image"></a> <a
                                                href="${pageContext.request.contextPath}/toUser.do?id=${comment.userid}" target="_blank"
                                                data-log="Visit_Profile|From_ProfilePic" class="answer-user-name">
                                                ${comment.username}
                                            <!----> <span class="user-intro">中国工商银行广西分行营业部大堂经理</span></a> <a
                                                href="javascript:"
                                                class="answer-user-tag">${comment.createtime}</a>
                                            <c:if test="${comment.userid ne user.id}">
                                                <c:choose>
                                                <c:when test="${comment.hasFollowed}">
                                                    <a data-log="Follow_User|From_" class="w-follow-btn followed"
                                                       id="follow-btn" onmouseover="mouseover(this)"
                                                       onmouseout="mouseout(this)">
                                                        <i class="iconfont icon-details_add_icon"></i>
                                                        <i class="iconfont icon-details_attention_icon"></i>
                                                        <span>
                                                                已关注
                                                            </span>
                                                    </a>
                                                </c:when>
                                                <c:otherwise>
                                            <a data-log="Follow_User|From_" class="w-follow-btn"
                                               id="follow-btn">
                                                <i class="iconfont icon-details_add_icon"></i>
                                                <i class="iconfont icon-details_attention_icon"></i>
                                                <span>
                                                    关注
                                                </span>
                                            </a>
                                            </c:otherwise>
                                            </c:choose>
                                            </c:if>

                                            <input type="hidden" value="${comment.userid}">
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>
                        <div data-node="open-fold-answer" data-log="Visit_CollapseAnswer|From_"
                             class="folder-answer-toggle"><span><%-- 645个回答被折叠 --%></span></div>
                        <div class="answer-normal" style="display: none;">
                            <div class="answer-items-normal"></div>
                            <div class="answer-normal-bottom"><a href="javascript:;" data-node="answer-normal-loadmore"
                                                                 class="answer-normal-loadmore" style="display: none;">
                                点击加载更多
                                <i class="iconfont icon-ask_arrow_down" style="font-size: 14px;"></i></a> <a
                                    href="javascript:;" data-type="bottom" data-node="open-fold-answer" class="grey">
                                收起<i class="iconfont icon-arrow"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="relate-feed">
            <div class="more-feed-title">
                <div class="more-feed-title-inner"><h3 class="answer-count-h"><span>更多阅读</span></h3></div>
            </div>
            <div data-node="relate-feed" data-log-from="Feed" class="index-question-list"></div>
            <div class="relate-feed-loadmore">正在为您加载更多</div>
        </div>
        <div class="sub-contianer"></div>
        <div class="detail"></div>
        <div class="index-question-loadmore-w"></div>
    </main>
    <div data-log-from="FloatingBtn" class="assist"><!----> <a href="javascript:;" data-node="static-feedback"
                                                               data-log="PopUp_CreateFeedback|From_" class="j-feedback"><span>反馈</span></a>
        <a href="javascript:;" class="j-go-top"><i class="iconfont icon-icon_top"></i></a></div>
</div>
<footer class="copyright">
    <p>©2017 www.wukong.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
    <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
<script type="text/html" id="div">

        <meta itemprop="upvoteCount" content="21">
        <meta itemprop="url" content="https://www.wukong.com/answer/6558898480486547715/">
        <meta itemprop="commentCount" content="18">
        <meta itemprop="dateCreated" content="2018-07-20 16:13:41.0">
        <a href="https://www.wukong.com/answer/6558898480486547715/" class="seo-link"></a>
        <div class="fake-cover"></div>
        <div class="answer-text h_1200 fold">
            {{#content}}
        <h2 id="h2-h3"><a name="h3" class="reference-link"></a><span class="header-link octicon octicon-link"></span></h2>

        <a href="javascript:;" class="j-expand-showfull expand-bottom" style="display: none">展开全部</a>

        <!---->
        <div class="answer-tool">
        <div class="comment-tool">
        <input type="hidden" value="1">




        <a href="javascript:" data-log="Like|From_" class="w-like answer-like-count" onclick="like(this)">
        <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">0</span>
        <span>赞</span></a>
        <a href="javascript:" data-log="Downvote|From_" class="w-unlike answer-dislike-count" onclick="unlike(this)">
        <i class="iconfont icon-ask_stamp"></i>
        <span class="unlike-count">0</span>
        <span>踩</span>
        </a>


        <a data-node="show-comment" href="javascript:;" data-ansid="6558898480486547715" data-answer-uid="52713245090" data-is_ban_comment="0" data-log="Visit_Comment|From_" class="show-comment"><i class="iconfont icon-ask_comment"></i>
        0评论

    </a>
    <div data-node="share-group" data-ansid="6558898480486547715" class="share-group share-anchor"><i class="iconfont icon-share-home"></i> <span class="share">分享</span>
        <div data-node="widget-share-group" class="widget-share-group">
        <div class="share-group-content clearfix">
        <div class="qr"></div>
        <div data-node="weixin" data-url="" data-desc="" data-log="Share_Weixin|From_" class="share-link weixin"><i class="iconfont icon-wechat_share"></i></div>
        <div data-node="weibo" data-url="" data-desc="" data-log="Share_Weibo|From_" class="share-link weibo">
        <i class="iconfont icon-weibo_share"></i></div>
        <div data-node="qzone" data-url="" data-desc="" data-log="Share_Qzone|From_" class="share-link qq">
        <i class="iconfont icon-qzone_share"></i></div>
        </div>
        <div class="share-group-arrow"><i></i></div>
        </div>
        </div>
        <div class="inform"><i class="iconfont icon-CombinedShape"></i>
        <span data-log="PopUp_Inform|From_informAnswer">举报</span>
        </div>
        </div> <!----> <!----></div>
        </div>
        <div class="comment-container hide"></div>
        <div data-log-from="!Question" itemscope="itemscope" itemtype="http://schema.org/Person" itemprop="author" class="answer-user">
        <meta itemprop="url" content="">
        <meta itemprop="name" content="zhangsanzhang">
        <meta itemprop="description" content="中国工商银行广西分行营业部大堂经理">
        <a href="${pageContext.request.contextPath}/toUser.do?id={{userid}}" target="_blank" data-log="Visit_Profile|From_ProfilePic" class="answer-user-avatar"><img src="{{picpath}}" alt="" itemprop="image"></a> <a href="${pageContext.request.contextPath}/toUser.do?id={{userid}}" target="_blank" data-log="Visit_Profile|From_ProfilePic" class="answer-user-name">
        {{username}}
        <!----> <span class="user-intro">中国工商银行广西分行营业部大堂经理</span></a> <a href="javascript:" class="answer-user-tag">{{createtime}}</a>

        </div>


</script>
</body>
</html>
