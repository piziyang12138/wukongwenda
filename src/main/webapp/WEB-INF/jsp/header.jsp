<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/8/8
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div id="paglet-index-header" data-log-from="!Nav" class="index-header">
    <div class="index-header-wrapper">
        <header id="pagelet-midbar" class="notlogin header-index">
            <div data-node="midbarInner" class="midbar-inner">
                <div class="inner clearfix">
                    <div class="suspension-part">
                        <div class="logo-box"><a href="#" data-log="Visit_Index|From_logo"
                                                 title="悟空问答" class="logo-link"><img
                                src="${pageContext.request.contextPath}/img/logo_5df43ca.png" alt="悟空问答"
                                class="logo"></a></div>
                        <div class="search-box">
                            <div data-node="searchBox" data-log-from="SearchBox" class="widget-search-input">
                                <form action="${pageContext.request.contextPath}/search" method="get" data-node="searchForm"
                                      target="_blank">
                                    <div class="input-group clearfix"><input autocomplete="off"
                                                                             ga_event="nav_search_input"
                                                                             data-node="searchInput" name="keyword"
                                                                             type="text" placeholder="搜索你感兴趣的问题">
                                        <div class="btn-submit">
                                            <button ga_event="nav_search" type="submit"><i
                                                    class="iconfont icon-ask_search"></i></button>
                                        </div>
                                    </div>
                                </form> <!----></div>
                        </div>
                    </div>
                    <a href="javascript:;" data-node="ask" data-log="PopUp_CreateQuestion|From_" class="ask" id="ask-question">提问</a>
                    <div class="nav logined"><a href="#" data-log="Visit_Index|From_Link" title="首页"
                                                class="selected">首页</a> <a href="#"
                                                                           data-log="Visit_QuestionInvited|From_"
                                                                           title="等我来答" class="">等我来答</a> <a
                            href="#" target="_blank" data-log="Visit_NoteBook|From_">回答秘籍</a>
                        <div class="new-msg-btn">
                            <c:choose>
                                <c:when test="${!empty user}">
                                        <span class="w-new-msg-btn">
                                    <span>消息</span>
                                    <div class="w-new-layer layer-wrapper">
                                        <i class="triangle"></i>
                                        <a class="notice"><span>通知</span></a>
                                        <a class="invite"><span>邀请</span> <!----></a>
                                        <a class="digg"><span>点赞</span> <!----></a>
                                        <a class="comment"><span>评论</span> <!----></a>
                                        <a class="follow"><span>关注</span> <!----></a>
                                    </div>
                                </span>
                                </c:when>
                            </c:choose>
                        </div>
                        <div class="nav-account">
                            <c:choose>
                            <c:when test="${!empty user}">
                            <div data-node="user-account" class="nav-account-wrapper dropdown">
                                <a href="${pageContext.request.contextPath}/user/${user.id}" target="_blank"
                                   data-log="Visit_Profile|From_" class="nav-account-user line"><img
                                        src="${user.picpath}" alt=""
                                        class="nav-account-user-avatar"></a>
                                </c:when>
                                <c:otherwise>
                                <div data-node="user-account" class="nav-account-wrapper">
                                    <div class="loginBox"><a data-node="login" href="${pageContext.request.contextPath}/register_login/login"
                                                             class="nav-account-user line login"><span>登录</span></a> <i
                                            class="iconfont icon-Details_page_line"></i> <a data-node="register"
                                                                                            href="${pageContext.request.contextPath}/register_login/register"
                                                                                            class="nav-account-user line register"><span>注册</span></a>
                                    </div>
                                    </c:otherwise>
                                    </c:choose>
                                    <div class="dropdown-menu"><i class="triangle"></i>
                                        <div><a href="${pageContext.request.contextPath}/user/${user.id}" target="_blank"
                                                class="layer-item"><i class="iconfont icon-ask_write"></i>我的问答</a></div>
                                        <div><a class="layer-item" href="${pageContext.request.contextPath}/loginAndregister/logout"><i
                                                class="iconfont icon-ask_profile_exit"></i>退  出</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </header>
    </div>
</div>
</body>
</html>
