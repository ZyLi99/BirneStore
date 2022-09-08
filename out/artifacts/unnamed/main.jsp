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
    }



</script>
<img  src="../img/sky.jpg" style="width:1311px;position: relative;right: 10px;bottom: 10px;z-index: 0"/>
<div class="logo"> Keep&nbspScret&nbsp&nbsp<span><i class="bi bi-arrow-through-heart"></i></span> </div>

<div class="serviceDiv">
    <a class="service" href="shareSecret.jsp">share-my-secret</a>
    <a class="service" href="hottestSecret.jsp">Message Square</a>
    <a class="service" href="">New-Screts</a>
    <a class="service" href="">My-Screts</a>

</div>
<div style="position: absolute;bottom: 535px;left:1130px;backgroud:rgba(R,G, B, A)" class="dropdown">
    <a style="opacity: 0.4;background-color: #668cff" class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-expanded="false">
        Help-Me
    </a>

    <div style="background-color:  #ccd9ff;opacity: 0.5;position: absolute;right: 50px !important;" class="dropdown-menu" aria-labelledby="dropdownMenuLink">
        <a class="dropdown-item" href="#">Contact Admin</a>
        <a class="dropdown-item" href="#">melden</a>
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

</body>
</html>
