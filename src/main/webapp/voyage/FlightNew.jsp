<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="tw-zh">
<!-- import this css by Alex -->
<!-- <link rel="stylesheet" href="css/main_styles.css"> -->
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<head>
<jsp:include page="/voyage/nav.jsp" />
</head>
<body>


	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('images/home_slider.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay">
				<div class="container">
					<!--           <div class="row slider-text align-items-center"> -->
					<!--             <div class="col-md-7 col-sm-12 ftco-animate"> -->
					<!--               <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Hotels XXXXXXXXXX</span></p> -->
					<!--               <h1 class="mb-3">Hotels</h1> -->
				</div>
			</div>
		</div>
	</section>
	<!-- END slider -->

	<!-- add this div by Alex -->
	<!-- Search -->

	<div class="home_search" style="margin-top: -150px">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<!-- 						<div class="home_search_title">想飛哪就選哪</div> -->
						<div class="home_search_title">
							<div class="form-group">
								<div class="form-checkbox">


									<div class="radio-beauty-container">
										<label style="display: inline-block;"> <input
											type="radio" name="flystyle" id="flystyle1" hidden
											style="display: inline-block;" checked="checked" /> 
											<label for="goandback" class="radio-beauty"
											style="display: inline-block;"></label><span
											class="radio-name">往返</span>
										</label> <label style="display: inline-block;"> <input
											type="radio" name="flystyle" id="go" hidden
											style="display: inline-block;" /> <label for="flystyle2"
											class="radio-beauty" style="display: inline-block;"></label><span
											class="radio-name">單程</span>
										</label> <label style="display: inline-block;"> <input
											type="radio" name="flystyle" id="more" hidden
											style="display: inline-block;" /> <label for="flystyle3"
											class="radio-beauty" style="display: inline-block;"></label><span
											class="radio-name">多程</span>
										</label>
									</div>

								</div>
							</div>
						</div>


						<div class="home_search_content">
							<form action="<c:url value="/voyage/hotels.controller" />"
								class="home_search_form" id="home_search_form" method="post">
								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">

									<div>
										<span class="form-label">出發地</span> <input type="text"
											class="search_input_1" style="width: 450px"
											placeholder="請輸入機場/城市中英文或代碼" required="required">
									</div>
									<img alt="" src="images/changeTwoPlace.png" width="25px"
										style="padding-top: 42px">
									<div>
										<span class="form-label">目的地</span> <input type="text"
											class="search_input search_input_1" style="width: 450px"
											placeholder="請輸入機場/城市中英文或代碼" required="required">
									</div>
								</div>
							</form>
						</div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form">

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
									<span class="form-label">旅客類型</span> <input type="text"
										class="search_input search_input_1" placeholder="人數" name="">
								</div>
								<div style="display: inline-block; padding-right: 85px;">
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


								<button class="home_search_button">搜尋</button>
								<!-- 									    <div class="check-in col-sm-12 group mb-3"><input type="text" id="checkin_date" class="form-control" placeholder="入住日期"></div> -->
						</form>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="intro">
		<div class="intro_background"
			style="background-image: url(images/intro.png)"></div>
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
										<img src="images/beach.svg" alt="">
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
										<img src="images/wallet.svg" alt="">
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
										<img src="images/suitcase.svg" alt="">
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

	<jsp:include page="/voyage/footer.jsp" />
	<script src="js/main.js"></script>
</body>
</html>