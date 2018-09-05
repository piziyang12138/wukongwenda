<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/19
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0049)https://www.wukong.com/editUser/?uid=101244253391 -->
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
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <title> 悟空问答</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common_1b698e6.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_4c95c68.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/edit_static_c32574b.css">
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
    <script src="${pageContext.request.contextPath}/js/header.js"></script>
    <script src="${pageContext.request.contextPath}/js/editor_user.js" charset="UTF-8"></script>
</head>
<body class="page-edit-static" data-log-from="Edit">
<div id="wrapper">
    <%@include file="header.jsp" %>
    <main class="main-container page-user">
        <div class="sub-contianer">
            <div class="widget-user-feed">
                <div class="left-part">
                    <div id="large-user-card" class="large-user-card">
                        <div id="widget-usercard-left" data-log-from="ProfileCard" class="w-usercard-left">
                            <div itemscope="itemscope" itemtype="http://schema.org/Person" class="userinfo clearfix"><a
                                    target="_blank" href="#">
                                <meta itemprop="name" content="${user.username}">
                                <div class="avatar"><img src="${user.picpath}"
                                                         alt="" itemprop="image" class="header-img">
                                </div>
                                <div class="user-desc"><h1 class="user-name"><span>${user.username}</span> <span
                                        class="last-name-letter"><!----></span></h1>
                                    <div itemprop="description" class="user-intro">

                                    </div>
                                    <div class="user-title">
                                        <c:choose>
                                            <c:when test="${user.introduction == ''}">
                                                我很懒什么都不留下<input type="hidden" id="flag-span" value="0">
                                            </c:when>
                                            <c:otherwise>
                                                ${user.introduction}
                                            </c:otherwise>
                                        </c:choose>

                                    </div>
                                    <div><a href="javascript:;"><!----></a> <!----> <!----></div>
                                </div>
                            </a></div>
                            <div class="user-data clearfix"><a
                                    href="https://www.wukong.com/attention/?uid=101244253391&amp;type=1"
                                    data-log="Visit_FollowerTab|From_" target="_blank" class="user-data-left"><h3>
                                0
                            </h3> <span>关注</span></a> <a
                                    href="https://www.wukong.com/attention/?uid=101244253391&amp;type=2"
                                    data-log="Visit_FansTab|From_" target="_blank" class="user-data-right"><h3>
                                0
                            </h3> <span>粉丝</span> <!----></a>
                                <div class="vertiacl-line"></div>
                            </div>
                            <div class="achievement-container" uid="101244253391"><!---->
                                <div class="achievement-reading-data">
                                    <div class="first-line"><i class="iconfont icon-reading"></i> <span>回答获 0人阅读</span>
                                    </div>
                                    <div class="other-line"><span>本月获 0人阅读</span></div>
                                </div>
                                <div class="achievement-digg-data">
                                    <div class="first-line"><i class="iconfont icon-praise"></i> <span>回答获 0人点赞</span>
                                    </div>
                                    <div class="other-line"><span>本月共 0人点赞</span></div>
                                </div> <!----> <!----></div>
                        </div>
                    </div>
                </div>
                <div class="main-list">
                    <div class="edit-card-wrapper">
                        <div class="title-wrapper"><span class="title">
                                个人信息
                            </span> <a href="${pageContext.request.contextPath}/user/${user.id}" class="back-user"><span
                                class="back-text">返回个人主页</span> <i class="iconfont icon-forward"></i></a></div>
                        <div class="avatar-wrapper"><span class="labelCol">
                                用户头像
                            </span> <img src="${user.picpath}"
                                         class="header-img">
                            <div data-log="Click_Edit_Avantar|From_" class="layer">
                                编辑
                                <div class="upload-img"><input type="file" name="upfile" id="file"></div>
                            </div>
                        </div>
                        <div class="name-wrapper" id="editor-div"><span class="labelCol">
                                用户名
                            </span> <span class="user-name">
                            ${user.username}
                        </span> <span class="edit-name" id="editor-username"><i
                                class="iconfont icon-pen"></i><span>编辑</span></span>
                        </div>
                        <div class="introduce-wrapper" id="introduce-wrapper"><span class="labelCol">
                                个人介绍</span>
                            <c:choose>
                                <c:when test="${user.introduction == ''}">
                                <span class="edit-introduce edit-introduce-span"><i class="iconfont icon-add_icon"></i> <span>添加一句话介绍自己</span></span>
                                </c:when>
                                <c:otherwise>
                                    <div class="has-description" ><span class="introduce mr-20" id="introduce">
                                        ${user.introduction}
                                    </span>
                                        <span class="edit-introduce write-block edit-introduce-span"><i class="iconfont icon-pen"></i><span>编辑</span></span>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<footer class="copyright">
    <p>©2017 www.wukong.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
    <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
</body>
</html>
