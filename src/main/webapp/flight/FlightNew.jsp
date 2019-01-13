<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html lang="tw-zh">

<!-- import this css by Alex -->
<!-- <link rel="stylesheet" href="css/main_styles.css"> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/voyage/styles/main_styles.css'/>">
	
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
<%-- <jsp:include page="/voyage/nav.jsp" /> --%>
<script>
	$(document).ready(function(){
		$('input').hover(over,out);
		function over(){
			//$(this).removeClass('s1',1000).addClass('s2',1000)
			$(this).switchClass('search_input_1','search_input_1hover',1000)
		}
		function out(){
			//$(this).removeClass('s2',1000).addClass('s1',1000)
			$(this).switchClass('search_input_1hover','search_input_1',1000)
		}
		$('#peopleType').onclick(function() {
			$(this).append(
					
			'<div>111</div>'
			)
			
		})
		
		
	})
// 			$('#home_search_button').click(function() {
// 				alert("button被按了一下");
// 				var goPlace = $('#goPlace').val();
// 				var goPlace2 = $('#goPlace2').val();
// 				var checkin_date = $('#checkin_date').val();
// 				var checkout_date = $('#checkout_date').val();
// 				var peopleType = $('#peopleType').val();
// 				var cabin = $('#search-controls-cabin-class-dropdown').val();
// 				$.ajax({
// 					url : '/Travel/FlightInfo',
// 					contentType : 'application/json; charset=UTF-8',
// 					type : 'get',
// 					dataType : 'json',
// 					data:{
// 						"takeOffPlace": goPlace,
// 						"landingPlace":goPlace2,
// 						"checkin_date":checkin_date,
// 						"checkout_date":checkout_date,
// 						"peopleType":peopleType,
// 						"cabinclass":cabin
// 					}
// 				}).done(function(JData) {
// 					console.log(JData)
							
// 					})

// 			});
// 	});
</script>
</head>
<body>

<jsp:include page="/voyage/nav.jsp" />
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/home_slider.jpg'/>')"
			data-stellar-background-ratio="0.5">
			<div class="overlay">
				<div class="container"></div>
			</div>
		</div>
	</section>
	<!-- END slider -->

	<!-- add this div by Alex -->
	<!-- Search -->

	<div class="home_search" style="margin-top: -150px">
		<form action="<c:url value="/FlightInfoNew" />" class="home_search_form"
			id="home_search_form" method="POST">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_search_container">
							<!-- 						<div class="home_search_title">想飛哪就選哪</div> hidden-->
							<div class="home_search_title">
								<div class="form-group">
									<div class="form-checkbox">
										<div class="radio-beauty-container">
											<div style="display: inline-block;"> <input
												type="radio" name="flystyle" id="flystyle1" hidden=true
												style="display: inline-block;" checked="checked" /> <label
												for="goandback" class="radio-beauty"
												style="display: inline-block;"></label><span
												class="radio-name">往返</span>
											</div> <div style="display: inline-block;"> <input
												type="radio" name="flystyle" id="go" hidden=true
												style="display: inline-block;" /> <label for="flystyle2"
												class="radio-beauty" style="display: inline-block;"></label><span
												class="radio-name">單程</span>
											</div> <div style="display: inline-block;"> <input
												type="radio" name="flystyle" id="more" hidden=true
												style="display: inline-block;" /> <label for="flystyle3"
												class="radio-beauty" style="display: inline-block;"></label><span
												class="radio-name">多程</span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="home_search_content">

								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<div>
										<span class="form-label">出發地</span> <input id='demo2' type="text" autocomplete="off"
											class="search_input_1" style="width: 450px"
											placeholder="請輸入機場/城市中英文或代碼"1 >
<!-- 											required="required" -->
									</div>
									<img alt="" src="<c:url value='/voyage/images/changeTwoPlace.png'/>"
										width="25px" style="padding-top: 42px">
									<div>
										<span class="form-label">目的地</span> <input id='demo1' type="text" autocomplete="off"
											class="search_input_1" style="width: 450px"
											placeholder="請輸入機場/城市中英文或代碼" >
									</div>
								</div>

								<div style="display: inline-block; padding-right: 40px;">
									<span class="form-label">出發日期</span> <input type="text" autocomplete="off"
										class="search_input_1" id="checkin_date"
										placeholder="yyyy/MM/dd" name="">
								</div>
								<div style="display: inline-block; padding-right: 40px;">
									<span class="form-label">回程日期</span> <input type="text" autocomplete="off"
										class="search_input_1" placeholder="yyyy/MM/dd"
										name="" id="checkout_date">
								</div>
								<div style="display: inline-block; padding-right: 40px;">
									<span class="form-label">旅客類型</span> <input id='peopleType' type="text" autocomplete="off"
										class="search_input_1" placeholder="人數" name="">
								</div>
								<div style="display: inline-block; padding-right: 65px;">
									<span class="form-label">艙等</span> <select
										class="search_input_1"
										id="search-controls-cabin-class-dropdown"
										name="search-controls-cabin-class-dropdown"
										style="width: 150px; display: block;">
										<option value="Economy" selected="selected">經濟艙</option>
										<option value="PremiumEconomy">高端經濟艙</option>
										<option value="First">頭等艙</option>
										<option value="Business">商務艙</option>
									</select>
								</div>


								<button class="home_search_button" id="home_search_button" type="submit">搜尋</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>


	<div class="intro">
		<div class="intro_background"
			style="background-image: url( <c:url value='/voyage/images/intro.png'/>)"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="intro_container">
						<div class="row">

							<!-- Intro Item -->
							<div class="col-lg-4 intro_col">
								<div
									class="intro_item d-flex flex-row align-items-end justify-content-start">
									<div class="intro_icon">
										<img src="<c:url value='/voyage/images/beach.svg'/>" alt="">
									</div>
									<div class="intro_content">
										<div class="intro_title">Top Destinations</div>
										<div class="intro_subtitle">
											<p>Nulla pretium tincidunt felis, nec.</p>
										</div>
									</div>
								</div>
							</div>

							<!-- Intro Item -->
							<div class="col-lg-4 intro_col">
								<div
									class="intro_item d-flex flex-row align-items-end justify-content-start">
									<div class="intro_icon">
										<img src="<c:url value='/voyage/images/wallet.svg'/>" alt="">
									</div>
									<div class="intro_content">
										<div class="intro_title">The Best Prices</div>
										<div class="intro_subtitle">
											<p>Sollicitudin mauris lobortis in.</p>
										</div>
									</div>
								</div>
							</div>

							<!-- Intro Item -->
							<div class="col-lg-4 intro_col">
								<div
									class="intro_item d-flex flex-row align-items-end justify-content-start">
									<div class="intro_icon">
										<img src=" <c:url value='/voyage/images/suitcase.svg'/>" alt="">
									</div>
									<div class="intro_content">
										<div class="intro_title">Amazing Services</div>
										<div class="intro_subtitle">
											<p>Nulla pretium tincidunt felis, nec.</p>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	 <script src=" <c:url value='/flight/mohu/demo/js/demo.js'/>" type="text/javascript"></script>
<%-- 	<link href=" <c:url value='/flight/mohu/demo/css/prettify.css'/>" rel="stylesheet" /> --%>
<!--     <link href="css/bootstrap.css" rel="stylesheet"> -->
<%--     <link href=" <c:url value='/flight/mohu/demo/css/demo.css'/>" rel="stylesheet"> --%>
    <script src=" <c:url value='/flight/mohu/demo/js/prettify.js'/>" type="text/javascript"></script>
    <script src=" <c:url value='/flight/mohu/demo/js/mockjax.js'/>" type="text/javascript"></script>
    <script src=" <c:url value='/flight/mohu/js/bootstrap-typeahead.js'/>" type="text/javascript"></script>
	 
	<jsp:include page="/voyage/foo.jsp" />
</body>
</html>