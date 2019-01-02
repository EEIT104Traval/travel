<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>後臺管理者系統</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/main.css" rel="stylesheet" type="text/css" />
<!--     <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet"> -->
<!--     <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css"> -->
<!--     <link rel="stylesheet" href="css/animate.css"> -->
<!--     <link rel="stylesheet" href="css/owl.carousel.min.css"> -->
<!--     <link rel="stylesheet" href="css/owl.theme.default.min.css"> -->
<!--     <link rel="stylesheet" href="css/magnific-popup.css"> -->
<!--     <link rel="stylesheet" href="css/aos.css"> -->
<!--     <link rel="stylesheet" href="css/ionicons.min.css"> -->
<!--     <link rel="stylesheet" href="css/bootstrap-datepicker.css"> -->
<!--     <link rel="stylesheet" href="css/jquery.timepicker.css"> -->
<!--     <link rel="stylesheet" href="css/flaticon.css"> -->
<!--     <link rel="stylesheet" href="css/icomoon.css"> -->
<!--     <link rel="stylesheet" href="css/style.css"> -->
  </head>
  <body>
     
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
         <div class="container" id="main" role="main">
            <ul class="menu">
                <li><a href="bindex.jsp">會員管理</a>
                    <ul class="submenu">
                        <li><a href="01_01.jsp">會員查詢</a></li>
                        <li><a href="01_02.jsp">名單管理</a></li>
                    </ul>
                </li>
                <li><a href="#s1">報表資訊</a>
                    <ul class="submenu">
                        <li><a href="#">月份報表</a></li>
                        <li><a href="#">歷史紀錄</a></li>
<!--                         <li><a href="#"></a></li> -->
                    </ul>
                </li>
                <li><a href="#">行程管理</a>
                    <ul class="submenu">
                        <li><a href="#">新增行程</a></li>
                        <li><a href="#">下架行程</a></li>
                        <li><a href="#">修改行程</a></li>
                        <li><a href="#">查詢行程</a></li>
<!--                         <li><a href="#">下載載具</a></li> -->
                    </ul>
                </li>
                <li class="active"><a href="#s2">票券管理</a>
                    <ul class="submenu">
                        <li><a href="#">機票資訊</a></li>
                        <li><a href="#">飯店資訊</a></li>
                        <li><a href="#">門票資訊</a></li>
                    </ul>
                </li>
                <li><a href="#">版面管理</a>
                    <ul class="submenu">
                        <li><a href="#">跑馬廣告</a></li>
                        <li><a href="#">問與答改</a></li>
                        <li><a href="#">關於我改</a></li>
                        <li><a href="#">圖片修改</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">管理者</a>
                    <ul class="submenu">
                        <li><a href="#">管理者帳號</a></li>
                        <li><a href="#">管理者權限</a></li>
                        <li><a href="#">登出</a></li>
                    </ul>
                </li>
                <li>
                    <div class="switch_demo">
                        <a href="../voyage/index.jsp"></a>
                        <input type="checkbox" name="switch_demo" class="switch_demo-checkbox" id="switch_demo" checked>
                        <label class="switch_demo-label" for="switch_demo">
                            <span class="switch_demo-inner"></span>
                            <span class="switch_demo-switch"></span>
                        </label>
                    </div>
            	</li>
            </ul>
        </div>
      </div>
    </nav>
  </body>
</html>