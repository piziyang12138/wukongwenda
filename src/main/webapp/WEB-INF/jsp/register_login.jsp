<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/18
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0095)https://sso.toutiao.com/login/?service=https%3A%2F%2Fwww.wukong.com%2Fwenda%2Fwelcome%2F#type=1 -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="dns-prefetch" href="https://s3.pstatp.com/">
    <link rel="dns-prefetch" href="https://s3a.pstatp.com/">
    <link rel="dns-prefetch" href="https://s3b.pstatp.com/">
    <link rel="dns-prefetch" href="https://p1.pstatp.com/">
    <link rel="dns-prefetch" href="https://p3.pstatp.com/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui">
    <meta name="baidu-site-verification" content="T239HZAbh7">
    <meta name="360-site-verification" content="b96e1758dfc9156a410a4fb9520c5956">
    <meta name="360_ssp_verify" content="2ae4ad39552c45425bddb738efda3dbb">
    <meta name="google-site-verification" content="3PYTTW0s7IAfkReV8wAECfjIdKY-bQeSkVTyJNZpBKE">
    <meta name="shenma-site-verification" content="34c05607e2a9430ad4249ed48faaf7cb_1432711730">
    <meta name="baidu_union_verify" content="b88dd3920f970845bad8ad9f90d687f7">
    <meta name="domain_verify"
          content="pmrgi33nmfuw4ir2ej2g65lunfqw6ltdn5wselbcm52wszbchirdqyztge3tenrsgq3dknjume2tayrvmqytemlfmiydimddgu4gcnzcfqrhi2lnmvjwc5tfei5dcnbwhazdcobuhe2dqobrpu">
    <title>悟空问答</title>
    <meta name="keywords" content="今日头条，头条，头条网，头条新闻，今日头条官网">
    <meta name="description"
          content="《今日头条》(www.toutiao.com)是一款基于数据挖掘的推荐引擎产品，它为用户推荐有价值的、个性化的信息，提供连接人与信息的新型服务，是国内移动互联网领域成长最快的产品服务之一。">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon"
          href="https://s3a.pstatp.com/toutiao/resource/ntoutiao_web/static/image/favicon_8e9c9c7.ico"
          type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout_5fcc025.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_40bd3f7.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_wenda_3ccaeb0.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register_login.css">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <style>#BAIDU_DSPUI_FLOWBAR, .adsbygoogle, .ad, div[class^="ad-widsget"], div[id^="div-gpt-ad-"], a[href*="cpro.baidu.com"], a[href*="@"][href*=".exe"], a[href*="/?/"][href*=".exe"], .adpushwin {
        display: none !important;
        max-width: 0 !important;
        max-height: 0 !important;
        overflow: hidden !important;
    }</style>
    <style>.ad-item, [data-node="adItem"], .feedcomm, #pagelet-commbox, .goodvoice, #pageletBottomBanner, #pagelet-adindextop, #pagelet-btestad_taobao, [ga_event="feed_ad_click"], [data-tag^="ad_"], div.tbanneradd, #pagelet-iad, iframe[src^="http://toutiao.com/adsafe/"] {
        display: none !important;
        max-width: 0 !important;
        max-height: 0 !important;
        overflow: hidden !important;
    }</style>
    <script src="${pageContext.request.contextPath}/thridpartjs/jquery-3.3.1.min.js"></script>
    <script>
        flag = false;
        contextPath = '${pageContext.request.contextPath}';
        model = '${model}';
    </script>
    <script src="${pageContext.request.contextPath}/js/register_login.js" charset="gb2312" type="text/javascript"></script>
</head>
<body style="min-width: 1220px; overflow-x: hidden;"><a href="https://sso.toutiao.com/articles_news_society/"
                                                        style="display:none;"></a>
<div class="y-wrap">
    <div class="content"><a class="logo-wrap" href="http://www.wukong.com/"><img
            src="${pageContext.request.contextPath}/img/logo_new_2c7582f.png" alt=""></a>
        <div riot-tag="wendaLoginBox" class="wendaLoginBox">
            <div class="y-box login-header">
                <div class="y-left item " id="login-label"><span>登录</span></div>
                <div class="y-left item active" id="register-label"><span>注册</span></div><!--riot placeholder--> </div>
            <div class="login-type">
                <div riot-tag="wendaFadeRegister" service="https://www.wukong.com/wenda/welcome/"
                     captcha="R0lGODdheAAeAIQAAP////b2//T0//Dw/9TU/83N/8zM/8nJ/8bG/729/7i4/6+v/6ys/6am/52d/4yM/4eH/3h4/2tr/1RU/05O/0pK/0lJ/0RE/zs7/y8v/yws/xER/wQE/wMD/wAA/wAAACwAAAAAeAAeAEAI/wABCBxIsKDBgwgTKlzIsKHDhxAjSpxIsaLFhx4AAPDgIQIADwAAeABA0gMAAB5SAgDgAYBLAB4AAPBAEwAADwA4ANjpAYBPDwA8CAXgAYAHDwCSKl3KtKnTp1CjSk3qAYBVAB48ANjKFYAHDwAAeABAtqwHDwAAeADA1kMCAB7iAvAAoK4HAHgxeADA1wOAv4ADCx5MuLDhw4gTK17MuLHjx4o9eADgwQMAAB48APAAAIAHAB0AiPYAoLQHAB4AAPDgAQAADx4AyPYAwAOA2xg8ANgNwAMADwCCCx9OvLjx48iTKx/uoblzABM8AJg+3QMAAB48UADAnbsHAOA9eP9YAMADgPPnPQBY7wGABw8APHgAAMADgPv48+vfz7+/f4AABA4kWNDgQYQJFS5k2NDhQ4gRJU6kWNHiRYwZNW7k2NHjx4EeAADwAMCkBwAAPADw0BKABwAAPAAA4MEDAAAeAOz0AMADAKAePAAg6gHAUQ8eACz14AGABwBRpU6lWtXqVaxZtXrQ4AEAAA8eAIwF4AHAWQ8A1Kr1AMCtWw8A5AoAAMCDAg8A9Or1AACAB8AAAnggDMADAMSJFS9m3NjxY8iRF3vwAACABwCZNXsA0NkDANChPQAg7QFABg8AVHsA0NoDAAAePAAA4AHAbQAePADg3dv3b+DBhQ8nXtz/w/HjBQAsZ87cw/PnAKRP91C9OgDsHrRv3+DBu3cA4cN7IO8BwHn06dWvZ9/e/Xv48eXPp1/f/n38+fXv59/fP0AAAgcSLGjwIMKEChcybOjwIcSIEidSrGjxIsaMDj1w7Ajgo4eQHgCQJOnh5EkAHlZ6AOASgIeYMmd6AGATgIecHgDw7OnzJ9CgQocSLQrAgwcAHgA4AOABgAcAADwAIADAAwAAHgBw9QAAgAcAYj0AoOABAFoPAAB48ADgrQcADAAA8AAAgAcAevfy7ev3L+DAggd7AADAA4DEHgAA8ADgsQcAADx4AOABgAcPADZ7AADAAwAPHgAA8ADgNAAP/wBWr/YA4LUHAB4A0K5t+zbu3Lp38+7tAQBwDwAAeAAAwIMHAAA8eADg4TkADx4AUAfgAQB2Dw8AeIDgAQB4AB48AADg4YIHAB4AePAAwAOA+PLn069v/z7+/PoBeGgAACAAAB4AFPQAAKEHAx4AAPAAoAIAiQA8eABw0QMCDwA8APDo0QMAkR48ADDpwQMADx4AtHT5EmZMmTNp1rT50oMHAAAkeADw86cHAEM9ADB61AMAAB6YegAAwIMHAFM9eAAAwAMAAB48APDgAYAHAGPJljV7Fm1atWvZAvDw1gMAAB48ALB71wMAvR4A9PXrAUBgDwAAeDAMwMMADwA8AHdw7AEAAA8eAFQG4AFAZs2bOXf2/Bl0aNEeSJMGcBp1ag8AAHgA8Bo2AA8AAHgAcBuABwC7PQDw4AEAAA8eABT34OEAAA8AmDd3/hx6dOnTqVe3fh07AA/buQPwDsCCB/EeAJQ3fx59evXr2bd3/x5+fPnz6QMICAA7"
                     hidesns="" mode="1">
                    <div class="baseLogin fadeRegister">
                        <form action="${pageContext.request.contextPath}/loginAndregister/register" method="POST" id="rform">
                            <div class="input-field"><input id="username" type="text" name="username" autocomplete="off"
                                                            spellcheck="false" placeholder="用户名"><span class="check-response">${error}</span></div>
                            <div class="input-field"><input id="pwd" type="password" name="pwd" autocomplete="off"
                                                            spellcheck="false" placeholder="密码"><span class="check-response"></span></div>
                            <div class="input-field verification"><input id="captcha1" type="text" name="captcha1"
                                                                         autocomplete="off" spellcheck="false"
                                                                         placeholder="验证码">
                                <div class="captcha-wrap"><img id="vertifycode-img" class="y-right captcha" alt=""
                                                               src="${pageContext.request.contextPath}/loginAndregister/generatecode">
                                    <span class="tips-bubble">看不清楚？换一张</span></div>
                                    <span class="check-response" id="check-response"></span>
                            </div>
                            <div class="input-field phone-code"></div>
                            <div class="y-box action"></div>
                            <input type="hidden" value="${referer}" name="referer">
                            <input type="button" name="submitBtn" class="action-btn" value="注册" id="submitbtn">
                        </form>
                        <ul class="sns-login">
                            <li class="sns weixin-login" data-pid="weixin"><span>微信</span></li>
                            <li class="sns qq-login" data-pid="qzone_sns"><span>QQ</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
