function mouseover(e) {
    e.className = 'w-follow-btn followed dis-follow';
    e.children[2].innerText = '取消关注';
}

function mouseout(e) {
    e.className = 'w-follow-btn followed';
    e.children[2].innerText = '已关注';
}

$(function () {
    //关注按钮
    let follow_btn = document.getElementsByClassName('w-follow-btn');
    if (follow_btn !== null) {
        for (let i = 0; i < follow_btn.length; i++) {
            follow_btn[i].onclick = function () {
                let followedid = this.nextElementSibling.value;
                let req = new XMLHttpRequest();
                req.open('post', contextPath + '/follower.admin', true);
                req.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                req.send('followedid=' + followedid);
                req.onload = function () {
                    if (req.responseText === 'successful') {
                        if (follow_btn[i].children[2].innerText === '关注') {
                            follow_btn[i].className = 'w-follow-btn followed';
                            follow_btn[i].children[2].innerText = '已关注';
                            follow_btn[i].onmouseover = function () {
                                mouseover(this);
                            };
                            follow_btn[i].onmouseout = function () {
                                mouseout(this);
                            };
                        } else {
                            follow_btn[i].className = 'w-follow-btn';
                            follow_btn[i].children[2].innerText = '关注';
                            follow_btn[i].onmouseover = function () {
                            };
                            follow_btn[i].onmouseout = function () {
                            };
                        }
                    }
                }
            };
        }
    }


    const nav = document.getElementById("nav");
    const qlist = document.getElementById('user-question-list');
    let nav_children = nav.children;
    let qlist_children = qlist.children;
    var list = $('#nav').children();
    $('#nav').children().click(function () {
        $(this).siblings().removeClass('current');
        $('#user-question-list').children().css('display', 'none');
        $(this).addClass('current');
        $('#user-question-list').children().eq($(this).index()).css('display', 'block');
    });
    if ($(".answer-text-full").height() !== 800) {
        console.log($(this).height());
        $(this).next().css('display', 'none');
    }
    $(".j-expand-showfull").click(function () {
        $(this).prev().css('max-height', 'none');
        $(this).css('display', 'none');
    });
})
;