<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/25
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/html" id="div">

    <div class="question-title"><h2><a href="${pageContext.request.contextPath}/article/{{aid}}"
                                       target="_blank" data-log="Visit_Question|From_Link">{{title}}</a>
    </h2>
        <div class="question-info"><span class="question-answer-num">0回答</span><span
                class="question-follow-num">0人收藏</span></div>
    </div>
    <div class="question-answers">
    </div>
</script>

<script type="text/html" id="solr-content-warp">
    {{each list as article}}
    <div data-log-from="Feed" class="question-v3">
    <input type="hidden" value="{{article.aid}}">
    <input type="hidden" value="{{article.keyword}}">
    <div class="question-title"><h2><a href="${pageContext.request.contextPath}/article/{{article.aid}}" target="_blank"
                                       data-log="Visit_Question|From_Link">{{#article.title}}</a>
    </h2>
        <div class="question-info"><span class="question-answer-num">{{article.rescount}}回答</span><span class="question
follow-num">{{article.collection_count}}人收藏</span></div>
    </div> <!---->
    <div class="question-answers">
            {{if article.username != null}}
                {{if article.img != null}}
                    <div class="answer-item-v3 has-pic">
                        <div class="answer-item-pic"><a href="javascript:"><img
                                src="{{article.img}}"></a>
                        </div>
                        <!---->
                        <div class="answer-info">
                            <div class="answer-info-user"><a target="_blank"
                                                             href="${pageContext.request.contextPath}/user/{{article.comment_userid}}"
                                                             data-log="Visit_Profile|From_ProfilePic"
                                                             class="answer-info-user-avatar"><img
                                    alt=""
                                    src="{{article.upicpath}}">
                                <span class="answer-info-user-name">{{article.username}}
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                                <span class="answer-info-user-title">法律行业从业者</span></div>
                        </div>
                        <div class="answer-item-content">
                            <p><a
                                    href="javascript:;"
                                    data-log="PopUp_AnswerContent|From_">
                                    {{article.chtml}}
                                <span
                                        class="answer-item-whole">全文</span></a></p>
                        </div>
                        <div class="answer-oper">
                            <input type="hidden" value="{{article.cid}}">
                                {{if article.islike}}
                                    <a href="javascript:" data-log="Like|From_"
                                       class="w-like active" onclick="like(this)">
                                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                            class="like-num">{{article.likecount}}</span>
                                        <span>赞</span></a>
                                    <a href="javascript:" data-log="Downvote|From_"
                                       class="w-unlike" onclick="">
                                        <i class="iconfont icon-ask_stamp"></i>
                                        <span class="unlike-count">{{article.unlikecount}}</span>
                                        <span>踩</span>
                                    </a>
                                {{else if article.isunlike}}
                                    <a href="javascript:" data-log="Like|From_" class="w-like"
                                       onclick="">
                                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                            class="like-num">{{article.likecount}}</span>
                                        <span>赞</span></a>
                                    <a href="javascript:" data-log="Downvote|From_"
                                       class="w-unlike active" onclick="unlike(this)">
                                        <i class="iconfont icon-ask_stamp"></i>
                                        <span class="unlike-count">{{article.unlikecount}}</span>
                                        <span>踩</span>
                                    </a>
                                {{else}}
                                    <a href="javascript:" data-log="Like|From_" class="w-like"
                                       onclick="like(this)">
                                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                            class="like-num">{{article.likecount}}</span>
                                        <span>赞</span></a>
                                    <a href="javascript:" data-log="Downvote|From_"
                                       class="w-unlike" onclick="unlike(this)">
                                        <i class="iconfont icon-ask_stamp"></i>
                                        <span class="unlike-count">{{article.unlikecount}}</span>
                                        <span>踩</span>
                                    </a>
                                {{/if}}
                            {{else if article.img == null}}

                            <div class="answer-item-v3"><!----> <!---->
                                <div class="answer-info">
                                    <div class="answer-info-user"><a target="_blank"
                                                                     href="${pageContext.request.contextPath}/user/{{article.comment_userid}}"
                                                                     data-log="Visit_Profile|From_ProfilePic"
                                                                     class="answer-info-user-avatar"><img
                                            alt=""
                                            src="{{article.upicpath}}"> <span
                                            class="answer-info-user-name">{{article.username}}
                                        <!----></span></a> <!----></div>
                                </div>
                                <div class="answer-item-content"><p><a
                                        href="/answer/6589044082973081869/"
                                        data-log="PopUp_AnswerContent|From_">{{article.chtml}}
                                    <span
                                            class="answer-item-whole">全文</span></a>
                                </p></div>
                                <div class="answer-oper">
                                    <input type="hidden" value="{{article.cid}}">
                                    {{if article.islike}}
                                    <a href="javascript:" data-log="Like|From_"
                                       class="w-like active" onclick="like(this)">
                                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                            class="like-num">{{article.likecount}}</span>
                                        <span>赞</span></a>
                                    <a href="javascript:" data-log="Downvote|From_"
                                       class="w-unlike" onclick="">
                                        <i class="iconfont icon-ask_stamp"></i>
                                        <span class="unlike-count">{{article.unlikecount}}</span>
                                        <span>踩</span>
                                    </a>
                                    {{else if article.isunlike}}
                                    <a href="javascript:" data-log="Like|From_" class="w-like"
                                       onclick="">
                                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                            class="like-num">{{article.likecount}}</span>
                                        <span>赞</span></a>
                                    <a href="javascript:" data-log="Downvote|From_"
                                       class="w-unlike active" onclick="unlike(this)">
                                        <i class="iconfont icon-ask_stamp"></i>
                                        <span class="unlike-count">{{article.unlikecount}}</span>
                                        <span>踩</span>
                                    </a>
                                    {{else}}
                                    <a href="javascript:" data-log="Like|From_" class="w-like"
                                       onclick="like(this)">
                                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                            class="like-num">{{article.likecount}}</span>
                                        <span>赞</span></a>
                                    <a href="javascript:" data-log="Downvote|From_"
                                       class="w-unlike" onclick="unlike(this)">
                                        <i class="iconfont icon-ask_stamp"></i>
                                        <span class="unlike-count">{{article.unlikecount}}</span>
                                        <span>踩</span>
                                    </a>
                                    {{/if}}
                            {{/if}}
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
                {{/if}}
    </div> <!---->
                    </div>
            {{/each}}
</script>
<script type="text/html" id="content-warp">
    {{each list as article}}
    <div data-log-from="Feed" class="question-v3">
        <input type="hidden" value="{{article.aid}}">
        <div class="question-title"><h2><a href="${pageContext.request.contextPath}/article/{{article.aid}}" target="_blank"
                                           data-log="Visit_Question|From_Link">{{#article.title}}</a>
        </h2>
            <div class="question-info"><span class="question-answer-num">{{article.rescount}}回答</span><span class="question
follow-num">{{article.collection_count}}人收藏</span></div>
        </div> <!---->
        <div class="question-answers">
            {{if article.username != null}}
            {{if article.img != null}}
            <div class="answer-item-v3 has-pic">
                <div class="answer-item-pic"><a href="javascript:"><img
                        src="{{article.img}}"></a>
                </div>
                <!---->
                <div class="answer-info">
                    <div class="answer-info-user"><a target="_blank"
                                                     href="${pageContext.request.contextPath}/user/{{article.comment_userid}}"
                                                     data-log="Visit_Profile|From_ProfilePic"
                                                     class="answer-info-user-avatar"><img
                            alt=""
                            src="{{article.upicpath}}">
                        <span class="answer-info-user-name">{{article.username}}
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                        <span class="answer-info-user-title">法律行业从业者</span></div>
                </div>
                <div class="answer-item-content">
                    <p><a
                            href="javascript:;"
                            data-log="PopUp_AnswerContent|From_">
                        {{article.chtml}}
                        <span
                                class="answer-item-whole">全文</span></a></p>
                </div>
                <div class="answer-oper">
                    <input type="hidden" value="{{article.cid}}">
                    {{if article.islike}}
                    <a href="javascript:" data-log="Like|From_"
                       class="w-like active" onclick="like(this)">
                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                            class="like-num">{{article.likecount}}</span>
                        <span>赞</span></a>
                    <a href="javascript:" data-log="Downvote|From_"
                       class="w-unlike" onclick="">
                        <i class="iconfont icon-ask_stamp"></i>
                        <span class="unlike-count">{{article.unlikecount}}</span>
                        <span>踩</span>
                    </a>
                    {{else if article.isunlike}}
                    <a href="javascript:" data-log="Like|From_" class="w-like"
                       onclick="">
                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                            class="like-num">{{article.likecount}}</span>
                        <span>赞</span></a>
                    <a href="javascript:" data-log="Downvote|From_"
                       class="w-unlike active" onclick="unlike(this)">
                        <i class="iconfont icon-ask_stamp"></i>
                        <span class="unlike-count">{{article.unlikecount}}</span>
                        <span>踩</span>
                    </a>
                    {{else}}
                    <a href="javascript:" data-log="Like|From_" class="w-like"
                       onclick="like(this)">
                        <!----> <i class="iconfont icon-digg_clicked"></i> <span
                            class="like-num">{{article.likecount}}</span>
                        <span>赞</span></a>
                    <a href="javascript:" data-log="Downvote|From_"
                       class="w-unlike" onclick="unlike(this)">
                        <i class="iconfont icon-ask_stamp"></i>
                        <span class="unlike-count">{{article.unlikecount}}</span>
                        <span>踩</span>
                    </a>
                    {{/if}}
                    {{else if article.img == null}}

                    <div class="answer-item-v3"><!----> <!---->
                        <div class="answer-info">
                            <div class="answer-info-user"><a target="_blank"
                                                             href="${pageContext.request.contextPath}/user/{{article.comment_userid}}"
                                                             data-log="Visit_Profile|From_ProfilePic"
                                                             class="answer-info-user-avatar"><img
                                    alt=""
                                    src="{{article.upicpath}}"> <span
                                    class="answer-info-user-name">{{article.username}}
                                <!----></span></a> <!----></div>
                        </div>
                        <div class="answer-item-content"><p><a
                                href="/answer/6589044082973081869/"
                                data-log="PopUp_AnswerContent|From_">{{article.chtml}}
                            <span
                                    class="answer-item-whole">全文</span></a>
                        </p></div>
                        <div class="answer-oper">
                            <input type="hidden" value="{{article.cid}}">
                            {{if article.islike}}
                            <a href="javascript:" data-log="Like|From_"
                               class="w-like active" onclick="like(this)">
                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                    class="like-num">{{article.likecount}}</span>
                                <span>赞</span></a>
                            <a href="javascript:" data-log="Downvote|From_"
                               class="w-unlike" onclick="">
                                <i class="iconfont icon-ask_stamp"></i>
                                <span class="unlike-count">{{article.unlikecount}}</span>
                                <span>踩</span>
                            </a>
                            {{else if article.isunlike}}
                            <a href="javascript:" data-log="Like|From_" class="w-like"
                               onclick="">
                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                    class="like-num">{{article.likecount}}</span>
                                <span>赞</span></a>
                            <a href="javascript:" data-log="Downvote|From_"
                               class="w-unlike active" onclick="unlike(this)">
                                <i class="iconfont icon-ask_stamp"></i>
                                <span class="unlike-count">{{article.unlikecount}}</span>
                                <span>踩</span>
                            </a>
                            {{else}}
                            <a href="javascript:" data-log="Like|From_" class="w-like"
                               onclick="like(this)">
                                <!----> <i class="iconfont icon-digg_clicked"></i> <span
                                    class="like-num">{{article.likecount}}</span>
                                <span>赞</span></a>
                            <a href="javascript:" data-log="Downvote|From_"
                               class="w-unlike" onclick="unlike(this)">
                                <i class="iconfont icon-ask_stamp"></i>
                                <span class="unlike-count">{{article.unlikecount}}</span>
                                <span>踩</span>
                            </a>
                            {{/if}}
                            {{/if}}
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
                    {{/if}}
                </div> <!---->
            </div>
            {{/each}}
</script>
</body>
</html>
