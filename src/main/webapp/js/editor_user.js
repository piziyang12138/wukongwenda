/**
 * Created by ttc on 2018/7/19.
 */
$(function () {
    //文件input
    var upload_input = document.querySelector("#file");
    upload_input.onchange = function () {
        var formdata = new FormData();
        var req = new XMLHttpRequest();
        formdata.append('file', this.files[0]);
        req.open("post", contextPath + "/img/upload", true);
        req.send(formdata);
        req.onload = function () {
            var h_img = document.getElementsByClassName("header-img");
            var picpath = req.responseText;
            for (var i = 0; i < h_img.length; i++) {
                h_img[i].src = req.responseText;
            }
            $('.nav-account-user-avatar').attr('src',picpath);
            $.post(contextPath + "/user/edit_picpath",{picpath:picpath});
        }

    };


    //编辑用户名
    var editor_span = document.querySelector("#editor-username");
    editor_span.onclick = editor;

    //编辑个人介绍
    var edit_introduce = document.getElementsByClassName("edit-introduce-span");
    edit_introduce[0].onclick = editintroduce;

});

//用户名保存和取消

function store_username(e) {
    var username = e.parentNode.previousElementSibling.value;
    var req = new XMLHttpRequest();
    req.open("post", contextPath + "/user/edit", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send('username=' + username);

    var span_username = document.createElement("span");
    var span_editor = document.createElement("span");
    span_username.className = 'user-name';

    span_editor.className = 'edit-name';
    span_editor.onclick = editor;
    span_editor.innerHTML = '<i class="iconfont icon-pen"></i><span>编辑</span>';

    e.parentNode.parentNode.appendChild(span_username);
    e.parentNode.parentNode.appendChild(span_editor);

    var usernames = document.getElementsByClassName("user-name");

    usernames[0].firstElementChild.innerText = e.parentNode.previousSibling.value;
    usernames[1].innerText = e.parentNode.previousSibling.value;

    e.parentNode.previousSibling.remove();
    e.parentNode.remove();


}

function cancel_username(e) {
    var span_username = document.createElement("span");
    var span_editor = document.createElement("span");
    span_username.className = 'user-name';
    span_username.innerText = document.getElementsByClassName("user-name")[0].firstElementChild.innerText;

    span_editor.className = 'edit-name';
    span_editor.onclick = editor;
    span_editor.innerHTML = '<i class="iconfont icon-pen"></i><span>编辑</span>';

    e.parentNode.parentNode.appendChild(span_username);
    e.parentNode.parentNode.appendChild(span_editor);

    e.parentNode.previousSibling.remove();
    e.parentNode.remove();
}

function editor() {
    var editor_div = document.querySelector("#editor-div");
    editor_div.className = "name-wrapper changeMarginTop";
    var input = document.createElement("input");
    input.type = "text";
    input.className = "input";
    input.value = document.getElementsByClassName('user-name')[0].children[0].innerText;

    var btn_warrp = document.createElement("div");
    btn_warrp.className = 'btn-wrapper';
    btn_warrp.innerHTML = '<a class="btn btn-save" onclick="store_username(this)">保存</a> <a class="btn btn-cancel" onclick="cancel_username(this)">取消</a>';

    this.parentNode.appendChild(input);
    this.parentNode.appendChild(btn_warrp);
    this.previousElementSibling.remove();
    this.remove();
}

//个人介绍保存取消

function store_introduction(e) {
    var introduction = e.parentNode.previousElementSibling.value;
    var req = new XMLHttpRequest();
    req.open("post", contextPath + "/user/edit", true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    req.send('introduction=' + introduction);

    e.parentNode.parentNode.innerHTML = `<span class="labelCol">个人介绍</span><div class="has-description"><span class="introduce mr-20">${introduction}</span> <span class="edit-introduce write-block edit-introduce-span"><i class="iconfont icon-pen"></i><span>编辑</span></span></div>`;
    document.getElementsByClassName("user-title")[0].innerText = introduction;
    var edit_introduce = document.getElementsByClassName("edit-introduce-span");
    edit_introduce[0].onclick = editintroduce;
}

function cancel_introduction(e) {
    var introduction = document.getElementsByClassName("user-title")[0].innerText;
    var flag = document.getElementById("flag-span").value;
    if (flag === '0') {
        e.parentNode.parentNode.innerHTML = '<span class="labelCol">个人介绍</span> <span class="edit-introduce" onclick="editintroduce()"><i class="iconfont icon-add_icon"></i> <span>添加一句话介绍自己</span></span>';
    } else {
        e.parentNode.parentNode.innerHTML = `<span class="labelCol">个人介绍</span><div class="has-description"><span class="introduce mr-20">${introduction}</span> <span class="edit-introduce write-block edit-introduce-span" onclick="editintroduce()"><i class="iconfont icon-pen"></i><span>编辑</span></span></div>`;
    }
}


function editintroduce() {
    var introduction = document.getElementById('introduce');
    var introduce = '';
    if (introduction !== null) {
        introduce = introduction.innerText;
    }
    document.getElementById("introduce-wrapper").innerHTML = `<span class="labelCol">个人介绍</span> 
    <textarea class="">${introduce}</textarea> 
    <!----> 
    <div class="btn-wrapper"><a class="btn btn-save" onclick="store_introduction(this)">保存</a> 
    <a class="btn btn-cancel" onclick="cancel_introduction(this)">取消</a></div>`;
}