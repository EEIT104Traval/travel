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
										<label for="roundtrip"> <input type="radio"
											id="roundtrip" name="flight-type"> <span></span>Roundtrip
										</label> <label for="one-way"> <input type="radio"
											id="one-way" name="flight-type"> <span></span>One way
										</label> <label for="multi-city"> <input type="radio"
											id="multi-city" name="flight-type"> <span></span>Multi-City
										</label>
									</div>
								</div>

							</div>
							<div class="home_search_content">
								<form action="#" class="home_search_form" id="home_search_form">
									<div
										class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
										<input type="text" class="search_input search_input_1"
											placeholder="City" required="required"> <input
											type="text" class="search_input search_input_2"
											placeholder="Departure" required="required"> <input
											type="text" class="search_input search_input_3"
											placeholder="Arrival" required="required"> <input
											type="text" class="search_input search_input_4"
											placeholder="Budget" required="required">
										<button class="home_search_button">search</button>
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
</body>
</html>

