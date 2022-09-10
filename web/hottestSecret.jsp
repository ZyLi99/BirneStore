<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 18303
  Date: 06.09.2022
  Time: 13:43
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
    <title>Keep Scret</title>

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="../css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../css/custom.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

    <!-- Modernizer for Portfolio -->
    <script src="https://cdn.bootcss.com/popper.js/1.15.0/umd/popper.js"></script>
    <script src="../js/modernizer.js"></script>
    <script src="../js/jquery-1.11.0.min.js"></script>
    <script src="../js/all.js"></script>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <style>
        .logo{
            font-size: 45px;
            font-weight: bold;
            font-family: Brush Script MT, Brush Script Std, cursive;
            color: snow;
            position: absolute;
            bottom:520px;
            left:20px;
        }
        .serviceDiv{
            position: absolute;
            bottom:540px;
            left:600px;
        }
        .service{
            margin: 11px;
            text-decoration: none;
            font-weight: blod;
            font-size: 20px;
            font-family: Trattatello, fantasy;
            color:snow
        }
        #lunbo{
            width:700px;
            height: 500px;
            position: absolute;
            bottom: 0px;
            left:135px;
        }
        .fontTitel{
            position: absolute;
            left:370px;
            bottom:550px;
            font-size: 30px;
            font-weight: bold;
            color:snow;

        }
        .font{
            position: absolute;
            color:snow;
            left:170px;
            bottom:450px;
            font-family: Brush Script MT, Brush Script Std, cursive;
        }
        .contactInfo{
            background-color: #0c5460;
            width:1300px;
            height: 300px;
            position: relative;
            right:134px;
            background-color:darkgrey;
            top:100px;
        }
        .itemSecret{
            position:absolute;
            bottom: 530px;
            left:200px;
            background-color: white;
            width:650px;
            height: 150px;
            border:solid dimgrey;
            opacity: 0.4;
            border-radius: 0.3;
        }
        .itemSecret2{
            position:absolute;
            bottom: 382px;
            left:200px;
            background-color: white;
            width:650px;
            height: 150px;
            border:solid dimgrey;
            opacity: 0.4;
            border-radius: 0.3;
        }
        .itemSecret3{
            position:absolute;
            bottom: 235px;
            left:200px;
            background-color: white;
            width:650px;
            height: 150px;
            border:solid dimgrey;
            opacity: 0.4;
            border-radius: 0.3;
        }
        .itemSecret4{
            position:absolute;
            bottom: 86px;
            left:200px;
            background-color: white;
            width:650px;
            height: 150px;
            border:solid dimgrey;
            opacity: 0.4;
            border-radius: 0.3;
        }
        .butt{
            border-radius: 0.3;
            margin-left: 10px;
            width:70px;
            height:35px;
            position: relative;
            right:0px;
            border:solid white;
        }
        .answer{
            margin-left: 273px;
        }
        .textInfo{
            border: solid white;
            border-radius: 0.3;
            margin-left: 25px;
        }
    </style>

</head>
<body style="background-color: white">
<script>
    window.onload=function(){

        var c=document.getElementsByClassName("service");
        for(var i=0;i<c.length;i++){
            var color;
            c[i].onmouseover=function(){
                color=this.style.color;
                this.style.color="#cce5ff";

            }

            c[i].onmouseout=function(){
                this.style.color=color;
            }
        }

        // var c2=document.getElementsByClassName("like");
        // for(var i=0;i<c.length;i++){
        //     c2[i].onclick=function () {
        //         if(this.style.color!="red"){
        //             this.style.color="red"}
        //         else{
        //             this.style.color="black"
        //         }
        //     }
        //
        // }

        var c3=document.getElementsByClassName("dislike");
        for(var i=0;i<c.length;i++){
            c3[i].onclick=function () {
                if(this.style.color!="green"){
                    this.style.color="green"}
                else{
                    this.style.color="black"
                }
            }

        }


        // var c4=document.getElementsByClassName("answer");
        // for(var i=0;i<c.length;i++){
        //     var color
        //     c4[i].onmouseover=function () {
        //         color=this.style.color;
        //         this.style.color="#6699ff"
        //
        //     }
        //     c4[i].onmouseout=function(){
        //         this.style.color=color;
        //     }
        //
        // }


        // var c5=document.getElementsByClassName("melden");
        // for(var i=0;i<c.length;i++){
        //     var color
        //     c5[i].onmouseover=function () {
        //         color=this.style.color;
        //         this.style.color="#6699ff"
        //
        //     }
        //     c5[i].onmouseout=function(){
        //         this.style.color=color;
        //     }
        //
        // }
        $.ajax( {
            type :"POST",
            url :"/getText",
            // data: scretlist,
            success : function(data) {
                var result= eval(data)

                var allArea=document.getElementsByClassName("textInfo")
                var buttonName=document.getElementsByClassName("like");
                var buttonName2=document.getElementsByClassName("melden");
                var buttonName3=document.getElementsByClassName("answer");
                if(result.payload!="数据异常"){
                    for(var i in result){
                        if(i<buttonName.length){
                            var d=JSON.parse(result[i]);
                           var name1=d.id;
                           buttonName[i].name=name1;
                            buttonName2[i].name=name1+100000;
                            buttonName3[i].name=name1+200000;


                        }

                             if(i<20){
                                 var d=JSON.parse(result[i]);
                            allArea[i].value=d.text;
                             }

                    }


                }

                else {
                    alert("unknow error")

                }}

        })
 $(".melden").attr("onclick","getMelden(this.name)");
        $(".answer").attr("onclick","getAnswer(this.name)");



    }
    function getLike(name){
       var colorgetter=document.getElementsByName(name);
       for(var j=0;j<colorgetter.length;j++){
           if(colorgetter[j].style.color=="red")alert("u are already liked");
           else{
               var c={}
               c.id=name;
               $.ajax( {
                   type :"POST",
                   url :"/likePost",
                   data: c,
                   success : function(result) {

                       result= JSON.parse(result);

                       if(result.payload=="数据异常"){
                           alert("unknow error")
                       }

                       else {

                           var c=document.getElementsByName(name);
                           for(var j=0;j<c.length;j++){
                               if(c[j].style.color!="red"){
                                   c[j].style.color="red";
                                   var d=c[j].innerHTML;
                                   c[j].innerHTML=d+result.payload;
                               }

                           }

                       }}

               })



           }
       }

    }

    function submitInfo(){
        var c=document.getElementById("info").value;

    }

    function getMelden(name){
        var colorgetter=document.getElementsByName(name);
        alert(name)

            alert(colorgetter[0].innerHTML)

            if(colorgetter[0].style.color=="red"&&colorgetter[0].innerHTML=='<i class="bi bi-exclamation-circle"></i>')alert("u are already meldet");
            else{
                alert("are u motherfucker sure?")
                var c={}
                c.id=name;
                $.ajax( {
                    type :"POST",
                    url :"/PostMelden",
                    data: c,
                    success : function(result) {
                        result= JSON.parse(result);

                        if(result.payload=="数据异常"){
                            alert("unknow error")
                        }

                        else {

                            var c=document.getElementsByName(name);

                                if(c[0].style.color!="red"&&c[0].innerHTML=='<i class="bi bi-exclamation-circle"></i>'){
                                    c[0].style.color="red";



                            }

                        }}

                })



            }

    }

function getAnswer(a){
        var userId=a-200000;
        var user={}
    user.id=userId
    var c=document.getElementById("commentArea")
    c.name=userId;
    c.style.display="block"
    $.ajax( {
        type :"POST",
        url :"/PostComment",
        data: user,
        success : function(result) {
            result= JSON.parse(result);

            if(result.payload=="用户不存在"){
                alert("unknow error")
            }

            else {
                 var commName=result.author_id
                var myName=result.user_id
                var text=result.text
                if(text!=undefined){
                    var commA=document.getElementById("vorherigeComment")
                    commA.innerHTML=""
                    commA.innerHTML=text;
                    var d1=document.getElementById("myUserId")
                    d1.innerHTML=myName

                    var d2=document.getElementById("authorId")
                    d2.innerHTML=commName

                }
                else{
                    var commB=document.getElementById("vorherigeComment")
                    commB.innerHTML=""
                    var d111=document.getElementById("myUserId")
                    d111.innerHTML=myName
                    var d21=document.getElementById("authorId")
                    d21.innerHTML=commName
                }






            }}

    })
}

function updateMyComm(){
        var c=document.getElementById("vorherigeComment").innerHTML
        var c1=document.getElementById("myUserId").innerHTML
        var c2=document.getElementById("authorId").innerHTML
        var c3=document.getElementById("whatISay").value
    var commA=document.getElementById("vorherigeComment")
    commA.innerHTML=c+'&nbsp&nbsp<a href="#" onclick="answerComm(\''+c1+'\')">'+c1+'</a> say '+'to :<a href="#" onclick="answerComm2(\''+c2+'\')">'+c2+'</a>'+':'+c3+'<br>'
       var comit=commA.innerHTML

    var user={}
    user.text_id=document.getElementById("commentArea").name;
    user.text=comit

    $.ajax( {
        type :"POST",
        url :"/insertComment",
        data: user,
        success : function(result) {
            result= JSON.parse(result);

            if(result.payload=="error"){
                alert("unknow error")
            }

            else {

                $("#whatISay").val("")

            }}

    })


}
function answerComm(authorName){
       alert(authorName)
    var c2=document.getElementById("authorId")
    c2.innerHTML=authorName;
}
    function answerComm2(authorName){
        alert(authorName+1)
        var c2=document.getElementById("authorId")
        c2.innerHTML=authorName;
    }

function CloseMe() {
    var des1 = document.getElementById("commentArea")
    des1.style.display="none"
}
</script>
<img  src="../img/sky.jpg" style="width:1311px;position: relative;right: 10px;bottom: 10px;z-index: 0"/>
<div class="logo"> Keep&nbspScret&nbsp&nbsp<span><i class="bi bi-arrow-through-heart"></i></span> </div>

<div class="serviceDiv">
    <a  class="service" href="">share-my-secret</a>
    <a class="service" href="">Message Square</a>
    <a class="service" href="">New-Screts</a>
    <a class="service" href="">My-Screts</a>

</div>
<div style="position: absolute;bottom: 535px;left:1130px;backgroud:rgba(R,G, B, A)" class="dropdown">
    <a style="opacity: 0.4;background-color: #668cff" class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-expanded="false">
        Help
    </a>

    <div style="background-color:  #ccd9ff;opacity: 0.5;position: absolute;right: 50px !important;" class="dropdown-menu" aria-labelledby="dropdownMenuLink">
        <a class="dropdown-item" href="#">Contact Admin</a>
    </div>
</div>
<div id="lunbo">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol style="position: absolute;left:350px" class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div style="width: 1005px;border-radius: 30px" class="carousel-inner">
            <div class="carousel-item active">
                <a href="#"><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>

                <div class="itemSecret">
                    <textarea class="textInfo" rows="4" cols= "79" ></textarea>
                    <button id="ds" onclick="getLike(this.name)"  class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret2">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"><span ></span></i></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret3">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret4">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
            </div>

            <div class="carousel-item">
                <a href=""><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>

                <div class="itemSecret">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret2">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret3">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret4">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
            </div>

            <div class="carousel-item">
                <a href=""><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>

                <div class="itemSecret">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret2">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret3">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret4">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
            </div>

            <div class="carousel-item">
                <a href=""><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>

                <div class="itemSecret">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret2">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret3">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret4">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
            </div>

            <div class="carousel-item">
                <a href=""><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>

                <div class="itemSecret">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret2">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret3">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
                <div class="itemSecret4">
                    <textarea class="textInfo" rows="4" cols="79"></textarea>
                    <button onclick="getLike(this.name)" class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button>
                    <button name="" class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button>
                    <button class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button>
                    <button class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button>
                </div>
            </div>




        </div>


        <button  style="opacity: 0.2;border-bottom-left-radius: 30px;border-top-left-radius: 30px;border-color: none" class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button style="opacity: 0.2;position: absolute;left:900px;border-bottom-right-radius: 30px;border-top-right-radius: 30px" class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>
    <div class="contactInfo">
        <br>
        <br>
        <span style="font-size:36px;font-weight: bold;padding-left: 520px;color:snow;">Contact Us</span>
        <div style="font-size:36px;padding-left: 470px;color: dimgrey" >-------------------</div>
        <br>
        <div style="font-size:20px;padding-left: 320px;color: snow">if u motherfucker have any problem,pls contact us,but better not</div>
        <br>
        <div style="font-size:25px;padding-left: 560px;color: #6610f2"><span><a href=""><i style="color:deeppink" class="bi bi-instagram"></i></a></span>
            <span><a href=""><i class="bi bi-twitter"></i></a></span>
            <span><a href=""><i style="color: forestgreen" class="bi bi-whatsapp"></i></a></span>
        </div>

    </div>
    <div style="background-color: white;width:1100px;height: 200px"><br><span style="position: relative;top:140px;color: dimgrey;margin-left: 400px;">product by Zhuyi Li</span></div>
</div>

<div id="commentArea" style="border:solid cornflowerblue;position: absolute;bottom:75px;left:420px; background-color: white;display: none;width:500px;height:400px;border-radius: 20px">
    <div style="height: 230px;overflow:auto;background:#EEEEEE;border-radius: 20px;padding-top: 20px;border-bottom-right-radius: 0px;border-bottom-left-radius: 0px;"  id="vorherigeComment">

    </div>

    <br>
    <div style="margin-bottom: 10px">&nbsp  <span id="myUserId" style="color:cornflowerblue;font-weight: bold" > </span>&nbsp answer to:&nbsp<span id="authorId" style="color:darkred;font-weight: blod"></span></div>

    <textarea style="margin-bottom: 10px;margin-left: 2px;padding-left: 10px;resize: block;width:300px;border: solid cornflowerblue;border-radius: 20px" id="whatISay" rows="3" rols="200" ></textarea>

    <div>  <button style="border-radius: 0.3;background-color: snow;margin-left:20px;position: absolute;bottom: 30px;left:300px;border-radius: 20px;background-color: cornflowerblue;border: solid cornflowerblue;color:white;font-weight: blod" onclick="updateMyComm()">Submit</button>
        <button style="border-radius: 0.3;background-color: snow;margin-left:10px;position: absolute;bottom: 30px;left:400px;border-radius: 20px;background-color: cornflowerblue;border: solid cornflowerblue;color: white;font-weight: blod" onclick="CloseMe()">Close</button>
    </div>
</div>

</body>
</html>
