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

<%-- <link rel="stylesheet" href="<c:url value='/voyage/css/main_styles.css' />"> --%>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />
<link rel="stylesheet" href="css/templatemo-style.css">
	
</head>

<body>

	<jsp:include page="/voyage/nav.jsp"></jsp:include>
	
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

	<div class="home_search" style="margin-top: -250px">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<!-- 						<div class="home_search_content"> -->
						<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
							<h2 style="color: white">紐約市中心希爾頓酒店</h2>
							<h2 style="color: white">New York Hilton Midtown</h2>
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
					<li class="tm-tab-link-li"><a href="#1a" data-toggle="tab" class="tm-tab-link">客房</a></li>
					<li class="tm-tab-link-li"><a href="#2a" data-toggle="tab" class="tm-tab-link">豪華房</a></li>
					<li class="tm-tab-link-li"><a href="#3a" data-toggle="tab" class="tm-tab-link">豪華無菸房</a></li>
					<li class="tm-tab-link-li"><a href="#4a" data-toggle="tab" class="tm-tab-link">行政樓層迷你套房</a></li>
					<li class="tm-tab-link-li"><a href="#5a" data-toggle="tab" class="tm-tab-link">主人套房</a></li>
					<li class="tm-tab-link-li"><a href="#6a" data-toggle="tab" class="tm-tab-link">總統套房</a></li>
				</ul>
				<div class="tab-content clearfix">

					<!-- Tab 1 -->
					<div class="tab-pane fade show active" id="1a">
						<div class="tm-recommended-place-wrap">

							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_highfloor1bed01_2_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">天際線客房（1 張睡床）</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">從高樓層客房盡情飽覽著名鬧市美景。一張大床。 2 人入住。</p>
									<p class="tm-text-gray"> 紐約市的迷人景致盡收眼底，同時在客房內收看 55 吋高清電視，讓自己徹底放鬆；在大型辦公桌前趕上工作進度；並且使用 WiFi 無線上網與外界保持連線。</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 6,836</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>
						</div>

							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_deluxequeenroom_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">城市景觀客房（大床）</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">現代設計，一張大床。 情侶夫妻或商務旅客的理想之選。 2 人入住。</p>
									<p class="tm-text-gray">這間寬敞的現代豪華客房設有一張 Hilton Serenity 大床、一張扶手椅及一間淋浴間，讓您好好犒賞自己。 設施包括一部 37 吋高清電視、可連接 MP3 的時鐘收音機、一張寬大辦公桌，以及 WiFi 無線上網。</p>
								</div>
								<div id="preload-hover-img"></div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 5,727</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_rm002_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">城市景觀客房（2 張睡床）</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">設計時尚，提供兩張雙人床。 適合家庭或團體。 4 人入住。</p>
									<p class="tm-text-gray">這間寬敞的當代豪華客房設有兩張雙人床、一張扶手椅及一個淋浴間，讓您好好犒賞自己及各住客。 設施包括一部 37 吋高清電視、可連接 MP3 的時鐘收音機、一張寬大辦公桌，以及 WiFi 無線上網。</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 5,727</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_execfloorroom01_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">市景客房（2 張睡床）</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">透過大型窗戶可欣賞紐約市景。 客房內冰箱及 55 吋高清電視。 4 人入住。</p>
									<p class="tm-text-gray">享受我們的城市住宿，探索紐約市更多精彩面貌。 位於酒店的中心樓層，您可從您客房的窗戶飽覽曼哈頓中城的熱鬧繁囂光景。 收看 55 吋高清電視，讓自己徹底放鬆；在大型辦公桌前趕上工作進度；並且使用 WiFi 無線上網與外界保持聯繫。 此客房可入住最多 4 人。</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 6,528</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

						<a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 2 -->
					<div class="tab-pane fade" id="2a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">South Resort Hotel</h3>
									<p class="tm-text-highlight">South One</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$220</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Aenean ac ante nec diam</h3>
									<p class="tm-text-highlight">South Second</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$230</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Suspendisse nec dapibus</h3>
									<p class="tm-text-highlight">South Third</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$240</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
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
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>
						</div>

						<a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 3 -->
					<div class="tab-pane fade" id="3a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Europe Hotel</h3>
									<p class="tm-text-highlight">Venecia, Italy</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$330</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">In viverra enim turpis</h3>
									<p class="tm-text-highlight">Paris, France</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$340</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Volutpat pellentesque</h3>
									<p class="tm-text-highlight">Barcelona, Spain</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$350</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Grand Resort Pasha</h3>
									<p class="tm-text-highlight">Istanbul, Turkey</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$360</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>
						</div>

						<a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 4 -->
					<div class="tab-pane fade" id="4a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prssuiterm_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">行政套房（單床）</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">從客房內可飽覽迷人的曼克頓中城天際線景色。一張大床。最多可入住 4 人</p>
									<p class="tm-text-gray">在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 15,335</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prescnr01_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">行政套房（雙床）</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">從客房內可飽覽迷人的曼克頓中城天際線景色。兩張雙人床。最多可入住 6 人</p>
									<p class="tm-text-gray">在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 15,920</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

						</div>

						<a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 5 -->
					<div class="tab-pane fade" id="5a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="img/tm-img-05.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Africa Resort Hotel</h3>
									<p class="tm-text-highlight">First City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$550</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-04.jpg" alt="Image" class="img-fluid tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Aenean ac magna diam</h3>
									<p class="tm-text-highlight">Second City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$560</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-07.jpg" alt="Image" class="img-fluid tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Beach Barbecue Sunset</h3>
									<p class="tm-text-highlight">Third City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$570</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="img/tm-img-06.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">Grand Resort Pasha</h3>
									<p class="tm-text-highlight">Fourth City</p>
									<p class="tm-text-gray">Sed egestas, odio nec bibendum
										mattis, quam odio hendrerit risus, eu varius eros lacus sit
										amet lectus. Donec blandit luctus dictum...</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$580</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>
						</div>

						<a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
					</div>
					<!-- tab-pane -->

					<!-- Tab 6 -->
					<div class="tab-pane fade" id="6a">

						<div class="tm-recommended-place-wrap">
							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prssuiterm_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">單臥室總統套房</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">從客房內可飽覽迷人的曼克頓中城天際線景色。一張大床。最多可入住 4 人。</p>
									<p class="tm-text-gray">在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 53,888</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

							<div class="tm-recommended-place">
								<img src="https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prescnr01_386x310_FitToBoxSmallDimension_Center.jpg" alt="Image" class="tm-recommended-img" width="270px" height="200px">
								<div class="tm-recommended-description-box">
									<h3 class="tm-recommended-title">總統轉角套房</h3>
									<p class="tm-text-highlight" style="margin-bottom:5px">從客房內可飽覽迷人的曼克頓中城天際線景色。一張大床。最多可入住 6人。</p>
									<p class="tm-text-gray">在紐約盡情遊玩探索，並將您的住宿升級至此時尚行政套房。 位於酒店高樓層，此寬敞的行政套房讓您對豪華住宿另有一番見解。</p>
								</div>
								<a href="#" class="tm-recommended-price-box">
									<p class="tm-recommended-price">$NT 64,666</p>
									<p class="tm-recommended-price-link">訂購</p>
								</a>
							</div>

						</div>

						<a href="#" class="text-uppercase btn-primary tm-btn mx-auto tm-d-table">Show More Places</a>
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

	<jsp:include page="/voyage/foo.jsp"></jsp:include>

</body>
</html>