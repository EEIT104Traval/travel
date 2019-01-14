<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" 
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous">
</script>
<!DOCTYPE html>
<html lang="zh-tw">

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
<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles_sherry.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/about.css' />">

<style>
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+TC&subset=chinese-traditional');

 body {
        font-family: 'Noto Sans TC', sans-serif;
      }
     
      
</style>
<head>
<meta charset="UTF-8">
<title>飯店搜尋</title>
	<jsp:include page="/voyage/nav.jsp"></jsp:include>

<script>
var params = {};
// var country
// var city

// 	$(document).ready(function() { });
				
				function hotelSearch(){
					params.country = $('#country').val()
// 						alert(params.country)
					
					params.city = $('#city').val()
// 						alert(params.city)	
					
// 					if(params.city = ""){
// 						countrySearch()
// 					} else {
// 						citySearch()
// 					}
					
// 					找全部
					if(params.city != "" && params.country == ""){
						citySearch()
					}else if(params.city == "" && params.country != ""){
						countrySearch()
					}else{
						allSearch()
					}
					
				}

				function countrySearch(){
					$("#hotel_pic").html("")
					$('#hotel_title').html("")
						params.country = $('#country').val();
					alert(params.country)
					
					$.ajax({
						url : '/Travel/voyage/country.controller',
 						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
						data :{"country":$('#country').val()}
					}).done(
				function(JData) {
		
// 		        console.log(c);

								$.each(JData, function(index, value) {
									console.log(value);
									$("#hotel_pic").append(
//動態生成票券選項
// ------------------------------------------------------------------------------------------------------------------------------------------------------
										'<div class="col-md-6 col-lg-3">'+
											'<div class="blog-entry">'+
												'<a href="<c:url value="/voyage/hotel/room/hotelRoom.jsp" />" class="block-20" style="background-image: url('+value.pic+');"></a>'+
												'<div class="text p-4">'+
													'<div class="meta"></div>'+
													'<h6><a href="<c:url value="/voyage/hotel/room/hotelRoom.jsp" />">'+value.hotelName+'</a></h6>'+
						                   			'<p style="margin-bottom:0">'+value.starRate+'</p>'+
													'<p class="float-left" style="margin">'+value.price+'</p>'+
												'</div>'+
											'</div>'+
										'</div>'
												);
									});
								$("#hotel_title").append(
									'<div class="col-md-7 text-center heading-section" style="padding-top:40px">'+
// 										'<h2>'+JData[0].country+'飯店</h2>'+
										'<h2>您搜尋的飯店</h2>'+
									'</div>'
									       );
							})
					}


				function citySearch(){
					$("#hotel_pic").html("")
					$('#hotel_title').html("")
						params.city = $('#city').val();
// 					alert(params.country)
					
					$.ajax({
						url : '/Travel/voyage/city.controller',
 						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
						data :params,
					}).done(
				function(JData) {
		
// 		        console.log(c);

								$.each(JData, function(index, value) {
									console.log(value);
									$("#hotel_pic").append(
//動態生成票券選項
// ------------------------------------------------------------------------------------------------------------------------------------------------------
										'<div class="col-md-6 col-lg-3">'+
											'<div class="blog-entry">'+
												'<a href="<c:url value="/voyage/hotel/room/hotelRoom.jsp" />" class="block-20" style="background-image: url('+value.pic+');"></a>'+
												'<div class="text p-4">'+
													'<div class="meta"></div>'+
													'<h6><a href="<c:url value="/voyage/hotel/room/hotelRoom.jsp" />">'+value.hotelName+'</a></h6>'+
						                   			'<p style="margin-bottom:0">'+value.starRate+'</p>'+
													'<p class="float-left" style="margin">'+value.price+'</p>'+
												'</div>'+
											'</div>'+
										'</div>'
												);
									});
								$("#hotel_title").append(
									'<div class="col-md-7 text-center heading-section" style="padding-top:40px">'+
// 										'<h2>'+JData[0].country+'飯店</h2>'+
										'<h2>您搜尋的飯店</h2>'+
									'</div>'
									       );
							})
					}

				function allSearch(){
					$("#hotel_pic").html("")
					$('#hotel_title').html("")
						params.city = $('#city').val();
// 					alert(params.country)
					
					$.ajax({
						url : '/Travel/voyage/all.controller',
 						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
						data :params,
					}).done(
				function(JData) {
		
// 		        console.log(c);

								$.each(JData, function(index, value) {
									console.log(value);
									$("#hotel_pic").append(
//動態生成票券選項
// ------------------------------------------------------------------------------------------------------------------------------------------------------
										'<div class="col-md-6 col-lg-3">'+
											'<div class="blog-entry">'+
												'<a href="<c:url value="/voyage/hotel/room/hotelRoom.jsp" />" class="block-20" style="background-image: url('+value.pic+');"></a>'+
												'<div class="text p-4">'+
													'<div class="meta"></div>'+
													'<h6><a href="<c:url value="/voyage/hotel/room/hotelRoom.jsp" />">'+value.hotelName+'</a></h6>'+
						                   			'<p style="margin-bottom:0">'+value.starRate+'</p>'+
													'<p class="float-left" style="margin">'+value.price+'</p>'+
												'</div>'+
											'</div>'+
										'</div>'
												);
									});
								$("#hotel_title").append(
									'<div class="col-md-7 text-center heading-section" style="padding-top:40px">'+
// 										'<h2>'+JData[0].country+'飯店</h2>'+
										'<h2>您搜尋的飯店</h2>'+
									'</div>'
									       );
							})
					}

	</script>
	
	
</head>

<body>

	<!-- slider -->

	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/bg_3.jpg'/>');"
			data-stellar-background-ratio="0.5">
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
						<div class="home_search_title" style="font-family: Noto Sans TC">想住哪就選哪</div>
						<div class="home_search_content">
							<form action="#"
								class="home_search_form" id="home_search_form" method="post">
								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input" style="font-family: Noto Sans TC"
										style="width: 20%" placeholder="請輸入國家" id="country">
									<input type="text" class="search_input" style="font-family: Noto Sans TC"
										style="width: 20%" placeholder="請輸入城市" id="city">
									<input type="text" class="search_input" style="font-family: Noto Sans TC"
										style="width: 20%" id="checkin_date" placeholder="入住日期" id="checkIndate">
									<input type="text" class="search_input" style="font-family: Noto Sans TC"
										style="width: 20%" id="checkout_date" placeholder="退房日期" id="checkOutdate">
									<!-- <input type="text" class="search_input search_input_5" placeholder="人數" name=""> -->
									<input type="button" class="home_search_button" style="font-family: Noto Sans TC" value="搜尋" onclick="hotelSearch()"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- END Search -->


<section class="bg-light">
		<div class="container" >
			<div id="hotel_title" class="row justify-content-center mb-5">
<!-- 				<div class="col-md-7 text-center heading-section"> -->
<!-- 					<h2>熱門城市</h2> -->
<!-- 				</div> -->
			</div>
			<div  id ="hotel_pic" class="row">
<!-- 		------------------------------------ -->
<!-- ftco-animate -->
<!-- 				<div class="col-md-6 col-lg-3 "> -->
<!-- 					<div class="blog-entry"> -->
<!-- 						<a href="blog-single.html" class="block-20" -->
<%-- 							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/紐約市中心希爾頓酒店(New York Hilton Midtown).jpg'/>');"> --%>
<!-- 						</a> -->
<!-- 						<div class="text p-4"> -->
<!-- 							<div class="meta"></div> -->
<!-- 							<h6> -->
<!-- 								<a href="#">紐約市中心希爾頓酒店(New York Hilton Midtown)</a> -->
<!-- 							</h6> -->
<!--                    			<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p> -->
<!-- 							<p class="float-left" style="margin">NT$ 5,158</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 		------------------------------------ -->
		</div>
	</div>
</section>



	<!-- 熱門城市  -->

	<section class="bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate" style="font-family: Noto Sans TC">
					<h2>熱門城市</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="carousel1 owl-carousel ftco-owl">
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/法國.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
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
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/英國.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
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
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/西班牙.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
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
								<div class="meta"></div>
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
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/國家/瑞士.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
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
								<div class="meta"></div>
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
								<div class="meta"></div>
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
								<div class="meta"></div>
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
								<div class="meta"></div>
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
								<div class="meta"></div>
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

	<section class="bg-light">
		<div class="container">
			<div
				class="row no-gutters justify-content-center mb-5 ftco-animate" style="margin-top: -80px">
				<div class="col-md-7 text-center heading-section" style="padding-top: 40px">
					<h2>熱門飯店推薦</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="<c:url value='/voyage/hotel/room/hotelRoom.jsp' />" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/紐約市中心希爾頓酒店(New York Hilton Midtown).jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="<c:url value='/voyage/hotel/room/hotelRoom.jsp' />">紐約市中心希爾頓酒店(New York Hilton Midtown)</a>
							</h6>
                   			<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left" style="margin">NT$ 5,158</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/洛杉磯市中心菲格羅亞酒店(Hotel Figueroa Downtown Los Angeles).jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">洛杉磯市中心菲格羅亞酒店(Hotel Figueroa Downtown Los Angeles)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 5,630</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/倫敦肯辛頓千禧國際百麗酒店.jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">倫敦肯辛頓千禧國際百麗酒店(The Bailey's Hotel London)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 3,941</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/巴黎貝斯特韋斯特沃塞特歌劇酒店(Best Western Hotel Horset Opera Paris).jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">巴黎貝斯特韋斯特沃塞特歌劇酒店(Best Western Hotel Horset Opera Paris)</a>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							</h6>
							<p class="float-left">NT$ 4,732</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/香港皇悅卓越酒店.jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">香港皇悅卓越酒店(尖沙咀店)(Empire Prestige Tsim Sha Tsui)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 5,768</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/上海帝璟麗致大酒店.jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">上海帝璟麗致大酒店</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 4,348</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/曼谷塔瓦納酒店(The Tawana Bangkok).jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">曼谷塔瓦納酒店(The Tawana Bangkok)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 1,221</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/首爾皇家酒店.jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">首爾皇家酒店(Royal Hotel Seoul)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 3,297</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/新宿華盛頓酒店.jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">新宿華盛頓酒店(Shinjuku Washington Hotel)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 2,763</p>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/新加坡半島怡東酒店.jpg'/>');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">新加坡半島怡東酒店(Peninsula Excelsior Hotel Singapore)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 3,217</p>
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>

	<!-- END 熱門飯店 -->

	<!-- 住宿類型  -->

	<section class="bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center heading-section ftco-animate" style="padding-top: 40px">
					<h2>不論您想尋找哪種住宿，我們都有...</h2>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="carousel1 owl-carousel ftco-owl">
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/公寓.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">公寓</a>
								</h3>
								<div>
									<p>685,710 間公寓</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/渡假村.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">渡假村</a>
								</h3>
								<div>
									<p>20,764 個渡假村</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/木屋.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">木屋</a>
								</h3>
								<div>
									<p>11,743 間木屋</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/小屋.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">小屋</a>
								</h3>
								<div>
									<p>111,777 間小屋</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/豪華露營.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">豪華露營</a>
								</h3>
								<div>
									<p>6,920 個豪華露營地點</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/飯店式公寓.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">飯店式公寓</a>
								</h3>
								<div>
									<p>30,012 間飯店式公寓</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/度假屋.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">度假屋</a>
								</h3>
								<div>
									<p>339,001間度假屋</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/家庭旅館.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">家庭旅館</a>
								</h3>
								<div>
									<p>123,290間家庭旅館</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/hotel/hotelPic/住宿類型/青年旅館.jpg'/>');">
							</a>
							<div class="text p-4">
								<div class="meta"></div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">青年旅館</a>
								</h3>
								<div>
									<p>25,889間青年旅館</p>
								</div>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多</a>
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

	<section>
		<div class="container">
			<div class="row">
				<div class="sidebar-box ftco-animate">
					<h3>標籤</h3>
					<div class="tagcloud">
						<a href="<c:url value='#'/>" class="tag-cloud-link">公寓 <span>(685,710)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">渡假村<span>(20,685)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">Villa<span>(339,001)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">木屋<span>(11,604)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">小屋<span>(111,777)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">豪華露營<span>(6,839)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">飯店式公寓<span>(30,012)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">度假屋<span>(339,001)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">家庭旅館<span>(123,290)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">青年旅館<span>(25,889)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">汽車旅館<span>(15,624)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">B&B<span>(220,778)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">傳統日式旅館<span>(2,386)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">摩洛哥傳統民宅<span>(1,245)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">露營區<span>(65,11)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">民宿<span>(159,235)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">露營地<span>(5,519)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">鄉間別墅<span>(16,678)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">農莊<span>(11,022)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">船屋<span>(1,772)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">豪華帳篷<span>(1,973)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">自炊式住宿<span>(579,580)</span></a>
						<a href="<c:url value='#'/>" class="tag-cloud-link">獨立小屋<span>(244)</span></a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- END 標籤 -->

	<!-- 住宿類型 -->

	<!-- 	<div class="why"> -->
	<!-- 		<div class="parallax_background parallax-window" data-parallax="scroll" data-speed="0.8"></div> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="col text-center"> -->
	<!-- 					<div class="section_title"><h2>不論您想尋找哪種住宿，我們都有...</h2></div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		<div class="row why_row"> -->

	<!-- 				Why item -->
	<!-- 				<div class="col-lg-4 why_col"> -->
	<!-- 					<div class="why_item"> -->
	<!-- 						<div class="why_image"> -->
	<!-- 							<img src="./hotelPic/住宿類型/公寓.jpg" alt=""> -->
	<!-- 							<div class="d-flex flex-column align-items-center justify-content-center"></div> -->
	<!-- 						</div> -->
	<!-- 						<div class="why_content text-center"> -->
	<!-- 							<div class="why_title">公寓</div> -->
	<!-- 							<div class="why_text"> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->

	<!-- 				Why item -->
	<!-- 				<div class="col-lg-4 why_col"> -->
	<!-- 					<div class="why_item"> -->
	<!-- 						<div class="why_image"> -->
	<!-- 							<img src="./hotelPic/住宿類型/公寓.jpg" alt=""> -->
	<!-- 							<div class="d-flex flex-column align-items-center justify-content-center"> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						<div class="why_content text-center"> -->
	<!-- 							<div class="why_title">Great Team</div> -->
	<!-- 							<div class="why_text"> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->

	<!-- 				Why item -->
	<!-- 				<div class="col-lg-4 why_col"> -->
	<!-- 					<div class="why_item"> -->
	<!-- 						<div class="why_image"> -->
	<!-- 							<img src="./hotelPic/住宿類型/公寓.jpg" alt=""> -->
	<!-- 							<div class="d-flex flex-column align-items-center justify-content-center"> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 						<div class="why_content text-center"> -->
	<!-- 							<div class="why_title">Best Deals</div> -->
	<!-- 							<div class="why_text"> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->

	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

	<!-- END 住宿類型 -->


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