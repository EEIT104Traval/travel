<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tw-zh">
  <head>
    <title>Time To Travel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
$(document).ready(function() {
	var user = '${user}';
	var len = user.length;
	if(len){
		$("#login").html('<button id="signout" type="button" onclick="signout()" class="btn btn-link">登出</button>')
// 		$("#login").html(
// 			"<div class='dropdown'>"
// 				+"<button class='btn btn-secondary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>"
// 					+"Hello!　${user}</button>"
// 		  		+"<div class='dropdown-menu' aria-labelledby='dropdownMenuButton'>"
// 		    		+"<a class='dropdown-item' href='#'>會員資料修改</a>"
// 		    		+"<a class='dropdown-item' href='#'>交易明細查詢</a>"
// 		    		+"<a class='dropdown-item' href='#'>登出</a>"
// 		  		+"</div>"
// 			+"</div>)"
// 			)
	}
});
	
	function signout(){
		$.ajax({
			url : '/Travel/secure/log_out.controller',
			type : 'get',
			dataType : 'text',
		}).done(function(e) {
	      window.location.reload();
		})
	}
</script>
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
      	<img alt="" src="<c:url value='/voyage/images/TTT.png' />" width="250px" height: auto;>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
          	<li class="nav-item"><a href="<c:url value='/voyage/index.jsp'/>" class="nav-link">首頁</a></li>
            <li class="nav-item"><a href="<c:url value='/tour/tours.jsp'/>" class="nav-link">團體旅遊</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/hotel/hotels.jsp'/>" class="nav-link">飯店</a></li>
            <li class="nav-item"><a href="<c:url value='/flight/FlightNew.jsp'/>" class="nav-link">機票</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/ticket.jsp'/>" class="nav-link">門票</a></li>
            <li class="nav-item"><a href="<c:url value='/rate/rateindex3.jsp'/>" class="nav-link">查詢匯率</a></li>
            <li class="nav-item"><a href="<c:url value='/voyage/contact.html'/>" class="nav-link">聯絡我們</a></li>
            Split button
<div class="dropdown">
<!--   Trigger -->
  <button style="background:#3c3c3c; margin-top:24px;border:2px solid #3c3c3c;font-size:100% " class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown"
    aria-haspopup="true" aria-expanded="false">會員功能</button>
<!--   Menu -->
  <div class="dropdown-menu dropdown-primary" style="background-color: #3c3c3c;margin-top:-30px">
    <a class="dropdown-item" style="background-color: #3c3c3c;color:white" href="#">查詢訂單</a>
    <a class="dropdown-item" style="background-color: #3c3c3c;color:white" href="#">資料修改/密碼修改</a>

  </div>
</div>
            
          </ul>
        </div>
      </div>
      <div style="color:#fff">
      	<div id="login">
      		<jsp:include page="login.jsp"/>
    	</div>
        <c:if test="${not empty user}">
        	<c:out value="<h4 style='color:#fff'>Hello!　${user}</h4>" escapeXml="false"/>
		</c:if>
      </div>
    </nav>
    <!-- END nav -->

 </body>