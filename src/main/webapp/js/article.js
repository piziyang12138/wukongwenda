/**
 * Created by ttc on 2018/7/20.
 */
function mouseover(e) {
    e.className = 'w-follow-btn followed dis-follow';
    e.children[2].innerText = '取消关注';
}

function mouseout(e) {
    e.className = 'w-follow-btn followed';
    e.children[2].innerText = '已关注';
}

function like(e) {
    var cid = e.previousElementSibling.value;
    var req = new XMLHttpRequest();
    req.open('post', contextPath + '/like/admin/like', true);
    req.setRequestHeader("request-with", 'ajax');
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send('cid=' + cid + '&islike=1');
    req.onload = function () {
        if (req.getResponseHeader('redirect') !== null) {
            window.location.href = contextPath + req.getResponseHeader('redirect');
        }
        if (req.responseText === 'successful') {
            if (e.className.indexOf('active') !== -1) {
                e.className = 'w-like answer-like-count';
                e.children[1].innerText = parseInt(e.children[1].innerText) - 1;
                e.nextElementSibling.onclick = function () {
                    unlike(this, this.previousElementSibling);
                };
            } else {
                e.className = 'w-like answer-like-count active';
                e.children[1].innerText = parseInt(e.children[1].innerText) + 1;
                e.nextElementSibling.onclick = function () {
                };
            }

        }
    }
}

function unlike(e) {
    var cid = e.previousElementSibling.previousElementSibling.value;
    var req = new XMLHttpRequest();
    req.open('post', contextPath + '/like/admin/like', true);
    req.setRequestHeader("request-with", 'ajax');
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send('cid=' + cid + '&islike=0');
    req.onload = function () {
        if (req.getResponseHeader('redirect') !== null) {
            window.location.href = contextPath + req.getResponseHeader('redirect');
        }
        if (req.responseText === 'successful') {
            if (e.className.indexOf('active') !== -1) {
                e.className = 'w-like answer-dislike-count';
                e.children[1].innerText = parseInt(e.children[1].innerText) - 1;
                e.previousElementSibling.onclick = function () {
                    like(this, this.nextElementSibling);
                };
            } else {
                e.className = 'w-like answer-dislike-count active';
                e.children[1].innerText = parseInt(e.children[1].innerText) + 1;
                e.previousElementSibling.onclick = function () {
                };
            }

        }
    }
}

window.onload = function () {
    //关注按钮
    var follow_btn = document.getElementsByClassName('w-follow-btn');
    $('.w-follow-btn').click(function () {
            var followedid = this.nextElementSibling.value;
            var req = new XMLHttpRequest();
            req.open('post', contextPath + '/follower/admin/follow', true);
            req.setRequestHeader("request-with", 'ajax');
            req.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            req.send('followedid=' + followedid);
            var follow_btn = this;
            req.onload = function () {
                if (req.getResponseHeader('redirect') !== null) {
                    window.location.href = contextPath + '/' + req.getResponseHeader('redirect');
                }
                if (req.responseText === 'successful') {
                    if (follow_btn.children[2].innerText === '关注') {
                        follow_btn.className = 'w-follow-btn followed';
                        follow_btn.children[2].innerText = '已关注';
                        follow_btn.onmouseover = function () {
                            mouseover(this);
                        };
                        follow_btn.onmouseout = function () {
                            mouseout(this);
                        };
                    } else {
                        follow_btn.className = 'w-follow-btn';
                        follow_btn.children[2].innerText = '关注';
                        follow_btn.onmouseover = function () {

                        };
                        follow_btn.onmouseout = function () {
                        };
                    }
                }
            }
        }
    );

    //收藏按钮
    var collection_btn = document.getElementById("collection-btn");
    collection_btn.onclick = function () {
        var aid = window.location.href.split("/").pop();
        var req = new XMLHttpRequest();
        req.open('post', contextPath + '/collection/admin/collection', true);
        req.setRequestHeader("request-with", 'ajax');
        req.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        req.send('aid=' + aid);
        req.onload = function () {
            if (req.getResponseHeader('redirect') !== null) {
                window.location.href = contextPath + '/' + req.getResponseHeader('redirect');
            }
            if (req.responseText === 'successful') {
                var collection_btn = document.getElementById("collection-btn");
                if (collection_btn.children[1].innerText === '已收藏') {
                    collection_btn.children[2].innerText = parseInt(collection_btn.children[2].innerText) - 1;
                    collection_btn.children[0].className = 'iconfont icon-collection';
                    collection_btn.children[1].innerText = '收藏问题';
                } else {
                    collection_btn.children[2].innerText = parseInt(collection_btn.children[2].innerText) + 1;
                    collection_btn.children[0].className = 'iconfont icon-collection collected';
                    collection_btn.children[1].innerText = '已收藏';
                }
            }
        }
    };

    testEditor = editormd("test-editormd", {
        width: "100%",
        height: 200,
        path: contextPath + "/editor-md-master/lib/",
        placeholder: '可以直接拖拽图片或者粘贴截图，看效果请打开实时预览',
        toolbarIcons: function () {
            // Or return editormd.toolbarModes[name]; // full, simple, mini
            // Using "||" set icons align right.
            return editormd.toolbarModes['mini'];
        },
        codeFold: true,
        saveHTMLToTextarea: true,    // 保存 HTML 到 Textarea
        watch: false,                // 关闭实时预览

    });

    var submitbar = document.getElementById("submitbar");
    submitbar.children[2].onclick = function () {
        var content = document.getElementsByClassName('editormd-markdown-textarea')[0].innerText;
        var html = document.getElementsByClassName('editormd-html-textarea')[0].innerText;
        var aid = this.previousElementSibling.value;
        $.post(contextPath + '/comment/admin/add',{content: content,chtml: html,articleid :aid},function (data,textStatus, request) {
            if (request.getResponseHeader('redirect') !== null) {
                window.location.href = contextPath + request.getResponseHeader('redirect');
            } else {
                var html = template('div', JSON.parse(data));
                console.log(html)
                var div = document.createElement('div');
                div.className = 'answer-item sticky-item req_1';
                div.innerHTML = html;
                var answers = document.getElementById('answer-items');
                var first = answers.firstElementChild;
                answers.insertBefore(div, first);
            }
        });
        // var req = new XMLHttpRequest();
        // req.open('post', contextPath + '/comment/admin/add', true);
        // req.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        // req.setRequestHeader("request-with", 'ajax');
        // req.send("content=" + content + "&chtml=" + html.replace(" alt/g","") + '&articleid=' + aid);
        // req.onload = function () {
        //     if (req.getResponseHeader('redirect') !== null) {
        //         window.location.href = contextPath + req.getResponseHeader('redirect');
        //     } else {
        //         var data = JSON.parse(req.responseText);
        //         var html = template('div', data);
        //         var div = document.createElement('div');
        //         div.className = 'answer-item sticky-item req_1';
        //         div.innerHTML = html;
        //         var answers = document.getElementById('answer-items');
        //         var first = answers.firstElementChild;
        //         answers.insertBefore(div, first);
        //     }
        // }
    };

    //图片点击事件
    var preview_img = document.getElementById("preview-img");
    if (preview_img !== null) {
        preview_img.onclick = function () {
            var index = layer.open({
                title: false,
                area: ['600px'],
                content: `<img src="${this.src}" width="500px" height="500px">`,
                shade: 0.8,
                shadeClose: true,
                btn: [],
                scrollbar: false
            });
            layer.style(index, {
                "background": '#333333',
                // "opacity": 0.5,
            });
        }
    }

    $('.index-header').addClass('move');

    $(".j-expand-showfull").show(function () {
        if ($(this).prev().height() !== 800) {
            $(this).css('display', 'none');
        }
    }).click(function () {
        $(this).prev().css('max-height', 'none');
        $(this).css('display', 'none');
    });
};
var blob = null;
var testEditor;
document.ondragover = function () {
    return false;
};

document.ondrop = function (e) {
    console.log();
    blob = e.dataTransfer.items[0].getAsFile();
    var req = new XMLHttpRequest();
    var formdata = new FormData();
    formdata.append("file", blob);
    req.open("post", contextPath + "/img/upload", true);
    req.send(formdata);
    req.onload = function (ev) {
        testEditor.appendMarkdown("![](" + req.responseText + ")");
    }
    e.preventDefault();
};


//系统的ctrl+v 会触发js中的document的paste事件，event.clipboardData可以获取粘贴板里的内容，虽然在控制台
//上显示clipboardData的长度为0，但是确实是可以获取到其中内容的。clipboardData.items获取内容列表，
//clipboardData.items[0]为最近复制到粘贴板的内容，如果内容是截图，则type为“image/png”，
//所以可用type来判断是否是截图，然后用items[0].getAsFile()方法将其转为图片
document.addEventListener("paste", function (event) {
    // console.log(event);
    var isChrome = false;
    if (event.clipboardData || event.originalEvent) {
        //某些chrome版本使用的是event.originalEvent
        var clipboardData = (event.clipboardData || event.originalEvent.clipboardData);
        if (clipboardData.items) {
            // for chrome
            var items = clipboardData.items;
            var len = items.length;
            isChrome = true;
            for (var i = 0; i < len; i++) {
                console.log(items[i]);
                if (items[i].type.indexOf("image") !== -1) {
                    //getAsFile() 此方法只是living standard firefox ie11 并不支持
                    blob = items[i].getAsFile();
                    var req = new XMLHttpRequest();
                    var formdata = new FormData();
                    formdata.append("file", blob);
                    req.open("post", contextPath + "/img/upload", true);
                    req.send(formdata);
                    req.onload = function (ev) {
                        testEditor.appendMarkdown("![](" + req.responseText + ")");
                    }
                }
            }
        }
    }
});