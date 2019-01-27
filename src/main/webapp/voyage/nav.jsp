<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="tw-zh">
<head>
<title>Time To Travel</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style>
.navbar-expand-lg .navbar-nav {
	/* -webkit-box-orient: horizontal; */
	flex-flow: row;
	margin: auto;
}
</style>
<!--     <style>.menu a:link{background-color: black}</style> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<img alt="" src="<c:url value='/voyage/images/TTT.png' />"
				width="250px"height:auto;>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a
						href="<c:url value='/voyage/index.jsp'/>" class="nav-link">首頁</a></li>
					<li class="nav-item"><a
						href="<c:url value='/tour/tours.jsp'/>" class="nav-link">團體旅遊</a></li>
					<li class="nav-item"><a
						href="<c:url value='/voyage/hotel/hotels.jsp'/>" class="nav-link">飯店</a></li>
					<li class="nav-item"><a
						href="<c:url value='/flight/FlightNew.jsp'/>" class="nav-link">機票</a></li>
					<li class="nav-item"><a
						href="<c:url value='/voyage/ticket.jsp'/>" class="nav-link">門票</a></li>
					<li class="nav-item"><a
						href="<c:url value='/rate/rateindex3.jsp'/>" class="nav-link" onclick="alertRate()">查詢匯率</a></li>
				</ul>
			</div>
		</div>
		<div>
			<div id="login">
				<c:if test="${empty user}">
					<jsp:include page="login.jsp" />
				</c:if>
			</div>
			<c:if test="${not empty user}">
				<%-- 				<c:out value="<h4 style='color:#fff'>Hello!　${user}</h4>" escapeXml="false" /> --%>
				<!-- Example single danger button -->
				<div class="btn-group">
					<button type="button" class="btn btn-link" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" style="font-size: 30px">
						${user}</button>
					<div class="dropdown-menu dropdown-menu-right" id="test">
						<a class="dropdown-item" href="<c:url value='/login/userorder.jsp'/>">查詢訂單</a> <a
							class="dropdown-item" href="<c:url value='/secure/modify?accountName=${accountName}'/>">資料/密碼修改</a>
						<div class="dropdown-divider">這個是什麼</div>
						<a onclick="signout()" class="dropdown-item" href="##">登出</a>
					</div>
				</div>
			</c:if>
		</div>
	</nav>

<script>
	$(document).ready(function() {
		var authority = '${login.authority}'
		if (authority=='B001'){
			$('#test').append('<a class="dropdown-item" href="<c:url value='/CMS/01_01.jsp'/>">後台管理</a>')
		}
// 		var user = '${user}';

// 		var len = user.length;
// 		if (len) {
// 			$("#login").html('')
// 					$("#login").html(
// 						"<div class='dropdown'>"
// 							+"<button class='btn btn-secondary dropdown-toggle' type='button' id='dropdownMenuButton' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>"
// 								+"Hello!　${user}</button>"
// 					  		+"<div class='dropdown-menu' aria-labelledby='dropdownMenuButton'>"
// 					    		+"<a class='dropdown-item' href='#'>會員資料修改</a>"
// 					    		+"<a class='dropdown-item' href='#'>交易明細查詢</a>"
// 					    		+"<a class='dropdown-item' href='#'>登出</a>"
// 					  		+"</div>"
// 						+"</div>)"
// 						)
// 		}
	});

	function signout() {
		$.ajax({
			url : '/Travel/secure/log_out.controller',
			type : 'get',
			dataType : 'text',
		}).done(function(e) {
			window.location.reload();
		})
	}

	function userorder() {
		window.location = "http://localhost:8080/Travel/login/userorder.jsp";

	}
	var accountName="${sessionScope.accountName}";//抓名字
	function alertRate(){
		$.ajax({
			url : '/Travel/voyage/checkRate.controller',
			contentType : 'application/json; charset=UTF-8',
			type : 'get',
			dataType : 'json',
			data : {
				'accountName' : accountName,
			},
			
		}).done(function(e) {
			
			console.log("ˋ抓到"+e["currency"])
			if (e["currency"]){
				alert("Hello "+accountName+"!! 您輸入的匯率價格已到價，可準備兌換囉!!! ")
			}else{
				alert("Hello"+accountName+"!! 你輸入的價格未到價")
			}
		})
		
		
	}
	
</script>


	<!-- END nav -->

</body>