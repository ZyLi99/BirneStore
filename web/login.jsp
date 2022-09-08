<%--
  Created by IntelliJ IDEA.
  User: 小张
  Date: 2022/8/31
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <title>炫酷科技粒子动画登录页面html</title>


    <script type="text/javascript" src="http://www.bootstrapmb.com/content/js/jquery.min.js"></script>
    <!--必要样式-->
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/loaders.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class='login'>
    <div class='login_title'>
        <span style="padding-right: 30px">Login</span>|<a href="rigister.jsp" style="margin-left: 30px;color: #3EBFB4;text-decoration: none">Rigister</a>
    </div>
    <div class='login_fields'>
        <div class='login_fields__user'>
            <div class='icon'>
                <img alt="" src='img/user_icon_copy.png' />
            </div>
            <input name="login" id="username" style="size: auto;padding-right: 0px " placeholder='username' maxlength="16" type='text' autocomplete="off" />
            <div class='validation'>
                <img alt="" src='img/tick.png' />
            </div>
        </div>
        <div class='login_fields__password'>
            <div class='icon'>
                <img alt="" src='img/lock_icon_copy.png' />
            </div>
            <input name="pwd" id="password" style="size: auto " placeholder='password' maxlength="16" type='text' autocomplete="off" />
            <div class='validation'>
                <img alt="" src='img/tick.png' />
            </div>
        </div>
        <div class='login_fields__password'>
            <div class='icon'>
                <img alt="" src='img/key.png' />
            </div>
            <input name="code" style="size: auto;padding-right: 0px; " placeholder='validation' maxlength="4" type='text' name="ValidateNum" autocomplete="off" />

            <div  class='validation' style="opacity: 1; right: -5px;top: -3px;">
                <canvas style="position:relative;left:70px"class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
            </div>
            <span id="error" style="color: orangered;display: none;margin-left: 20px;font-size: 13px">Please enter the correct verification code</span>
        </div>
        <div class='login_fields__submit'>
            <input  type='button' value='Login' />
        </div>
    </div>
    <div class='success'>
    </div>
    <div class='disclaimer'>
        <a href="" onclick="vitify()" style="margin-left: 50px;color: cadetblue;text-decoration: none">forget your password?</a>
    </div>
</div>
<div class='authent'>
    <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <p>checking...</p>
</div>
<div class="OverWindows"></div>


<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src='js/stopExecutionOnTimeout.js'></script>

<script type="text/javascript" src="js/Particleground.js"></script>
<script type="text/javascript" src="js/Treatment.js"></script>
<script type="text/javascript" src="js/jquery.mockjax.js"></script>
<script type="text/javascript">
    var canGetCookie = 1;//是否支持存储Cookie 0 不支持 1 支持
    var ajaxmockjax = 1;//是否启用虚拟Ajax的请求响 0 不启用  1 启用
    //默认账号密码

    var truelogin = $("username").val();
    var truepwd = $("password").val();

    var CodeVal = 0;
    Code();
    function Code() {
        if (canGetCookie == 1) {
            createCode("AdminCode");
            var AdminCode = getCookieValue("AdminCode");
            showCheck(AdminCode);
        } else {
            showCheck(createCode(""));
        }
    }
    function showCheck(a) {
        CodeVal = a;
        var c = document.getElementById("myCanvas");
        var ctx = c.getContext("2d");
        ctx.clearRect(0, 0, 1000, 1000);
        ctx.font = "80px 'Hiragino Sans GB'";
        ctx.fillStyle = "#E8DFE8";
        ctx.fillText(a, 0, 100);
    }
    $(document).keypress(function (e) {
        // 回车键事件
        if (e.which == 13) {
            $('input[type="button"]').click();
        }
    });
    //粒子背景特效
    $('body').particleground({
        dotColor: '#E8DFE8',
        lineColor: '#133b88'
    });
    $('input[name="pwd"]').focus(function () {
        $(this).attr('type', 'password');
    });
    $('input[type="text"]').focus(function () {
        $(this).prev().animate({ 'opacity': '1' }, 200);
    });
    $('input[type="text"],input[type="password"]').blur(function () {
        $(this).prev().animate({ 'opacity': '.5' }, 200);
    });
    $('input[name="login"],input[name="pwd"]').keyup(function () {
        var Len = $(this).val().length;
        if (!$(this).val() == '' && Len >= 5) {
            $(this).next().animate({
                'opacity': '1',
                'right': '30'
            }, 200);
        } else {
            $(this).next().animate({
                'opacity': '0',
                'right': '20'
            }, 200);
        }
    });
    var open = 0;
    //非空验证
    $('input[type="button"]').click(function () {
        var login = $('input[name="login"]').val();
        var pwd = $('input[name="pwd"]').val();
        var code = $('input[name="code"]').val();
        if (login == '') {
            ErroAlert('Please enter your account number');
        } else if (pwd == '') {
            ErroAlert('Please enter your account pwd');
        } else if (code == '' || code.length != 4) {
            ErroAlert('Please enter your account verification code ');
        } else {
            //认证中..
            fullscreen();
            $('.login').addClass('test'); //倾斜特效
            setTimeout(function () {
                $('.login').addClass('testtwo'); //平移特效
            }, 300);
            setTimeout(function () {
                $('.authent').show().animate({ right: -320 }, {
                    easing: 'easeOutQuint',
                    duration: 600,
                    queue: false
                });
                $('.authent').animate({ opacity: 1 }, {
                    duration: 200,
                    queue: false
                }).addClass('visible');
            }, 500);

            //登录
            var JsonData = { login: login, pwd: pwd, code: code };
            //此处做为ajax内部判断
            var url = "";
            var a=document.getElementById("username").value;
            var b=document.getElementById("password").value;
            if ( JsonData.code.toUpperCase() == CodeVal.toUpperCase()) {
                url = "Ajax/Login";
                x();


            } else {
                url = "Ajax/LoginFalse";
                $('input[name="code"]').val("")
                document.getElementById("error").style.display="block";
            }


            AjaxPost(url, JsonData,
                function () {
                    //ajax加载中
                },
                function (data) {
                    //ajax返回
                    //认证完成
                    setTimeout(function () {
                        $('.authent').show().animate({ right: 90 }, {
                            easing: 'easeOutQuint',
                            duration: 600,
                            queue: false
                        });
                        $('.authent').animate({ opacity: 0 }, {
                            duration: 200,
                            queue: false
                        }).addClass('visible');
                        $('.login').removeClass('testtwo'); //平移特效
                    }, 2000);
                    setTimeout(function () {
                        $('.authent').hide();
                        $('.login').removeClass('test');
                        if (data.Status == 'ok') {
                            //登录成功
                            $('.login div').fadeOut(100);
                            $('.success').fadeIn(1000);
                            $('.success').html(data.Text);
                            //跳转操作

                        } else {
                            AjaxErro(data);
                        }
                    }, 2400);
                })
        }
    })
    var fullscreen = function () {
        elem = document.body;
        if (elem.webkitRequestFullScreen) {
            elem.webkitRequestFullScreen();
        } else if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        } else if (elem.requestFullScreen) {
            elem.requestFullscreen();
        } else {
            //浏览器不支持全屏API或已被禁用
        }
    }
    if (ajaxmockjax == 1) {
        $.mockjax({
            url: 'Ajax/Login',
            status: 200,
            responseTime: 50,
           responseText: {  }
        });
        $.mockjax({
            url: 'Ajax/LoginFalse',
            status: 200,
            responseTime: 50,
            responseText: { "Status": "Erro", "Erro": "Verification code error" }


        });
    }

    function x() {
        var user = {};
        user.userName = $("#username").val();
        user.pwd = $("#password").val();
        var d=document.getElementById("username").value;
        $.ajax( {
            type :"POST",
            url :"/login",
            data: user,
            success : function(result) {

                result= JSON.parse(result);
                if(result.payload=="参数为空"){

                    $("#usernameArea").innerHTML("请输入账号密码")
                }
                else if(result.payload=="账号为空"){
                    $("#usernameArea").val("账号为空")
                }
                else if(result.payload=="密码为空"){
                    $("#passwordArea").val("密码为空")
                }
                else if(result.payload=="账号不存在"){
                    alert("ur username exist not in datenbank")
                    $("#username").val("")
                    $("#password").val("")
                }
                else if(result.payload=="密码错误"){
                   alert("PWDError:pls check ur password again")
                    $("#password").val("")
                }
                else {

                    window.location.href = "main.jsp";



            }}

        });
    }
</script>
<script>
    function vitify(){
        alert("The email verification code requires an additional fee, please contact the administrator to change your password")

    }
</script>

</body>
</html>