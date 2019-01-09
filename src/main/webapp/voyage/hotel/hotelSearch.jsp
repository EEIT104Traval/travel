<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.hotel.HotelBean"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="tw-zh">
<!-- <link rel="stylesheet" href="css/main_styles.css"> -->
<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles.css' />">

<head>
<meta charset="UTF-8">
<title>飯店搜尋</title>
</head>
<body>

<%
	Object objname = session.getAttribute("hotelList");
	List<HotelBean> hotelList = (List<HotelBean>)objname;
	if(objname!=null){
		objname.toString();
		System.out.println(hotelList);
		}
	System.out.println("123123123123123123123123123123123123123123123123123123123");
	%>

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
							<a href="blog-single.html" class="block-20" style="background-image: url('<c:url value='/voyage/hotelPic/熱門城市/巴黎.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
									<div>
										<a href="<c:url value='#'/>">法國</a>
									</div>
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">巴黎</a>
								</h3>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">更多Read more</a>
									<a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="100">
							<a href="blog-single.html" class="block-20" style="background-image: url('<c:url value='/voyage/images/image_6.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
									<div>
										<a href="<c:url value='#'/>">July 7, 2018</a>
									</div>
									<div>
										<a href="<c:url value='#'/>">Admin</a>
									</div>
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">Read more</a> <a href="<c:url value='#'/>" class="float-right meta-chat"><span class="icon-chat"></span>3</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="<c:url value='blog-single.html'/>" class="block-20"
								style="background-image: url('<c:url value='/voyage/images/image_7.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
									<div>
										<a href="<c:url value='#'/>">July 7, 2018</a>
									</div>
									<div>
										<a href="<c:url value='#'/>">Admin</a>
									</div>
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">Read more</a> <a href="<c:url value='#'/>"
										class="float-right meta-chat"><span class="icon-chat"></span>
										3</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20"
								style="background-image: url('<c:url value='/voyage/images/image_8.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
									<div>
										<a href="<c:url value='#'/>">July 7, 2018</a>
									</div>
									<div>
										<a href="<c:url value='#'/>">Admin</a>
									</div>
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">Read more</a> <a href="<c:url value='#'/>"
										class="float-right meta-chat"><span class="icon-chat"></span>
										3</a>
								</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="blog-entry" data-aos-delay="200">
							<a href="blog-single.html" class="block-20" style="background-image: url('<c:url value='/voyage/hotelPic/熱門城市/巴黎.jpg'/>');"> </a>
							<div class="text p-4">
								<div class="meta">
									<div>
										<a href="<c:url value='#'/>">July 7, 2018</a>
									</div>
									<div>
										<a href="<c:url value='#'/>">Admin</a>
									</div>
								</div>
								<h3 class="heading">
									<a href="<c:url value='#'/>">Even the all-powerful Pointing has no control about the blind texts</a>
								</h3>
								<p class="clearfix">
									<a href="<c:url value='#'/>" class="float-left">Read more</a> <a href="<c:url value='#'/>"
										class="float-right meta-chat"><span class="icon-chat"></span>3</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>





	<section class="ftco-section">
		<div class="container-fluid">
			<div class="row no-gutters justify-content-center mb-5 pb-5 ftco-animate">
				<div class="col-md-7 text-center heading-section" style="margin-top: 100px">
					<h2>熱門飯店推薦</h2>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/新加坡半島怡東酒店.jpg'/>');">
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
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/新宿華盛頓酒店.jpg'/>');">
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
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/首爾皇家酒店.jpg'/>');">
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
					<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/曼谷塔瓦納酒店(The Tawana Bangkok).jpg'/>');">
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
						style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/上海帝璟麗致大酒店.jpg'/>');">
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
						style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/香港皇悅卓越酒店.jpg'/>');">
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
						style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/巴黎貝斯特韋斯特沃塞特歌劇酒店(Best Western Hotel Horset Opera Paris).jpg'/>');">
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
						style="background-image: url('<c:url value='/voyage/hotel/hotelPic/熱門飯店/倫敦肯辛頓千禧國際百麗酒店.jpg'/>');">
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







	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5"
								style="background-image: url('<c:url value='/voyage/images/hotel-1.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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

						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5"
								style="background-image: url('<c:url value='/voyage/images/hotel-2.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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
						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5"
								style="background-image: url('<c:url value='/voyage/images/hotel-3.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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
						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5" style="background-image: url('<c:url value='/voyage/images/hotel-4.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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
						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5"
								style="background-image: url('<c:url value='/voyage/images/hotel-5.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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
						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5"
								style="background-image: url('<c:url value='/voyage/images/hotel-6.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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
						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5"
								style="background-image: url('<c:url value='/voyage/images/hotel-7.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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
						<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
							<a href="<c:url value='#'/>" class="block-5"
								style="background-image: url('<c:url value='/voyage/images/hotel-8.jpg'/>');">
								<div class="text">
									<span class="price">$29/night</span>
									<h3 class="heading">Luxe Hotel</h3>
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
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="<c:url value='#'/>">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="<c:url value='#'/>">2</a></li>
									<li><a href="<c:url value='#'/>">3</a></li>
									<li><a href="<c:url value='#'/>">4</a></li>
									<li><a href="<c:url value='#'/>">5</a></li>
									<li><a href="<c:url value='#'/>">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- END -->

								<div class="col-lg-4 sidebar">
									<div class="sidebar-box ftco-animate">
										<div class="search-tours bg-light p-4">
											<h3>快速訂房</h3>
											<form action="" method="post">
												<div class="fields">
													<div class="row flex-column">

														 <div class="textfield-search col-sm-12 group mb-3"><input type="text" class="form-control" placeholder="請輸入飯店名稱"></div>

														<div class="select-wrap col-sm-12 group mb-3">
															<div class="icon">
																<span class="ion-ios-arrow-down"></span>
															</div>
															<select name="" id="" class="form-control">
																<option value="">你要去哪裡？</option>
																<option value="">東北亞</option>
																<option value="">港澳大陸</option>
																<option value="">東南亞</option>
																<option value="">中南亞</option>
																<option value="">大洋洲</option>
																<option value="">美加</option>
																<option value="">歐洲</option>
																<option value="">非洲</option>
															</select>
														</div>

														<div class="check-in col-sm-12 group mb-3">
															<input type="text" id="checkin_date" class="form-control" placeholder="入住日期">
														</div>

														<div class="check-out col-sm-12 group mb-3">
															<input type="text" id="checkout_date" class="form-control" placeholder="退房日期">
														</div>
														<div class="select-wrap col-sm-12 group mb-3">
															<div class="icon">
																<span class="ion-ios-arrow-down"></span>
<!-- 															</div> -->
<!-- 															<select name="" id="" class="form-control"> -->
<!-- 																<option value="">成人</option> -->
<!-- 																<option value="">1</option> -->
<!-- 																<option value="">2</option> -->
<!-- 																<option value="">3</option> -->
<!-- 																<option value="">4+</option> -->
<!-- 															</select> -->
<!-- 														</div> -->

<!-- 														<div class="select-wrap col-sm-12 group mb-3"> -->
<!-- 															<div class="icon"> -->
<!-- 																<span class="ion-ios-arrow-down"></span> -->
<!-- 															</div> -->
<!-- 															<select name="" id="" class="form-control"> -->
<!-- 																<option value="">兒童</option> -->
<!-- 																<option value="">1</option> -->
<!-- 																<option value="">2</option> -->
<!-- 																<option value="">3</option> -->
<!-- 																<option value="">4+</option> -->
<!-- 															</select> -->
														</div>
														<div class="col-sm-12 group mb-3">
															<input type="submit" class="search-submit btn btn-primary"
																value="搜尋">
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>

									<div class="sidebar-box ftco-animate">
										<div class="categories">
											<h3>旅遊地區</h3>
											<li><a href="<c:url value='#'/>">英國</a></li>
											<li><a href="<c:url value='#'/>">德國</a></li>
											<li><a href="<c:url value='#'/>">東歐</a></li>
											<li><a href="<c:url value='#'/>">南歐</a></li>
											<li><a href="<c:url value='#'/>">義大利</a></li>
											<li><a href="<c:url value='#'/>">希臘</a></li>
											<li><a href="<c:url value='#'/>">北歐</a></li>
										</div>
									</div>

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

				<div class="sidebar-box ftco-animate">
					<!--               <h3>Paragraph</h3> -->
					<!--               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p> -->
				</div>
			</div>
		</div>
		</div>
	</section>

<%-- 	<jsp:include page="/voyage/footer.jsp" /> --%>
	<jsp:include page="../foo.jsp"/>

</body>
</html>