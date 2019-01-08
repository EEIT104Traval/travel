<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="tw-zh">
<!-- <link rel="stylesheet" href="css/main_styles.css"> -->
<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/about.css' />">

<head>
<meta charset="UTF-8">
<title>飯店搜尋</title>
</head>
<body>

	<!-- slider -->

	<section class="home-slider owl-carousel">
		<div class="slider-item" style="background-image: url('<c:url value='/voyage/images/bg_3.jpg'/>');" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container"></div>
		</div>
	</section>
	
	<!-- END slider -->

	<!-- Search -->

	<div class="home_search" style="margin-top: -150px">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">想住哪就選哪</div>
						<div class="home_search_content">
							<form action="<c:url value="/voyage/hotels.controller" />"
								class="home_search_form" id="home_search_form" method="post">
								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1" placeholder="請輸入國家" name="country" required="required">
									<input type="text" class="search_input search_input_2" placeholder="請輸入城市" name="city"> <input type="text"
										class="search_input search_input_3" id="checkin_date" placeholder="入住日期" name="date"> <input type="text"
										class="search_input search_input_4" id="checkout_date" placeholder="退房日期" name="date">
									<!-- <input type="text" class="search_input search_input_5" placeholder="人數" name=""> -->
									<button class="home_search_button">搜尋</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- END Search -->


	<!-- 熱門城市  -->
	
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<h2>熱門城市</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="carousel1 owl-carousel ftco-owl">
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20" style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/法國.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
<!-- 									<div> -->
<%-- 										<a href="<c:url value='#'/>">法國</a> --%>
<!-- 									</div> -->
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">巴黎的飯店（法國）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">造訪法國，千萬別錯過環境安寧、風景、古城！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>更多</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="100">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/英國.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">倫敦的飯店（英國）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">來趟英國之旅吧！盡情享受當地購物、休閒與風景。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="<c:url value='blog-single.html'/>" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/西班牙.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">巴塞隆那的飯店（西班牙）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">若你喜歡環境安寧、美食、海灘，絕對別錯過西班牙！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/臺灣.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">台北的飯店（臺灣）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">夜市、風景、美食，讓你愛上臺灣。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20" 
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/瑞士.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">蘇黎世的飯店（瑞士）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">如果你喜歡風景、高山、自然風光，絕對別錯過瑞士！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/加拿大.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">多倫多的飯店（加拿大）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">造訪加拿大，千萬別錯過風景、自然風光、休閒！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/日本.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">東京的飯店（日本）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">別錯過日本！美食、觀光、風景必訪人氣目的地。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/喬治亞.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">第比利希的飯店（喬治亞）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">喬治亞是居民友善、自然風光、美食的絕佳選擇。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/韓國.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">首爾的飯店（韓國）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">美食、購物、觀光，讓你愛上韓國。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/巴西.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">里約熱內盧的飯店（巴西）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">造訪巴西，千萬別錯過環境安寧、自然風光、海灘！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- END 熱門城市 -->

	<!-- 熱門飯店 -->

	<section class="ftco-section">
		<div class="container-fluid">
			<div class="row no-gutters justify-content-center mb-5 pb-5 ftco-animate" style="margin-top: -80px">
				<div class="col-md-7 text-center heading-section">
					<h2>熱門飯店推薦</h2>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col-md-6 col-lg-3 ftco-animate">
<!-- 				<----------------------------------------------------->
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/images/tour-1.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span>
								<span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/images/tour-2.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span>
								<span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/images/tour-3.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span> <span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/images/tour-4.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span> <span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5"
						style="background-image: url('<c:url value='/voyage/images/tour-5.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span>
								<span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5"
						style="background-image: url('<c:url value='/voyage/images/tour-6.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span>
								<span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5"
						style="background-image: url('<c:url value='/voyage/images/tour-7.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span>
								<span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5"
						style="background-image: url('<c:url value='/voyage/images/tour-8.jpg'/>');">
						<div class="text">
							<span class="price">$399</span>
							<h3 class="heading">Group Tour in Maldives</h3>
							<div class="post-meta">
								<span>Ameeru Ahmed Magu Male’, Maldives</span>
							</div>
							<p class="star-rate">
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star"></span><span class="icon-star"></span>
								<span class="icon-star-half-full"></span>
								<span>500 reviews</span>
							</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	
	<!-- END 熱門飯店 -->

	<!-- 住宿類型  -->
	
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<h2>不論您想尋找哪種住宿，我們都有...</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="carousel1 owl-carousel ftco-owl">
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20" style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/公寓.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
<!-- 									<div> -->
<%-- 										<a href="<c:url value='#'/>">法國</a> --%>
<!-- 									</div> -->
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">公寓</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">造訪法國，千萬別錯過環境安寧、風景、古城！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>更多</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="100">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/英國.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">倫敦的飯店（英國）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">來趟英國之旅吧！盡情享受當地購物、休閒與風景。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="<c:url value='blog-single.html'/>" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/西班牙.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">巴塞隆那的飯店（西班牙）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">若你喜歡環境安寧、美食、海灘，絕對別錯過西班牙！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/臺灣.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">台北的飯店（臺灣）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">夜市、風景、美食，讓你愛上臺灣。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20" 
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/瑞士.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">蘇黎世的飯店（瑞士）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">如果你喜歡風景、高山、自然風光，絕對別錯過瑞士！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/加拿大.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">多倫多的飯店（加拿大）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">造訪加拿大，千萬別錯過風景、自然風光、休閒！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/日本.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">東京的飯店（日本）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">別錯過日本！美食、觀光、風景必訪人氣目的地。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/喬治亞.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">第比利希的飯店（喬治亞）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">喬治亞是居民友善、自然風光、美食的絕佳選擇。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/韓國.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">首爾的飯店（韓國）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">美食、購物、觀光，讓你愛上韓國。</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/巴西.jpg'/>');"></a>
							<div class="text p-4">
								<div class="meta">
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">里約熱內盧的飯店（巴西）</a>
								</h3>
								<div>
									<a href="<c:url value='#'/>">造訪巴西，千萬別錯過環境安寧、自然風光、海灘！</a>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
<%-- 									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a> --%>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- END 住宿類型 -->


	<!-- 標籤 -->
	
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="sidebar-box ftco-animate">
					<h3>標籤</h3>
					<div class="tagcloud">
						<a href="<c:url value='#'/>" class="tag-cloud-link">公寓 <span>(685,710)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">渡假村<span>(20,685)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">Villa<span>(339,001)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">木屋<span>(11,604)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">小屋<span>(111,777)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">豪華露營<span>(6,839)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">飯店式公寓<span>(30,012)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">度假屋<span>(339,001)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">家庭旅館<span>(123,290)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">青年旅館<span>(25,889)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">汽車旅館<span>(15,624)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">B&B<span>(220,778)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">傳統日式旅館<span>(2,386)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">摩洛哥傳統民宅<span>(1,245)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">露營區<span>(65,11)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">民宿<span>(159,235)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">露營地<span>(5,519)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">鄉間別墅<span>(16,678)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">農莊<span>(11,022)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">船屋<span>(1,772)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">豪華帳篷<span>(1,973)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">自炊式住宿<span>(579,580)</span></a> <a
							href="<c:url value='#'/>" class="tag-cloud-link">獨立小屋<span>(244)</span></a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- END 標籤 -->

 	<!-- 住宿類型 -->

	<div class="why">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title"><h2>不論您想尋找哪種住宿，我們都有...</h2></div>
				</div>
			</div>
		<div class="row why_row">
				
				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="./hotelPic/住宿類型/公寓.jpg" alt="">
							<div class="d-flex flex-column align-items-center justify-content-center"></div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">公寓</div>
							<div class="why_text">
<!-- 								<p>Pellentesque sit amet elementum ccumsan sit amet mattis eget, tristique at leo.</p> -->
							</div>
						</div>
					</div>
				</div>

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="./hotelPic/住宿類型/公寓.jpg" alt="">
							<div class="d-flex flex-column align-items-center justify-content-center">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">Great Team</div>
							<div class="why_text">
<!-- 								<p>Pellentesque sit amet elementum ccumsan sit amet mattis eget, tristique at leo.</p> -->
							</div>
						</div>
					</div>
				</div>

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="./hotelPic/住宿類型/公寓.jpg" alt="">
							<div class="d-flex flex-column align-items-center justify-content-center">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">Best Deals</div>
							<div class="why_text">
<!-- 								<p>Pellentesque sit amet elementum ccumsan sit amet mattis eget, tristique at leo.</p> -->
							</div>
						</div>
					</div>
				</div>
				
				
				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="./hotelPic/住宿類型/公寓.jpg" alt="">
							<div class="d-flex flex-column align-items-center justify-content-center">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">Best Deals</div>
							<div class="why_text">
<!-- 								<p>Pellentesque sit amet elementum ccumsan sit amet mattis eget, tristique at leo.</p> -->
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
	
		<!-- END 住宿類型 -->

	<jsp:include page="../foo.jsp"/>

</body>
</html>