<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Travello</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travello template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>
<body>

	<!-- Home -->
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="home">

		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">

				<!-- Slide -->
				<div class="owl-item" style="opacity: 1">
					<div class="background_image"
						style="background-image: url(images/home_slider.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title">
											<h2>Let us take you away</h2>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 				Slide -->
				<!-- 				<div class="owl-item"> -->
				<!-- 					<div class="background_image" -->
				<!-- 						style="background-image: url(images/home_slider.jpg)"></div> -->
				<!-- 					<div class="home_slider_content_container"> -->
				<!-- 						<div class="container"> -->
				<!-- 							<div class="row"> -->
				<!-- 								<div class="col"> -->
				<!-- 									<div class="home_slider_content"> -->
				<!-- 										<div class="home_title"> -->
				<!-- 											<h2>Let us take you away</h2> -->
				<!-- 										</div> -->
				<!-- 									</div> -->
				<!-- 								</div> -->
				<!-- 							</div> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->

				<!-- 				Slide -->
				<!-- 				<div class="owl-item"> -->
				<!-- 					<div class="background_image" -->
				<!-- 						style="background-image: url(images/home_slider.jpg)"></div> -->
				<!-- 					<div class="home_slider_content_container"> -->
				<!-- 						<div class="container"> -->
				<!-- 							<div class="row"> -->
				<!-- 								<div class="col"> -->
				<!-- 									<div class="home_slider_content"> -->
				<!-- 										<div class="home_title"> -->
				<!-- 											<h2>Let us take you away</h2> -->
				<!-- 										</div> -->
				<!-- 									</div> -->
				<!-- 								</div> -->
				<!-- 							</div> -->
				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->

			</div>
		</div>

		<!-- Search -->

		<div class="home_search">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_search_container">
							<div class="home_search_title">
								<div class="form-group">
									<div class="form-checkbox">


										<div class="radio-beauty-container">
											<label style="display: inline-block;"> <input
												type="radio" name="flystyle" id="flystyle1" hidden
												style="display: inline-block;" checked="checked" /> <label
												for="goandback" class="radio-beauty"
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
							<div class="home_search_content" style="padding-bottom: 0px">
								<form action="#" class="home_search_form" id="home_search_form">
									<div
										class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
										<div>
											<span class="form-label">出發地</span> <input type="text"
												class="search_input search_input_1" style="width: 450px"
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
									<div
										class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
										<div>
											<span class="form-label">出發日期</span>
											<button type="date" class="search_input search_input_1"
												style="width: 180px; padding-right: 20px"
												required="required">
												<span style="text-align: left; padding-right: 140px">yyyy/MM/dd</span>
											</button>
										</div>
										<div>
											<span class="form-label">回程日期</span>
											<button type="date" class="search_input search_input_1"
												style="width: 180px; padding-right: 20px"
												required="required">
												<span style="text-align: left; padding-right: 140px">yyyy/MM/dd</span>
											</button>
										</div>
										<div>
											<span class="form-label">旅客類型</span>
											<button class="search_input search_input_1"
												style="width: 180px; padding-right: 20px">
												<span style="text-align: left;">1位成人</span>
											</button>
										</div>
										<!-- 										<div> -->
										<!-- 											<span class="form-label">艙等</span> -->
										<!-- 											<button class="search_input search_input_1" -->
										<!-- 												style="width: 130px"></button> -->
										<!-- 										</div> -->
										<div>
											<span class="form-label">艙等</span> <select
												class="search_input search_input_1"
												id="search-controls-cabin-class-dropdown"
												name="search-controls-cabin-class-dropdown"style="width: 180px;">
												<option value="Economy" selected="selected">經濟艙</option>
												<option value="PremiumEconomy">高端經濟艙</option>
												<option value="First">頭等艙</option>
												<option value="Business">商務艙</option>
											</select>
										</div>
										<button class="home_search_button" style="margin-top: 28px;">搜尋航班</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Intro -->

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
	</div>


	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="plugins/parallax-js-master/parallax.min.js"></script>
	<script src="js/custom.js"></script>

	<%-- 	<jsp:include page="footer.jsp"></jsp:include> --%>
</body>
</html>

