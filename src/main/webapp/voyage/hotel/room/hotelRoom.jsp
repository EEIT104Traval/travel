<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
	
</script>

<!DOCTYPE html>
<html lang="zh-tw">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>國外訂房</title>

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
  
<link rel="stylesheet" href="<c:url value='/voyage/css/jquery-ui.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles.css' />">

<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles.css' />">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />
<link rel="stylesheet" href="css/templatemo-style.css">
</head>

<body>
<jsp:include page="../../../voyage/nav.jsp"></jsp:include>
	<!-- slider -->

	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/bg_room.jpg'/>');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container"></div>
		</div>
	</section>

	<!-- END slider -->

	<!-- Hotel Info -->

	<div class="home_search" style="margin-top: -200px">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<!-- 						<div class="home_search_content"> -->
						<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
							<h2 style="color: white">紐約市中心希爾頓酒店(New York Hilton Midtown)</h2>
							<p style="color: white">地址 : 美國 紐約 曼哈頓 1335 Avenue of the
								Americas 10019</p>
							<p style="color: white">
								參考星等 ： <span class="icon-star"></span><span class="icon-star"><span
									class="icon-star"></span></span><span class="icon-star"></span>
							</p>
							<!--                         </div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="tm-main-content" id="top">

		<!-- .tm-top-bar -->

		<div class="tm-page-wrap mx-auto">

			<!--             --------------------------------------------------------------------------- -->

			<div class="tm-container-outer" id="tm-section-2">
				<section class="tm-slideshow-section">
					<div class="tm-slideshow slick-initialized slick-slider">
						<div class="slick-list draggable">
							<div style="padding-top: 30px; padding-left: 30px">
								<img
									src="/Travel/voyage/hotel/hotelPic/熱門飯店/紐約千禧希爾頓酒店(The Millennium Hilton New York).jpg"
									alt="Image" style="width: 632px;">
							</div>
						</div>
					</div>
					<div style="padding-top">
<!-- 					<div class="tm-slideshow-description tm-bg-primary" > -->
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.975565831148!2d-73.98197408540148!3d40.76256214245917!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258f9ad303595%3A0x3270a54be206ffce!2zMTMzNSA2dGggQXZlLCBOZXcgWW9yaywgTlkgMTAwMTnnvo7lnIs!5e0!3m2!1szh-TW!2stw!4v1547195360406"
							width="600px" height="450px" frameborder="0" style="border: 0; padding-top: 30px"
							allowfullscreen></iframe>
					</div>
				</section>
			</div>
			<!-- -------------------------------------------------------------------------------------------             -->

			<div class="tm-container-outer" id="tm-section-3"
				style="margin-top: 50px">
				<ul class="nav nav-pills tm-tabs-links">
					<li class="tm-tab-link-li"><a href="#1a" data-toggle="tab"
						class="tm-tab-link"> <img src="img/north-america.png"
							alt="Image" class="img-fluid"> North America
					</a></li>
					<li class="tm-tab-link-li"><a href="#2a" data-toggle="tab"
						class="tm-tab-link"> <img src="img/south-america.png"
							alt="Image" class="img-fluid"> South America
					</a></li>
					<li class="tm-tab-link-li"><a href="#3a" data-toggle="tab"
						class="tm-tab-link"> <img src="img/europe.png" alt="Image"
							class="img-fluid"> Europe
					</a></li>
					<li class="tm-tab-link-li"><a href="#4a" data-toggle="tab"
						class="tm-tab-link active"> <!-- Current Active Tab --> <img
							src="img/asia.png" alt="Image" class="img-fluid"> Asia
					</a></li>
					<li class="tm-tab-link-li"><a href="#5a" data-toggle="tab"
						class="tm-tab-link"> <img src="img/africa.png" alt="Image"
							class="img-fluid"> Africa
					</a></li>
					<li class="tm-tab-link-li"><a href="#6a" data-toggle="tab"
						class="tm-tab-link"> <img src="img/australia.png" alt="Image"
							class="img-fluid"> Australia
					</a></li>
					<li class="tm-tab-link-li"><a href="#7a" data-toggle="tab"
						class="tm-tab-link"> <img src="img/antartica.png" alt="Image"
							class="img-fluid"> Antartica
					</a></li>
				</ul>
				<div class="tab-content clearfix">

					<!-- Tab 1 -->
					<div class="tab-pane fade" id="1a">
						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">North Garden Resort</h3>
									<p class="tm-text-highlight">One North</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$110</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Felis nec dignissim</h3>
									<p class="tm-text-highlight">Two North</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<div id="preload-hover-img"></div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$120</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Sed fermentum justo</h3>
									<p class="tm-text-highlight">Three North</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$130</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Maecenas ultricies neque</h3>
									<p class="tm-text-highlight">Four North</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$140</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>
						</div>

						<a href="#"
							class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show
							More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 2 -->
					<div class="tab-pane fade" id="2a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">South Resort Hotel</h3>
									<p class="tm-text-highlight">South One</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$220</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Aenean ac ante nec diam</h3>
									<p class="tm-text-highlight">South Second</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$230</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Suspendisse nec dapibus</h3>
									<p class="tm-text-highlight">South Third</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$240</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Aliquam viverra mi at
										nisl</h3>
									<p class="tm-text-highlight">South Fourth</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$250</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>
						</div>

						<a href="#"
							class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show
							More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 3 -->
					<div class="tab-pane fade" id="3a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Europe Hotel</h3>
									<p class="tm-text-highlight">Venecia, Italy</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$330</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">In viverra enim turpis</h3>
									<p class="tm-text-highlight">Paris, France</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$340</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Volutpat pellentesque</h3>
									<p class="tm-text-highlight">Barcelona, Spain</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$350</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Grand Resort Pasha</h3>
									<p class="tm-text-highlight">Istanbul, Turkey</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$360</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>
						</div>

						<a href="#"
							class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show
							More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 4 -->
					<div class="tab-pane fade show active" id="4a">
						<!-- Current Active Tab WITH "show active" classes in DIV tag -->
						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Asia Resort Hotel</h3>
									<p class="tm-text-highlight">Singapore</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$440</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Nullam eget est a nisl</h3>
									<p class="tm-text-highlight">Yangon, Myanmar</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<div id="preload-hover-img"></div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$450</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Proin interdum
										ullamcorper</h3>
									<p class="tm-text-highlight">Bangkok, Thailand</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$460</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Lorem ipsum dolor sit</h3>
									<p class="tm-text-highlight">Vientiane, Laos</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$470</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>
						</div>

						<a href="#"
							class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show
							More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 5 -->
					<div class="tab-pane fade" id="5a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Africa Resort Hotel</h3>
									<p class="tm-text-highlight">First City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$550</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Aenean ac magna diam</h3>
									<p class="tm-text-highlight">Second City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$560</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Beach Barbecue Sunset</h3>
									<p class="tm-text-highlight">Third City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$570</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Grand Resort Pasha</h3>
									<p class="tm-text-highlight">Fourth City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$580</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>
						</div>

						<a href="#"
							class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show
							More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 6 -->
					<div class="tab-pane fade" id="6a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Hotel Australia</h3>
									<p class="tm-text-highlight">City One</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$660</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Proin interdum
										ullamcorper</h3>
									<p class="tm-text-highlight">City Two</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$650</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Beach Barbecue Sunset</h3>
									<p class="tm-text-highlight">City Three</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$640</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Grand Resort Pasha</h3>
									<p class="tm-text-highlight">City Four</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$630</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>
						</div>

						<a href="#"
							class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show
							More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 7 -->
					<div class="tab-pane fade" id="7a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Antartica Resort</h3>
									<p class="tm-text-highlight">Ant City One</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$770</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Pulvinar Semper</h3>
									<p class="tm-text-highlight">Ant City Two</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$230</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Cras vel sapien</h3>
									<p class="tm-text-highlight">Ant City Three</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$140</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image"
									class="img-fluid tm-recommended-img">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Nullam eget est</h3>
									<p class="tm-text-highlight">Ant City Four</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$190</p>
									<p class="tm-recommended-price-link">Continue Reading</p>
								</a>
							</div>
						</div>

						<a href="#"
							class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show
							More Places</a>
					</div>
					<!-- tab-pane -->
				</div>
			</div>

			<!-- -------------------------------------------------------------------------------------------             -->

			<!-- .tm-container-outer -->


		</div>
	</div>
	<!-- .main-content -->

	<!-- load JS files -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.singlePageNav.min.js"></script>
	<script src="slick/slick.min.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>

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

	<jsp:include page="../../foo.jsp" />

</body>
</html>