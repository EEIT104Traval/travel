<!--
                           _oo0oo_
                          o8888888o
                          88" . "88
                          (| -_- |)
                          0\  =  /0
                        ___/`---'\___
                      .' \\|     |// '.
                     / \\|||  :  |||// \
                    / _||||| -:- |||||- \
                   |   | \\\  -  /// |   |
                   | \_|  ''\---/''  |_/ |
                   \  .-\__  '-'  ___/-. /
                 ___'. .'  /--.--\  `. .'___
              ."" '<  `.___\_<|>_/___.' >' "".
             | | :  `- \`.;`\ _ /`;.`/ - ` : | |
             \  \ `_.   \_ __\ /__ _/   .-` /  /
         =====`-.____`.___ \_____/___.-`___.-'=====
                           `=---='
  ~~~~~~~~~~~~~~~~~~~~~ 佛祖保佑        永無bug~~~~~~~~~~~~~~~~~~~~~~
                  
    -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tw-zh">
  <head>
    <title>Voyage - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
<!--     <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet"> -->

    <link rel="stylesheet" href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/owl.carousel.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/owl.theme.default.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/magnific-popup.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/ionicons.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/bootstrap-datepicker.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/jquery.timepicker.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">
<!--     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<!--     <link rel="stylesheet" href="/resources/demos/style.css"> -->
    <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css">
    
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
      	<img alt="" src="<c:url value='/voyage/images/TTT.png' />" width="250px" height: auto;>
<!--         <a class="navbar-brand" href="index.html">Voyage</a> -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="index.jsp" class="nav-link">首頁</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/tour/tours.jsp'/>" class="nav-link">團體旅遊</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/hotels.jsp'/>" class="nav-link">飯店</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/FlightNoDelect3.jsp'/>" class="nav-link">機票</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/ticket.jsp'/>" class="nav-link">門票</a></li>
            <li class="nav-item"><a href="<c:url value='/rate/rate.jsp'/>" class="nav-link">查詢匯率</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/contact.html'/>" class="nav-link">聯絡我們</a></li>
            <li class="nav-item"><a href="#" class="nav-link">
            	<jsp:include page="login.jsp"></jsp:include>
            </a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->


  <script src="<c:url value='/voyage/js/jquery.min.js' />"></script>
  <script src="<c:url value='/voyage/js/jquery-migrate-3.0.1.min.js' />"></script>
  <script src="<c:url value='/voyage/js/popper.min.js' />"></script>
  <script src="<c:url value='/voyage/js/bootstrap.min.js' />"></script>
  <script src="<c:url value='/voyage/js/jquery.easing.1.3.js' />"></script>
  <script src="<c:url value='/voyage/js/jquery.waypoints.min.js' />"></script>
  <script src="<c:url value='/voyage/js/jquery.stellar.min.js' />"></script>
  <script src="<c:url value='/voyage/js/owl.carousel.min.js' />"></script>
  <script src="<c:url value='/voyage/js/jquery.magnific-popup.min.js' />"></script>
  <script src="<c:url value='/voyage/js/aos.js' />"></script>
  <script src="<c:url value='/voyage/js/jquery.animateNumber.min.js' />"></script>
  <script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script>
  <script src="<c:url value='/voyage/js/jquery.timepicker.min.js' />"></script>
<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
<!--   <script src="js/google-map.js"></script> -->
  <script src="<c:url value='/voyage/js/main.js' />"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
 </body>