<%--
  Created by IntelliJ IDEA.
  User: 小张
  Date: 2022/8/20
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="/static/jquery-1.10.1.min.js"></script>

<script>
    function x() {
        var user = {};
        user.name = $("#username").val();
        user.pwd = $("#password").val();
        $.ajax( {
            type :"POST",
            url :"/login",
            data: user,
            success : function(result) {

               result= JSON.parse(result);
                alert(result.payload)
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
                    $("#usernameArea").val("账号不存在")
                }
                else if(result.payload=="密码错误"){
                    $("#passwordArea").val("密码错误")
                }
                else{

                }

            }

        });
    }
</script>
<body>
        <h1 onclick="x()">点击我！就算登录成功 </h1>
        <div id="mainDiv">
            <div><input id="username" type="text" placeholder="username"/><span id="usernameArea"></span></div>
           <div><input id="password" type="text" placeholder="password"/><span id="passwordArea"></span></div>
            <input type="button" value="submit"/>
        </div>
</body>
</html>
