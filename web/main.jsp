<%--
  Created by IntelliJ IDEA.
  User: 小张
  Date: 2022/8/20
  Time: 18:32
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
    </style>

</head>
<body style="background-color: white">
<script>
    setInterval(
        window.onload=function() {

            var c = document.getElementsByClassName("service");
            for (var i = 0; i < c.length; i++) {
                var color;
                c[i].onmouseover = function () {
                    color = this.style.color;
                    this.style.color = "#cce5ff";

                }

                c[i].onmouseout = function () {
                    this.style.color = color;
                }
            }
            var c4 = document.getElementById("noti");
            var c5 = document.getElementById("msg");

            c4.onmouseover = function () {
                c5.style.display = "block"
            }

            c5.onmouseover = function () {
                c5.style.display = "block"
            }

            c5.onmouseout = function () {
                c5.style.display = "none"
            }
            c4.onmouseout = function () {
                c5.style.display = "none"
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

            var cia = document.getElementById("xiala")
            cia.onmouseover = function () {
                var dia = document.getElementsByClassName("xia")
                dia[0].style.display = "block"
            }
            var dia = document.getElementsByClassName("xia")


            dia[0].onmouseover = function () {


                dia[0].style.display = "block"
            }
            dia[0].onmouseout = function () {


                dia[0].style.display = "none"
            }

            cia.onmouseout = function () {
                var dia = document.getElementsByClassName("xia")
                dia[0].style.display = "none"
            }


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


            // $.ajax( {
            //     type :"POST",
            //     url :"/getText",
            //     // data: scretlist,
            //     success : function(data) {
            //         var result= eval(data)
            //          alert(123)
            //         var allArea=document.getElementsByClassName("textInfo")
            //         var buttonName=document.getElementsByClassName("like");
            //         var buttonName2=document.getElementsByClassName("melden");
            //         var buttonName3=document.getElementsByClassName("answer");
            //         if(result.payload!="数据异常"){
            //             for(var i in result){
            //                 if(i<buttonName.length){
            //                     var d=JSON.parse(result[i]);
            //                     var name1=d.id;
            //                     buttonName[i].name=name1;
            //                     buttonName2[i].name=name1+100000;
            //                     buttonName3[i].name=name1+200000;
            //
            //
            //                 }
            //
            //                 if(i<20){
            //                     var d=JSON.parse(result[i]);
            //                     allArea[i].value=d.text;
            //                 }
            //
            //             }
            $.ajax({
                type: "POST",
                url: "/getMees",
                // data: scretlist,
                success: function (data) {
                    if (data.payload != "error") {

                        var result = eval(data)
                        var msg = document.getElementById("msg")
                        msg.innerHTML = ""

                        for (var i in result) {
                            var r = JSON.parse(result[i]);
                            var commName = r.author_id
                            var myName = r.user_id
                            var st = r.short_text;
                            var iD = r.text_id + 200000;
                            var sid = r.id

                            msg.innerHTML = msg.innerHTML + commName + ' answer you:' + '<br>' + '<a style="padding-left: 3px" href="#" onclick="getAnswer(\'' + iD + '\',\'' + commName + '\',\'' + sid + '\')">' + st + '</a>' + '<br>'


                        }
                        if (result != "" && data != "") {
                            blingbling()
                        }
                    }


                }


            })


        },1000000)

            //         }
            //
            //         else {
            //             alert("unknow error")
            //
            //         }}
            //
            // })

            //

            //
            //
            //
            // },10000000)

    function getLike(name){
        var colorgetter=document.getElementsByName(name);
        for(var j=0;j<colorgetter.length;j++){
            if(colorgetter[j].style.color=="red")
                alert("u are already liked");
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


        if(colorgetter[0].style.color=="red"&&colorgetter[0].innerHTML=='<i class="bi bi-exclamation-circle"></i>')alert("u are already meldet");
        else{
            alert("are u sure?")
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

    function getAnswer(a,b,cis){

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
                        if(b==''){
                            var d2=document.getElementById("authorId")
                            d2.innerHTML=commName}
                        else{
                            var d2=document.getElementById("authorId")
                            d2.innerHTML=b
                        }

                    }
                    else{
                        var commB=document.getElementById("vorherigeComment")
                        commB.innerHTML=""
                        var d111=document.getElementById("myUserId")
                        d111.innerHTML=myName
                        var d21=document.getElementById("authorId")
                        if(b==''){
                            d21.innerHTML=commName}
                        else{
                            d21.innerHTML=b
                        }
                    }






                }}

        })
        if(b!=''&&cis!=''){
            deleteItem(cis)
        }
    }
    function deleteItem(c){

        var user={}
        user.id=c
        $.ajax( {
            type :"POST",
            url :"/deleteIt",
            data: user,
            success : function(result) {
                result= JSON.parse(result);

                if(result.payload=="用户不存在"){
                    alert("unknow error")
                }
                else{

                }


            }})


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
        var co=document.getElementById("commentArea").name
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



                    getMessege(c1,c2,c3,co)

                }}

        })


    }
    function answerComm(authorName){

        var c2=document.getElementById("authorId")
        c2.innerHTML=authorName;
    }
    function answerComm2(authorName){

        var c2=document.getElementById("authorId")
        c2.innerHTML=authorName;
    }

    function CloseMe() {
        var des1 = document.getElementById("commentArea")
        des1.style.display="none"
    }
    function getMessege(autoname,myname,text,allText){
        var user={}

        user.author_id=autoname;
        user.user_id= myname;
        user.text_id=allText;
        user.short_text=text;
        $.ajax( {
            type :"POST",
            url :"/getMessege",
            data: user,
            success : function(result) {
                result= JSON.parse(result);

                if(result.payload=="error"){
                    alert("unknow error")
                }

                else {

                    // $("#whatISay").val("")
                    //
                    // var co=document.getElementById("commentArea").name



                }}

        })


    }
    function blingbling(){

        var c=document.getElementById("noti")
        setTimeout( function(){c.style.color="#a64dff"
            setTimeout( function(){c.style.color="#ffa31a"
                setTimeout( function(){c.style.color="#ffff4d"
                    setTimeout( function(){c.style.color="#00b300"
                        setTimeout( function(){c.style.color="#99ffd6"
                            setTimeout( function(){c.style.color="#80ccff"
                                setTimeout( function(){c.style.color="#ff1a1a"},700)},700)},700)},700)},700)},700)},700)

        var st=document.getElementById("news")
        st.style.color="red"
    }
    function shutdown(){
        var c=document.getElementById("noti")
        c.style.color="snow"
        var m=document.getElementById("newMessege")
        m.style.display="block"
        var st=document.getElementById("news")
        st.style.color="snow"
    }

</script>
<img  src="../img/sky.jpg" style="width:1311px;position: relative;right: 10px;bottom: 10px;z-index: 0"/>
<div class="logo"> Keep&nbspScret&nbsp&nbsp<span><i class="bi bi-arrow-through-heart"></i></span> </div>

<div class="serviceDiv">
    <a class="service" href="shareSecret.jsp">share-my-secret</a>
    <a class="service" href="hottestSecret.jsp">Message Square</a>
    <a class="service" href="newSecret.jsp">New-Screts</a>
    <a  class="service" id="noti"  style="position: relative;left:100px" href="#"><i class="bi bi-chat-heart"></i></a>
    <div id="newMessege" style="display: none"></div>
</div>
<div style="position: absolute;bottom: 515px;left:1050px;width:110px;height:60px;background-color: none;border-radius: 10px;z-index: 999999">
    <a class=" service" id="xiala" href="Home.jsp" style="background-color: none;font-size:20px;width:110px;height:90px;color: snow;" >
        &nbsp &nbspHome&nbsp &nbsp
        <div  class="xia" style="display: none;background-color: cornflowerblue;width:120px;position: relative;bottom:8px">
            <ul>

                <li class="xia1"><a id="news" style="color: snow;position: relative;right:10px" href="#">News<i class="bi bi-arrow-right-circle-fill"></i></a></li>
                <li class="xia1"><a style="color: snow" href="#">&nbsp&nbsp&nbspHistory</a></li>
            </ul>
        </div>
    </a>

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
                <a href="shareSecret.jsp"><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>
                <div class="fontTitel">tell your secret now</div>
                <div class="font">Share the joys, sorrows and sorrows that no one knows...Life is bound to be impermanent, and the joys, sorrows and sorrows are always <br> beside the long version. If a person wants to be happy, he must learn to let go</div>
            </div>
            <div class="carousel-item">
                <a href=""> <img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>
                <div class="fontTitel">see other people's secrets</div>
                <div class="font">See what other people's inner world is like now...Life is bound to be impermanent, and the joys, sorrows and sorrows are always beside<br> the long version. If a person wants to be happy, he must learn to let go</div>
            </div>

            <div class="carousel-item">
                <a href=""><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>
                <div class="fontTitel">hottest secret</div>
                <div class="font">The next person whose inner emotions resonate with the public may be you...Life is bound to be impermanent, and the joys, sorrows and<br> sorrows are always beside the long version. If a person wants to be happy, he must learn to let go</div>
            </div>
            <div class="carousel-item">
                <a href=""><img src="../img/sky.jpg" class="d-block w-100" alt="..."></a>
                <div class="fontTitel">view my secret</div>
                <div class="font">Take a look at what's on your mind and record your growth...Life is bound to be impermanent, and the joys, sorrows and sorrows are <br> always beside the long version. If a person wants to be happy, he must learn to let go</div>
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
<div id="msg" style="display:none;position:absolute;bottom:487px;left:1120px;width:130px;height: 60px;overflow: auto;background-color: cornflowerblue">
    <a href="#" onclick="shutdown()"> sds</a>
</div>

</body>
</html>
