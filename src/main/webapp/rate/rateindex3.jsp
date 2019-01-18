<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
	
<!DOCTYPE html>
<html lang="tw-zh">
<link rel="stylesheet" href="css/main_styles.css">
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
    <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css">
<head>
<title>RateIndex</title>
<link rel="stylesheet" href="./css/rate.css">
	<script language="javascript" type="text/javascript" src="./js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.time.js"></script>
	<script language="javascript" type="text/javascript" src="./js/moment.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
<!--	https://hk.saowen.com/a/3bb2d62596486787bb77995a447207f180a828af15cddf5912c0aceaad24caf0 -->
<title>銀行匯率</title>
<style>
.tb1 {
	width: 1000px;
	height:200px;
	border: 3px solid #0080ff;
	border-collapse: collapse;
}

th {
	border: 1px solid gray;
	height:30px;
}

td {
	border: 1px solid gray;
	vertical-align:middle;
	height:30px;
}

img{
/* 	display:block; */
	margin-bottom:1px;
	margin-right:4px;
}

thead {
	background-color: #46a3ff;
	color: #ffffff;
	border-bottom: 3px double #ff5809;
	text-align: center;
}

tbody {
	background-color: #c4e1ff;
	text-align: center;
	color:black;
}

tbody tr:nth-child(2n) {
	background-color: #acd6ff;
}

tbody tr:nth-child(2n+1) {
	background-color: #e0e0e0;
}

tbody tr:hover {
	background-color: #ffffff;
}
</style>		
</head>

<body>
<script>
$(document).ready(function() {
		$.ajax({
			method: "GET",
			url:"/Travel/rate/rateController",
// 			url:"/Travel/tour/display?tourNo=1",
			dataType: "json",
			success: function(json) {
				console.log(json)
				
				for(item in json){
					var row = '<tr>'+
				      '<td><img src="./images/'+ json[item].currency +'.png">  </img>'+json[item].currency+'</td>'+
				      '<td>'+json[item].cashBuy+'</td>'+
				      '<td>'+json[item].cashSell+'</td>'+
				      '<td>'+json[item].spotBuy+'</td>'+
				      '<td>'+json[item].spotSell+'</td>'+
					  '</tr>';
					   $('table> tbody:last').append(row);		
					   }
				//var text = "<ul><li>" +json[0].currency + "</li></ul>"
				//$('#123').html(text)
			}
			
		});
});
function update(){
	$.ajax({
		method: "POST",
		url:"https://rate.bot.com.tw/xrt?Lang=zh-TW",
//			url:"/Travel/tour/display?tourNo=1",
		dataType: "json",
		success: function(json) {
			console.log(json)
			/*
			for(item in json){
				var row = '<tr>'+
			      '<td>'+json[item].currency+'<img src="./images/'+ json[item].currency +'.png"></img></td>'+
			      '<td>'+json[item].cashBuy+'</td>'+
			      '<td>'+json[item].cashSell+'</td>'+
			      '<td>'+json[item].spotBuy+'</td>'+
			      '<td>'+json[item].spotSell+'</td>'+
				  '</tr>';
				   $('table> tbody:last').append(row);		
				   }
			*/
		}
		
	});
}
</script>
<jsp:include page="/voyage/nav.jsp" />

	<!-- END nav -->
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('images/pic01.jpg');min-height: 100px;"
			data-stellar-background-ratio="1">
			<div class="overlay"></div>
			<div class="container">
				<div class="row slider-text align-items-center">
					<div class="col-md-7 col-sm-12 ftco-animate">
						<p class="breadcrumbs">
<!-- 							<span class="mr-2"><a href="index.jsp">Home</a></span> <span>ticket</span> -->
						</p>
<!-- 						<h1 class="mb-3"></h1> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	
		<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title"><h2>匯率</h2></div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form"
								method="get">
								<div>
								<div style="float:right;margin-top: 45px;margin-bottom: 10px;margin-right:-40px">
<!--   	   							<button type="button" style="float:right;margin-bottom: 10px"><a href="toggling3.jsp" />最近半年走勢圖</a></button> -->
			
 			<button  style="margin-right: 10px" ><a href="<c:url value='toggling1.jsp'/>"  />最近半年走勢圖</a></button>
			<button  style="margin-right: 10px"><a href="<c:url value='toggling.jsp'/>"  />最近三個月走勢圖</a></button>
			<button><a href="<c:url value='../voyage/index.jsp'/>"  />回首頁</a></button>
			</div>					
									
<!-- 		<div style="margin-top:20px"> -->
<!-- 	   <button type="button" style="float:right;margin-right: 350px"><a href="../voyage/index.jsp" />回首頁</a></button> -->
<!--   	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling1.jsp" />最近半年走勢圖</a></button> -->
<!-- 	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling.jsp" />最近三個月走勢圖</a></button> -->
<!-- 	   <button type="button" style="float:right;margin-right: 10px"><a href="#" onclick="update()"/>update</a></button> -->
<!-- 	</div> -->
<!-- 	<h2 style="margin-left:450px">匯率</h2> -->
	<table id="productTable" class="tb1">
		<thead>
			<tr>
				<th rowspan="2">幣別</th>
				<th colspan="2">現金匯率</th>
				<th colspan="2">即期匯率</th>

			</tr>

			<tr>
				<th>本行買入</th>
				<th>本行賣出</th>
				<th>本行賣出</th>
				<th>本行賣出</th>
			</tr>
		</thead>
		<tbody>
      <div style="margin-top: -50px">
	<%
	   Date dNow = new Date( );
	   SimpleDateFormat ft = 
	   new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
       out.print( "<h5 align=\"left\">更新時間： " +ft.format(dNow)+"</h5>");
    %>
</div>

		</tbody>
	</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

<!-- 	<h2 style="margin-left:450px">匯率</h2> -->
	
<!-- 	<div style="margin-top: 100px"> -->



	<!-- END slider -->

	<jsp:include page="/voyage/foo.jsp" />
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
	<script src="<c:url value='/voyage/js/main.js' />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	
</body>
</html>