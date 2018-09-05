/**
 * Created by ttc on 2018/7/20.
 */
var index;

function fabulous(e) {
    var req = new XMLHttpRequest();
    req.open('post',contextPath+'/like/admin/like',true);
    req.setRequestHeader('request-with','ajax');
    req.send('cid='+e.previousElementSibling.value);
    req.onload = function () {
        if (req.getResponseHeader('redirect') !== null){
            window.location.href = contextPath + req.getResponseHeader('redirect');
        }
        if (req.responseText === 'successful'){

        }
    }
}

function like(e) {
    var cid = e.previousElementSibling.value;
    var req = new XMLHttpRequest();
    req.open('post',contextPath + '/like/admin/like',true);
    req.setRequestHeader("request-with",'ajax');
    req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    req.send('cid='+cid+'&islike=1');
    req.onload = function () {
        if (req.getResponseHeader('redirect') !== null){
            window.location.href = contextPath + req.getResponseHeader('redirect');
        }
        if (req.responseText === 'successful') {
            if (e.className.indexOf('active') !== -1){
                e.className = 'w-like';
                e.children[1].innerText = parseInt(e.children[1].innerText)-1;
                e.nextElementSibling.onclick = function () {
                    unlike(this,this.previousElementSibling);
                };
            }else{
                e.className = 'w-like active';
                e.children[1].innerText = parseInt(e.children[1].innerText)+1;
                e.nextElementSibling.onclick = function () {};
            }

        }
    }
}

function unlike(e) {
    var cid = e.previousElementSibling.previousElementSibling.value;
    var req = new XMLHttpRequest();
    req.open('post',contextPath +'/like/admin/like',true);
    req.setRequestHeader("request-with",'ajax');
    req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    req.send('cid='+cid+'&islike=0');
    req.onload = function () {
        if (req.getResponseHeader('redirect') !== null){
            window.location.href = contextPath + req.getResponseHeader('redirect');
        }
        if (req.responseText === 'successful') {
            if (e.className.indexOf('active') !== -1){
                e.className = 'w-like';
                e.children[1].innerText = parseInt(e.children[1].innerText)-1;
                e.previousElementSibling.onclick = function () {
                    like(this,this.nextElementSibling);
                };
            }else{
                e.className = 'w-like active';
                e.children[1].innerText = parseInt(e.children[1].innerText)+1;
                e.previousElementSibling.onclick = function () {};
            }

        }
    }
}
$(function () {
    //加载热门
    var container = document.getElementById('container');
    var aid = Math.pow(2,31)-1;
    var req = new XMLHttpRequest();
    req.open('post',contextPath + '/article/getmore',true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send('aid='+aid+'&category=热门');
    req.onload = function () {
        var data = JSON.parse(req.responseText);
        if (data.list.length !== 0){
            container.innerHTML = template('content-warp', data);
        }
    };


    var current_id = 0;
    window.onscroll = function () {
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        var scrollHeight = document.documentElement.scrollHeight;
        var clientHeight = document.documentElement.clientHeight;
        var category = $('.current').find('span').html();
        if (scrollTop + clientHeight >= scrollHeight-230) {
            var container = document.getElementById('container');
            var aid = container.lastElementChild.firstElementChild.value;
            var req = new XMLHttpRequest();
            req.open('post',contextPath + '/article/getmore',true);
            req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            if (current_id === parseInt(aid)){
                return;
            }
            req.send('aid='+aid+'&category='+category);
            current_id = parseInt(aid);
            req.onload = function () {
                var data = JSON.parse(req.responseText);
                if (data.list.length !== 0){
                    var html1 = template('content-warp',data);
                    container.innerHTML = container.innerHTML + html1;
                    current_id = 0;
                }
            };

        }
    };
    $('.tag-item').click(function () {
        $('.tag-item').removeClass('current');
        $(this).addClass('current');
        var category = $(this).find('span').html();
        var container = document.getElementById('container');
        var aid = Math.pow(2,31)-1;
        var req = new XMLHttpRequest();
        req.open('post',contextPath + '/article/getmore',true);
        req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        req.send('aid='+aid+'&category='+category);
        req.onload = function () {
            var data = JSON.parse(req.responseText);
            if (data.list.length !== 0){
                container.innerHTML = template('content-warp', data);
            }
        };
    });
    var left = 0;
    var timeid = setInterval(function () {
        $('.unslider-wrap').css("left",left-10+'%');
        left = left -10;
        if (left === -100){
            clearInterval(timeid);
            $('.unslider-wrap').css("left",'0%');
            left = 0;
        }
    },100);
    setInterval(function(){
        var timeid = setInterval(function () {
            $('.unslider-wrap').css("left",left-10+'%');
            left = left -10;
            if (left === -100){
                clearInterval(timeid);
                $('.unslider-wrap').css("left",'0%');
                left = 0;
            }
        },100);
    },6000);
});