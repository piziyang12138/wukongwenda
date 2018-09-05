<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/20
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="layer/jquery-3.3.1.min.js"></script>
    <script src="layer/layer.js"></script>
    <script>
        window.onload = function () {
            $('#test2').on('click', function(){
                layer.open({
                    type: 1,
                    area: ['600px', '360px'],
                    offset:'100px',
                    shadeClose: true, //点击遮罩关闭
                    content: '\<\div style="padding:20px;">自定义内容\<\/div>'
                });
            });
        }
    </script>
</head>
<body data-log-from="Index">
<div id="wrapper" data-log-from="">
    <div id="paglet-index-header" data-log-from="!Nav" class="index-header">
        <div class="index-header-wrapper">
            <header id="pagelet-midbar" class="notlogin header-index">
                <div data-node="midbarInner" class="midbar-inner">
                    <div class="inner clearfix">
                        <div class="suspension-part">
                            <div class="logo-box"><a href="https://www.wukong.com/" data-log="Visit_Index|From_logo"
                                                     title="悟空问答" class="logo-link"><img
                                    src="${pageContext.request.contextPath}/img/logo_5df43ca.png" alt="悟空问答"
                                    class="logo"></a></div>
                            <div class="search-box">
                                <div data-node="searchBox" data-log-from="SearchBox" class="widget-search-input">
                                    <form action="https://www.wukong.com/search/" method="get" data-node="searchForm"
                                          target="_blank">
                                        <div class="input-group clearfix"><input autocomplete="off"
                                                                                 ga_event="nav_search_input"
                                                                                 data-node="searchInput" name="keyword"
                                                                                 type="text" placeholder="搜索你感兴趣的问题">
                                            <div class="btn-submit">
                                                <button ga_event="nav_search" type="submit" href="javascript:;"><i
                                                        class="iconfont icon-ask_search"></i></button>
                                            </div>
                                        </div>
                                    </form> <!----></div>
                            </div>
                        </div>
                        <a href="javascript:;" data-node="ask" data-log="PopUp_CreateQuestion|From_" class="ask" id="ask-question">提问</a>
                        <div class="nav logined"><a href="https://www.wukong.com/" data-log="Visit_Index|From_Link" title="首页"
                                                    class="selected">首页</a> <a href="https://www.wukong.com/myquest/"
                                                                               data-log="Visit_QuestionInvited|From_"
                                                                               title="等我来答" class="">等我来答</a> <a
                                href="https://www.wukong.com/notebook/" target="_blank" data-log="Visit_NoteBook|From_">回答秘籍</a>
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
                                    <a href="${pageContext.request.contextPath}/jsp/user.jsp" target="_blank"
                                       data-log="Visit_Profile|From_" class="nav-account-user line"><img
                                            src="${pageContext.request.contextPath}/upload/${user.picpath}" alt=""
                                            class="nav-account-user-avatar"></a>
                                    </c:when>
                                    <c:otherwise>
                                    <div data-node="user-account" class="nav-account-wrapper">
                                        <div class="loginBox"><a data-node="login" href="${pageContext.request.contextPath}/jsp/register_login.jsp?model=login"
                                                                 class="nav-account-user line login"><span>登录</span></a> <i
                                                class="iconfont icon-Details_page_line"></i> <a data-node="register"
                                                                                                href="${pageContext.request.contextPath}/jsp/register_login.jsp?model=logout"
                                                                                                class="nav-account-user line register"><span>注册</span></a>
                                        </div>
                                        </c:otherwise>
                                        </c:choose>
                                        <div class="dropdown-menu"><i class="triangle"></i>
                                            <div><a href="https://www.wukong.com/user/" target="_blank"
                                                    class="layer-item"><i class="iconfont icon-ask_write"></i>我的问答</a></div>
                                            <div><a class="layer-item" href="${pageContext.request.contextPath}/logout.admin"><i
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
    <div class="answer-wrapper"></div>
    <main class="main-container page-index tag-0">
        <div id="pagelet-sidebar" class="right-part">
            <div id="placeholver_sidebar">
                <div>
                    <div id="user-card" class="user-card"><!----></div>
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
                                           class="wenda-board"><img src="./悟空问答首页_files/8e1f0009c8f8dc6bade0"
                                                                    alt=""></a></li>
                                    <li data-index="0" class="" style="width: 20%;">
                                        <div class="anno-content">
                                            今日头条x勺子课堂：解码大食代
                                        </div>
                                        <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                                           target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/9b23000b3afd0b741a27"
                                                                    alt=""></a></li>
                                    <li data-index="1" class="" style="width: 20%;">
                                        <div class="anno-content">
                                            我在 2018 世界杯现场
                                        </div>
                                        <a href="https://www.wukong.com/question/6566860373691990275/" target="_blank"
                                           title="我在 2018 世界杯现场" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/98a3000f4c6f021778dc"
                                                                    alt=""></a></li>
                                    <li data-index="2" class="unslider-active" style="width: 20%;">
                                        <div class="anno-content">
                                            有奖问答｜零基础玩转财务自由
                                        </div>
                                        <a href="https://www.wukong.com/wendawap/topic/6566146388508279048"
                                           target="_blank" title="有奖问答｜零基础玩转财务自由" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/8e1f0009c8f8dc6bade0"
                                                                    alt=""></a></li>
                                    <li class="unslider-clone" data-index="3" style="width: 20%;">
                                        <div class="anno-content">
                                            今日头条x勺子课堂：解码大食代
                                        </div>
                                        <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                                           target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                                           class="wenda-board"><img src="./悟空问答首页_files/9b23000b3afd0b741a27"
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
                    </div>
                    <div data-node="hot-wenda" class="hot-wenda">
                        <div data-log-from="Recommended" class="hot-qa"><h4><span>精选回答</span> <a
                                href="https://www.wukong.com/" data-node="recommand-feed" target="_blank">更多
                            <i class="iconfont icon-ask_arrow_right"></i></a></h4>
                            <div class="hot-qa-list">
                                <div class="hot-item hottest"><a
                                        href="https://www.wukong.com/answer/6579151136056410372/" target="_blank"
                                        data-log="Visit_Question|From_"><h2 class="title">
                                    法国队夺冠华帝出现退款难的局面，这次“退全款”活动是否涉嫌消费欺诈？</h2></a>
                                    <div class="answer-user">
                                        <div class="user-info">
                                            <div data-node="like" data-log="Like|From_" class="answer-like"><span
                                                    data-node="like-count">66赞</span> <i class="answer-like-icon"></i>
                                            </div>
                                            <span class="arrow"></span>
                                            <div class="user-link"><a
                                                    href="https://www.wukong.com/user/?uid=63384641374" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                                                    src="./悟空问答首页_files/383100005956164a3de4" alt=""></a> <a
                                                    href="https://www.wukong.com/user/?uid=63384641374" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-name"><span
                                                    class="uname" style="color: rgb(51, 51, 51);"> 麋鹿说法
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                                                    title="公司法律师" style="color: rgb(119, 119, 119);">公司法律师</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="https://www.wukong.com/answer/6579151136056410372/" target="_blank"
                                       data-log="Visit_Question|From_">
                                        <div class="preview">
                                            <div class="preview-image"><img src="./悟空问答首页_files/9b8d000125a710884cbf"
                                                                            alt=""></div>
                                            <p class="content">
                                                就本案当中是否涉嫌欺诈说点个人看法：欺诈是什么？欺诈这个词每个人都知道，但是根据《民法总则》第一百四十八条规定，一方以欺诈手段，使对方在违背真实意思的情况下实施的民事法律行为，受欺诈方有权请求人民法院或者仲裁机构予以撤销。同时《最高人民法院关于贯彻执行＜中华人民共和国民法通则）若</p>
                                        </div>
                                    </a></div>
                                <div class="hot-item hottest"><a
                                        href="https://www.wukong.com/answer/6579056032587186439/" target="_blank"
                                        data-log="Visit_Question|From_"><h2 class="title">
                                    永利宝官方App弹窗提醒投资人报警维权，这类P2P网络理财平台的风险性有多大？</h2></a>
                                    <div class="answer-user">
                                        <div class="user-info">
                                            <div data-node="like" data-log="Like|From_" class="answer-like"><span
                                                    data-node="like-count">59赞</span> <i class="answer-like-icon"></i>
                                            </div>
                                            <span class="arrow"></span>
                                            <div class="user-link"><a
                                                    href="https://www.wukong.com/user/?uid=59202459070" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                                                    src="./悟空问答首页_files/1bf4000f689edff0d528" alt=""></a> <a
                                                    href="https://www.wukong.com/user/?uid=59202459070" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-name"><span
                                                    class="uname" style="color: rgb(51, 51, 51);"> 朋礼松律师
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                                                    title="刑辩律师" style="color: rgb(119, 119, 119);">刑辩律师</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="https://www.wukong.com/answer/6579056032587186439/" target="_blank"
                                       data-log="Visit_Question|From_">
                                        <div class="preview">
                                            <div class="preview-image"><img src="./悟空问答首页_files/9b8d0000e4c2645e6086"
                                                                            alt=""></div>
                                            <p class="content">
                                                永利宝网贷平台的“爆雷”，只不过是6、7月份“爆雷潮”中的浪花一朵。江浙沪广四地中，除广东地区未见“雷声”外，其余三地的网贷平台，都是前赴后继，雷声频频。
                                                P2P网贷平台，到底是个什么鬼？ P2P网贷平台是互联网金融的一种新形态，是指个体网络借贷，即个体和个体之间通过互联网平台实</p></div>
                                    </a></div>
                                <div class="hot-item hottest"><a
                                        href="https://www.wukong.com/answer/6578718344940093703/" target="_blank"
                                        data-log="Visit_Question|From_"><h2 class="title">
                                    上海吴淞口附近水域一船沉没10人失踪3人获救，现场情况怎样了？</h2></a>
                                    <div class="answer-user">
                                        <div class="user-info">
                                            <div data-node="like" data-log="Like|From_" class="answer-like"><span
                                                    data-node="like-count">289赞</span> <i class="answer-like-icon"></i>
                                            </div>
                                            <span class="arrow"></span>
                                            <div class="user-link"><a
                                                    href="https://www.wukong.com/user/?uid=101045534406" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                                                    src="./悟空问答首页_files/98a400167338c5b93107" alt=""></a> <a
                                                    href="https://www.wukong.com/user/?uid=101045534406" target="_blank"
                                                    data-log="Visit_Profile|From_" class="answer-user-name"><span
                                                    class="uname" style="color: rgb(51, 51, 51);"> 蓝天救援队杨羿
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                                                    title="蓝天救援队闽浙赣三省督导官" style="color: rgb(119, 119, 119);">蓝天救援队闽浙赣三省督导官</span></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="https://www.wukong.com/answer/6578718344940093703/" target="_blank"
                                       data-log="Visit_Question|From_">
                                        <div class="preview">
                                            <div class="preview-image"><img src="./悟空问答首页_files/912500081bd598a32a9b"
                                                                            alt=""></div>
                                            <p class="content">
                                                我是蓝天救援队现场救援总指挥杨羿，此次参与了上海沉船事故的救援工作。我们是昨天连夜过来的，目前为止我们救援队共有71人到达现场。今早4点多我们就开始做救援准备，大约在6点多开始正式搜救。整体救援环节分为三个梯次，第一个梯次就是安排了7艘专业救生艇22名队员出动进行两岸及事发水域的</p>
                                        </div>
                                    </a></div><!----><!----><!----><!----><!----><!----><!----><!----></div>
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
<button id="test2">弹出自定义内容</button>
</body>
</html>
