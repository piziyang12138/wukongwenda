window.onload = function(){
    $('#ask-question').on('click', function () {
        index = layer.open({
            type: 1,
            area: ['680px', '630px'],
            title: false,
            offset: '10px',
            closeBtn: false,
            scrollbar: false,
            shadeClose: true, //点击遮罩关闭
            content: `<div id="widget-ask-outer" data-log-from="AddQuestion" class="widget-ask-outr">
    <div class="widget-ask-inne">
        <div id="widget-ask" class="at-step-1">
            <div class="header"><h3>提问 <a href="javascript:;" data-node="close"
                                          data-log="PopUp_CreateQuestionClose|From_" class="close" onclick="closelayer()"><i
                    class="iconfont icon-dislike_icon_new"></i></a></h3></div>
            <div class="main">
                <div class="step1" id="step1"><h4>添加标题<span class="desc">（最多40个字）</span></h4>
                    <div class="input-box"><input data-node="title-input" type="text" placeholder="请输入问题" id="q-input"></div>
                    <div class="ask-sug" style="display: none;"><h5>
                        相似问题
                    </h5>
                        <ul></ul>
                    </div>
                </div>
                <div class="step2" id="step2"><h2 class="ask-title" id="ask-title"></h2>
                    <div class="textarea-box"><textarea data-node="desc-input" name="t"
                                                        placeholder="添加问题背景描述（选填）" id="question-background" oninput="textchange(this)"></textarea> <span class="word-count"><em
                            class="current">0</em>/<em>500</em></span></div>
                    <div id="img-selecter" class="img-selecter">
                        <div class="ask-img-outer">
                            <div class="ask-img-header">添加图片<span class="desc">（我只能让你传一张）</span></div>
                            <div class="img-preview" id="img-preview"></div>
                            <div class="tab-header">
                                <ul>
                                    <li class="">本地上传</li>
                                </ul>
                            </div>
                            <div class="tab-body">
                                <div class="tab-body-item">
                                    <div class="img-upload-field">
                                        <div class="img-upload-btn"><i class="iconfont icon-videouploads"></i> <span
                                                class="img-click-here">点击此处上传图片</span>
                                            <div class="img-file"><input type="file" name="upfile" onchange="upload(this)"></div>
                                            
                                        </div>
                                        <div class="img-loading" style="display: none;">
                                            <div class="img-progress"><span class="img-progress-bar"
                                                                            style="width: 0%;"></span> <span
                                                    class="img-progress-num">图片上传中...</span></div>
                                            <i class="iconfont icon-ask_close"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="step3"></div>
            </div>
            <div class="footer"><a href="javascript:;" data-node="pre" data-log="PopUp_CreateQuestionBack|From_"
                                   class="step-btn pre" id="previous" onclick="previousaction(this)">上一步</a> <a href="javascript:;" data-node="next"
                                                                   data-log="PopUp_CreateQuestionNext|From_"
                                                                   class="step-btn next" id="next" onclick="nextaction(this)">下一步</a> <a href="javascript:;"
                                                                                                    data-node="submit"
                                                                                                    data-log="PopUp_CreateQuestionSubmit|From_"
                                                                                                    class="step-btn submit" id="submit" onclick="submit(this)">提交</a>
            </div>
        </div>
    </div>
</div>`
        });
    });

    $('.search-box').find('input').focus(function () {
        $(this).parent().addClass('input-focused');
        $(this).closest('.search-box').addClass('input-focused');
        $(this).siblings('.btn-submit').addClass('input-focused');
        $(this).closest('.search-box').parent().siblings('.ask').addClass('input-focused');
    }).blur(function () {
        $(this).parent().removeClass('input-focused');
        $(this).closest('.search-box').removeClass('input-focused');
        $(this).siblings('.btn-submit').removeClass('input-focused');
        $(this).closest('.search-box').parent().siblings('.ask').removeClass('input-focused');
    });

    $('.btn-submit').find('button').click(function () {
        console.log($(this).siblings('input').val());
    });


};

function previousaction(e) {
    let d_step1 = document.getElementById('step1');
    let d_step2 = document.getElementById('step2');
    let submit_btn = document.getElementById('submit');
    let next_btn = document.getElementById('next');
    d_step1.style.display = 'block';
    d_step2.style.display = 'none';
    e.style.display = 'none';
    next_btn.style.display = 'block';
    submit_btn.style.display = 'none';
}

function textchange(e) {
    e.value = e.value.substr(0, 500);
    let content = e.value;
    e.nextElementSibling.children[0].innerText = content.length;

}

function nextaction(e) {
    let d_step1 = document.getElementById('step1');
    let d_step2 = document.getElementById('step2');
    let q_input = document.getElementById('q-input');
    let previous_btn = document.getElementById('previous');
    let submit_btn = document.getElementById('submit');

    q_input.isnull = !(q_input.value === undefined || q_input.value.length < 4);
    if (!q_input.isnull) {
        layer.open({
            title: false,
            shadeClose: true,
            offset: '300px',
            closeBtn: false,
            content: '字数不能少于4个字'
        })
    } else if (d_step1.style.display !== 'none') {
        document.getElementById('ask-title').innerText = q_input.value;
        d_step1.style.display = 'none';
        d_step2.style.display = 'block';
        previous_btn.style.display = 'block';
        e.style.display = 'none';
        submit_btn.style.display = 'block';
    }

}

function closelayer() {
    layer.close(index);
}

function upload(e) {
    var formdata = new FormData();
    var req = new XMLHttpRequest();
    formdata.append('file', e.files[0]);
    req.open("post", contextPath + "/img/upload", true);
    req.setRequestHeader("request-with",'ajax');
    req.send(formdata);
    req.onload = function () {
        if (req.getResponseHeader('redirect') !== null){
            window.location.href = contextPath + req.getResponseHeader('redirect');
        }
        var p_img = document.getElementById("img-preview");
        // console.log(req.responseText);
        let path = req.responseText;
        p_img.innerHTML = `<div class="img-preview-item"><img src="${path}" alt="" class="as-height"> <div class="img-del" onclick="imgdel(this)"><i class="iconfont icon-ask_close"></i></div> <!----></div>`

        //将input中的值设为空，避免选同一张图片的时候不触发onchange方法
        e.value = '';
    }
}

function imgdel(e) {
    e.parentNode.remove();
}

function submit(e) {
    let ask_title = document.getElementById('ask-title');
    let question_background = document.getElementById('question-background');
    let img_preview = document.getElementById('img-preview');

    let img_path ;
    if(img_preview.children.length !== 0 ){
        img_path = img_preview.children[0].children[0].src;
    }
    let title = ask_title.innerText;
    let content = question_background.value;

    let req = new XMLHttpRequest();
    req.open("post", contextPath + "/article/admin/add", true);
    req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    req.setRequestHeader("request-with",'ajax');
    req.send("title="+title + "&content="+content+"&picpath="+img_path);
    req.onload = function () {
        if (req.getResponseHeader('redirect') !== null){
            window.location.href = contextPath + req.getResponseHeader('redirect');
        }else{
            let data = JSON.parse(req.responseText);
            var html = template('div',data);
            var question_div = document.createElement("div");
            question_div.className='question-v3';

            question_div.innerHTML = html;
            var container = document.getElementById('container');
            var first_child = container.firstElementChild;
            container.insertBefore(question_div,first_child);
            layer.msg('发布成功',
                {
                    offset: '100px',
                    shade: 0,
                    time: 2000,
                    icon: 1
                });
        }



    };

    layer.close(index);
}