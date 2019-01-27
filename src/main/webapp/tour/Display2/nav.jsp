<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tw-zh">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>

</script>
  </head>
  <body>

 <a href="https://www.blogger.com/blogger.g?blogID=2031514508322140995#" id="gotop">
   <i class="fa fa-angle-up"></i>
</a>
    <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
      <div class="container">
        <img alt="" src="<c:url value='/voyage/images/TTT.png' />" width="250px">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
          <ul class="navbar-nav ml-auto" style="margin:auto;">
            <li class="nav-item"><a href="<c:url value='/voyage/index.jsp'/>" class="nav-link">首頁</a></li>
            <li class="nav-item"><a href="<c:url value='/tour/tours.jsp'/>" class="nav-link">團體旅遊</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/hotel/hotels.jsp'/>" class="nav-link">飯店</a></li>
            <li class="nav-item"><a href="<c:url value='/flight/FlightNew.jsp'/>" class="nav-link">機票</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/ticket.jsp'/>" class="nav-link">門票</a></li>
            <li class="nav-item"><a href="<c:url value='/rate/rateindex2.jsp'/>" class="nav-link">查詢匯率</a></li>
          </ul>
        </div>
      </div>
    </nav>
    
 </body>