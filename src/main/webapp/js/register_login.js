/**
 * Created by ttc on 2018/7/18.
 */

window.onload = function () {
    //验证图片

    var v_img = document.getElementById("vertifycode-img");
    v_img.onclick = function () {
        var num = Math.random();
        this.src = contextPath + '/loginAndregister/generatecode?' + num;
    };

    //验证码输入框
    var v_input = document.getElementById("captcha1");
    v_input.onblur = function () {
        $.ajax({
            url: contextPath + '/loginAndregister/checkcode',
            type: 'post',
            data: {code:v_input.value},
            success:function (data) {
                $('#check-response').html(data);
                if (data === 'successful'){
                    flag = true;
                }
            }
        });
    };
    //表单
    var form = document.getElementById("rform");


    //注册按钮
    var register_btn = document.getElementById("submitbtn");
    register_btn.onclick = function () {
        var u_input = document.getElementById("username");
        var p_input = document.getElementById("pwd");
        if (u_input.value === '') {
            u_input.nextElementSibling.innerText = '用户名不能为空';
            flag = false;
        }
        if (p_input.value === '') {
            p_input.nextElementSibling.innerText = '密码不能为空';
            flag = false;
        }

        if (!flag) {
            return false;
        } else {
            form.submit();
        }

    };

    //用户名输入框
    var u_input = document.getElementById("username");
    u_input.onblur = function () {
        if (this.value !== '') {
            this.nextElementSibling.innerText = '';
        }
    };


    //密码输入框
    var p_input = document.getElementById("pwd");
    p_input.onblur = function () {
        if (this.value !== '') {
            this.nextElementSibling.innerText = '';
        }
    };

    //登录标签
    var l_div = document.getElementById("login-label");
    l_div.onclick = function () {
        register_btn.value = '登录';
        form.action = contextPath + '/loginAndregister/login';
        this.className = 'y-left item active';
        this.nextElementSibling.className = 'y-left item';

    };

    //注册标签
    var r_div = document.getElementById("register-label");
    r_div.onclick = function () {
        register_btn.value = '注册';
        form.action = contextPath + '/register.do';
        this.className = 'y-left item active';
        this.previousElementSibling.className = 'y-left item';
    };

    //判断是否是登录
    if (model === 'login') {
        register_btn.value = '登录';
        form.action = contextPath + '/loginAndregister/login';
        l_div.className = 'y-left item active';
        l_div.nextElementSibling.className = 'y-left item';
    }
};