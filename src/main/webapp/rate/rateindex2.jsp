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
<head>
<title>RateIndex</title>
<link rel="stylesheet" href="./css/rate.css">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
<!--	https://hk.saowen.com/a/3bb2d62596486787bb77995a447207f180a828af15cddf5912c0aceaad24caf0 -->
<style>
.tb1 {
	width: 1000px;
	border: 3px solid #0080ff;
	border-collapse: collapse;
}

td, th {
	border: 1px solid gray;
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

	<!-- END nav -->
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('images/pic01.jpg');"
			data-stellar-background-ratio="0.5">
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
						<div class="home_search_title">匯率</div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form"
								method="get">
								<div >
  	   							<button type="button" style="float:right;margin-bottom: 10px"><a href="toggling3.jsp" />最近半年走勢圖</a></button>
								<table id="" class="tb1">

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
			<tr>
				<td>美金(USD)</td>
				<td>30.415</td>
				<td>31.105</td>
				<td>30.785</td>
				<td>30.885</td>

			</tr>
			<tr>
				<td>英鎊(GBP)</td>
				<td>38.16</td>
				<td>40.28</td>
				<td>39.16</td>
				<td>39.58</td>

			<tr>
				<td>瑞士法郎(CHF)</td>
				<td>30.63</td>
				<td>31.83</td>
				<td>31.29</td>
				<td>31.58</td>

			</tr>
			<tr>
				<td>歐元(EUR)</td>
				<td>34.48</td>
				<td>35.82</td>
				<td>35.1</td>
				<td>35.5</td>

			</tr>

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
	
	
	<%
	   Date dNow = new Date( );
	   SimpleDateFormat ft = 
	   new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
       out.print( "<h3 align=\"left\">更新時間： " +ft.format(dNow)+"</h3>");
    %>



	<!-- END slider -->

<%-- 	<jsp:include page="/voyage/foo.jsp" /> --%>
	
	
</body>
</html>