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
      height: 700px;
      position: absolute;
      top:120px;
      left:135px;
    }
    #lunbo2{
      width:900px;
      height: 600px;
      position: absolute;
      left:135px;
      display: block;

    }
    .fontTitel{
      position: absolute;
      left:370px;
      bottom:550px;
      font-size: 30px;
      font-weight: bold;
      color:snow;

    }
    .evagerge{
      margin-left: 10px;
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
      position: absolut;
      right:134px;
      background-color:darkgrey;
      top:90px;
    }
    .itemSecret{
      background-color: white;
      width:650px;
      height: 150px;
      border:solid dimgrey;
      border-radius: 0.3;
      margin-top: 10px;
      margin-left: 30px;
    }
    .itemSecret2{

      background-color: white;
      width:650px;
      height: 150px;
      border:solid dimgrey;
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

    .page-normal a{
      border: 1px solid #52527a;
      padding: 5px 7px;
      color: #52527a;
      margin-left: 20px;/*设置标签 a 之间的间隔*/
      text-decoration: none;/*去除页码数字下面的下划线*/
    }
    /*设置鼠标经过时 a 标签的css样式*/
    .page-normal a:hover{
      color:snow;
      background-color: #52527a;
    }

    /*设置整个div的css样式,该样式主要用于设置网页内的省略号 …… 的样式，并且同时设置内容居中显示*/
    .page-normal{
      color: #52527a;
      text-align: center;
    }

    /*设置当前页面的css样式*/
    .page-normal .page-current{
      color: snow;
      background-color: #52527a;
    }

    /*设置左单括号 < 的css样式*/
    .page-normal .page-prev{
      color: #52527a;
    }

    /*进行代码优化，将不同css样式中共有的属性放在一起，有助于提高运行效率*/
    .page-normal a, .page-normal a:hover, .page-normal .page-prev, .page-normal .page-current{
      border: 1px solid #52527a;
      padding: 5px 7px;
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

            $.ajax({
              type: "POST",
              url: "/getPages2",
              // data: scretlist,
              success: function (data) {
                var prevPage=document.getElementById("myPage")
                prevPage.innerHTML=""
                prevPage.innerHTML='<a style="inline-block" id="prevP" onclick="prevPush(this.name,\''+data+'\')" href="#" class="page-prev">&lt;</a>'
                for(var i=1;i<=data;i++){
                     if(i<=3) {
                       prevPage.innerHTML = prevPage.innerHTML + '<a style="display:inline-block" onclick="subPage(this.id,\'' + data + '\')" href="#" id=' + i + '>' + i + '</a>'
                     }
                     else{
                       prevPage.innerHTML = prevPage.innerHTML + '<a style="display: none" onclick="subPage(this.id,\'' + data + '\')" href="#" id=' + i + '>' + i + '</a>'
                     }

                }
                prevPage.innerHTML=prevPage.innerHTML+'<a style="inline-block" id="hinterP" onclick="hinterPush(this.name,\''+data+'\')"  href="#" class="page-prev">&gt;</a>'

                subPage(1,1)

              }


            })

           }




          ,1000000)






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

  function showInfo(){
    var c=document.getElementById("myInfo");
    var dc=document.getElementById("lunbo2");
    dc.style.display="none"
    c.style.display="block"
    var interV
    if( c.style.display="block"){
interV=  setInterval(function(){
              var b=window.confirm("Did you fucking watch enough?");
              if(b){
                alert("very good,u can do something else now")
                c.style.display="none"
                dc.style.display="block"
                clearInterV(interV)

              }
              else{
                alert("It's not a piece of art, you don't have to look at it for so long. Hurry up")
              }
            }

    ,3000)
    }
    else{
    }
  }
  function clearInterV(interV){
    clearInterval(interV)
  }
function subPage(id,data){
    $("#prevP").attr("name",id);
  $("#hinterP").attr("name",id);
    for(var i=1;i<=data;i++){
      var cds=document.getElementById(i);
      cds.style.backgroundColor="#ffffff"
      cds.style.color="#b3b3cc";
    }
    var cds=document.getElementById(id);
    cds.style.backgroundColor="#b3b3cc"
  cds.style.color="#ffffff";
    var user={}
  user.id=id;
  $.ajax( {
    type :"POST",
    url :"/getPageText2",
    data: user,
    success : function(data) {
      var result= eval(data)
      var lunboInnnen=document.getElementById("lunbo2")
      lunboInnnen.innerHTML="";
      for(var i in result){

        var d=JSON.parse(result[i]);
        var name1=d.id;
        var name2=name1+100000;
        var name3=name1+200000;
        var tex=d.text;
        lunboInnnen.innerHTML=lunboInnnen.innerHTML+'<div class="itemSecret" > <textarea class="textInfo" rows="4" cols= "79" >'+tex+'</textarea> <button name='+name1+ ' onclick="getLike(this.name)"  class="butt like" type="button"><i class="bi bi-hand-thumbs-up"></i><span ></span></button> <button " class="butt dislike" type="button"><i class="bi bi-hand-thumbs-down"></i></button> <button onclick="getAnswer(this.name,\''+''+'\' ,\''+''+'\'  )" name='+name3+' class="butt answer" type="button"><i class="bi bi-chat-left-dots"></i></button> <button onclick="getMelden(this.name)" name='+name2+' class="butt melden" type="button"><i class="bi bi-exclamation-circle"></i></button> </div>'

      }
      var dislike=document.getElementsByClassName("dislike");
      for(var i=0;i<dislike.length;i++) {


        dislike[i].onclick = function () {

             this.style.color="#009900"

        }
      }
    }

  })


}
var numFrist=1;

function prevPush(a,sum){
    if(a==1){

    }
    else {
      if(a>sum-2){
        subPage(a-1,sum)


      }
      else{

        for(var i=1;i<=sum;i++){

          var c=document.getElementById(i);

          if(i>=a-1&&i<=a-1+parseInt(2)){
            c.style.display="inline-block"
          }
          else{
            c.style.display="none"
          }



        }
        subPage(a-1,sum);
      }

    }

}
function hinterPush(a,sum){

    if(a==sum){

    }

    else{
      var cd=parseInt(a)+1;
      if(cd<=3){
        subPage(cd,sum)

     }
     else if(cd>=sum-2){
       var do1=document.getElementById(sum)
        var do2=document.getElementById(sum-1)
        var do3=document.getElementById(sum-2)
        do1.style.display="inline-block"
        do2.style.display="inline-block"
        do3.style.display="inline-block"
        for(var i=1;i<sum-2;i++){
          var do3=document.getElementById(i)
          do3.style.display="none"
        }
        subPage(cd,sum)

      }
      else{
         for(var j=parseInt(1);j<=parseInt(sum);j++){

           var doc2=document.getElementById(j);
           if(j<=parseInt(a)+parseInt(3)&&j>a){
             doc2.style.display="inline-block"

           }
           else{
             doc2.style.display="none"

           }

         }
        subPage(cd,sum)
      }
    }
}
</script>
<img  src="../img/sky.jpg" style="width:1311px;position: relative;right: 10px;bottom: 0px;z-index: 0"/>
<div class="logo"> Keep&nbspScret&nbsp&nbsp<span><i class="bi bi-arrow-through-heart"></i></span> </div>

<div class="serviceDiv">
  <a  class="service" href="">share-my-secret</a>
  <a class="service" href="">Message Square</a>
  <a  class="service" href="">New-Screts</a>
  <a  class="service" id="noti"  style="position: relative;left:100px" href="#"><i class="bi bi-chat-heart"></i></a>
  <div id="newMessege" style="display: none"></div>
</div>
<div style="position: absolute;bottom: 515px;left:1050px;width:110px;height:60px;background-color: none;border-radius: 10px;z-index: 999999">
  <a class=" service" id="xiala" href="#" style="background-color: none;font-size:20px;width:110px;height:90px;color: snow;" >
    &nbsp &nbspHome&nbsp &nbsp
    <div  class="xia" style="display: none;background-color: cornflowerblue;width:120px;position: relative;bottom:8px">
      <ul>

        <li class="xia1"><a id="news" style="color: snow;position: relative;right:10px" href="#">News<i class="bi bi-arrow-right-circle-fill"></i></a></li>
        <li class="xia1"><a onclick="showInfo()" style="color: snow" href="#">&nbsp&nbsp&nbspMy-Info</a></li>
      </ul>
    </div>
  </a>

</div>

<div id="lunbo" style="background-color: white;height: 700px;width:1000px;opacity: 0.4;border-radius: 20px">
  <div id="lunbo2"></div>

<div id="myInfo" style="display:none;background-color: dimgrey;width:300px;height:300px;border-radius: 20px;margin: 5px;z-index: 999999">
  <div id="profiBild" style="width:50px;height: 50px;border-radius: 100px;background-color: #00aeef;margin-left:120px;position:relative;top:20px">


  </div>


  <div id="profInfo" style="background-color: black;position:relative;top:50px">
    <div><span class="evagerge">my&nbspid-number:</span><span class="pInfo"></span></div>
    <div><span class="evagerge">my&nbspusername:</span><span class="pInfo"></span></div>
    <div><span class="evagerge">my&nbspname:</span><span class="pInfo"></span></div>
    <div> <span class="evagerge">my&nbsp-Email:</span><span class="pInfo"></span></div>
  </div>

</div>
   <span style="position:absolute;top:650px;display:inline-block;
        text-align: center;color:midnightblue;width: 920px">
  <div id="myPage" class="page-normal" style="display:inline-block;
        color:midnightblue">
    <a href="#" class="page-prev">&lt;</a>
    <!-- 数字1 代表当前页面-->
    <a href="#" class="page-current">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    <a href="#">7</a>
    <a href="#">8</a>
    <a href="#">9</a>
    ……
    <a href="#">19</a>
    <a href="#">20</a>
    <a href="#">&gt;</a>
  </div>
   </span>
</div>

  <div class="contactInfo" >
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
  <div style="background-color: white;width:1100px;height: 200px"><br><span style="position: relative;top:100px;color: dimgrey;margin-left: 490px;">product by Zhuyi Li</span></div>
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
