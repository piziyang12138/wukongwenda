$(function () {

    $('.search-tab-item').click(function () {
        $('.search-tab-item').removeClass('active');
        $(this).addClass('active');
        var index = $(this).index();
        $(this).parent().siblings().eq(0).children().css("display","none");
        $(this).parent().siblings().eq(0).children().eq(index).css("display",'block');
    });
    var current_id = -1;
    window.onscroll = function () {
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        var scrollHeight = document.documentElement.scrollHeight;
        var clientHeight = document.documentElement.clientHeight;
        if (scrollTop + clientHeight >= scrollHeight-230) {
            var container = document.getElementById('w-feed-container');
            var aid = container.lastElementChild.previousElementSibling.firstElementChild.value;
            var req = new XMLHttpRequest();
            var keyword =container.lastElementChild.previousElementSibling.firstElementChild.nextElementSibling.value;
            req.open('post',contextPath + '/search/getmore',true);
            req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            if (current_id === parseInt(aid)){
                return;
            }
            req.send('aid='+aid+"&keyword="+keyword);
            current_id = parseInt(aid);
            req.onload = function () {
                var data = JSON.parse(req.responseText);
                if (data.list.length !== 0){
                    var html1 = template('solr-content-warp',data);
                    $(container.lastElementChild).before(html1);
                    current_id = -1;
                }
            };

        }
    };
});