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
	href="<c:url value='styles/main_styles.css'/>">
<head>
<%-- <jsp:include page="/voyage/nav.jsp" /> --%>
<script>
	$(document).ready(function(){
			$('#home_search_button').click(function() {
				alert("button被按了一下");
				var goPlace = $('#goPlace').val();
				var goPlace2 = $('#goPlace2').val();
				var checkin_date = $('#checkin_date').val();
				var checkout_date = $('#checkout_date').val();
				var peopleType = $('#peopleType').val();
				var cabin = $('#search-controls-cabin-class-dropdown').val();
				$.ajax({
					url : '/Travel/FlightInfo',
					contentType : 'application/json; charset=UTF-8',
					type : 'get',
					dataType : 'json',
					data:{
						"takeOffPlace": goPlace,
						"landingPlace":goPlace2,
						"checkin_date":checkin_date,
						"checkout_date":checkout_date,
						"peopleType":peopleType,
						"cabinclass":cabin
					}
				}).done(function(JData) {
					console.log(JData)
							
					})

			});
	});
</script>
</head>
<body>


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
		<form action="<c:url value="#" />" class="home_search_form"
			id="home_search_form" method="post">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_search_container">
							<!-- 						<div class="home_search_title">想飛哪就選哪</div> hidden-->
							<div class="home_search_title">
								<div class="form-group">
									<div class="form-checkbox">
										<div class="radio-beauty-container">
											<label style="display: inline-block;"> <input
												type="radio" name="flystyle" id="flystyle1" 
												style="display: inline-block;" checked="checked" /> <label
												for="goandback" class="radio-beauty"
												style="display: inline-block;"></label><span
												class="radio-name">往返</span>
											</label> <label style="display: inline-block;"> <input
												type="radio" name="flystyle" id="go" 
												style="display: inline-block;" /> <label for="flystyle2"
												class="radio-beauty" style="display: inline-block;"></label><span
												class="radio-name">單程</span>
											</label> <label style="display: inline-block;"> <input
												type="radio" name="flystyle" id="more"
												style="display: inline-block;" /> <label for="flystyle3"
												class="radio-beauty" style="display: inline-block;"></label><span
												class="radio-name">多程</span>
											</label>
										</div>
									</div>
								</div>
							</div>

							<div class="home_search_content">

								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<div>
										<span class="form-label">出發地</span> <input id='goPlace' type="text"
											class="search_input_1" style="width: 450px"
											placeholder="請輸入機場/城市中英文或代碼" required="required">
									</div>
									<img alt="" src="<c:url value='images/changeTwoPlace.png'/>"
										width="25px" style="padding-top: 42px">
									<div>
										<span class="form-label">目的地</span> <input id='goPlace2' type="text"
											class="search_input search_input_1" style="width: 450px"
											placeholder="請輸入機場/城市中英文或代碼" required="required">
									</div>
								</div>

								<div style="display: inline-block; padding-right: 40px;">
									<span class="form-label">出發日期</span> <input type="text"
										class="search_input search_input_1" id="checkin_date"
										placeholder="yyyy/MM/dd" name="">
								</div>
								<div style="display: inline-block; padding-right: 40px;">
									<span class="form-label">回程日期</span> <input type="text"
										class="search_input search_input_1" placeholder="yyyy/MM/dd"
										name="" id="checkout_date">
								</div>
								<div style="display: inline-block; padding-right: 40px;">
									<span class="form-label">旅客類型</span> <input id='peopleType' type="text"
										class="search_input search_input_1" placeholder="人數" name="">
								</div>
								<div style="display: inline-block; padding-right: 65px;">
									<span class="form-label">艙等</span> <select
										class="search_input search_input_1"
										id="search-controls-cabin-class-dropdown"
										name="search-controls-cabin-class-dropdown"
										style="width: 150px; display: block;">
										<option value="Economy" selected="selected">經濟艙</option>
										<option value="PremiumEconomy">高端經濟艙</option>
										<option value="First">頭等艙</option>
										<option value="Business">商務艙</option>
									</select>
								</div>


								<button class="home_search_button" id="home_search_button">搜尋</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>


	<div class="intro">
		<div class="intro_background"
			style="background-image: url( <c:url value='images/intro.png'/>)"></div>
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
										<img src="<c:url value='images/beach.svg'/>" alt="">
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
										<img src="<c:url value='images/wallet.svg'/>" alt="">
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
										<img src=" <c:url value='images/suitcase.svg'/>" alt="">
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

	<jsp:include page="/voyage/foo.jsp" />
	<script src=" <c:url value='js/main.js'/>"></script>
</body>
</html>