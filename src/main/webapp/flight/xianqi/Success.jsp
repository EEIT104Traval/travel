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
<%-- <link rel="stylesheet" href="<c:url value='/voyage/css/jquery.timepicker.css' />"> --%>
<link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">

<link rel="stylesheet" href="<c:url value='/voyage/css/jquery-ui.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles_sherry.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/about.css' />">

</head>
<body>
	<div style="text-align: center;margin-top: 50px;padding-bottom: 50px">
		繼續訂購<a href=" <c:url value='/voyage/hotel/hotels.jsp'/>" style="font-size: 30px;">飯店</a>或<span id="totalSecond" style="font-size:30px;padding: 5px;color: red;font-weight: 800">5</span>
		<script language="javascript" type="text/javascript">
			var second = totalSecond.innerText;
			setInterval("redirect()", 1000);
			function redirect() {
				totalSecond.innerText = --second;
				if (second < 1)
					location.href = '../../voyage/index.jsp';
			}
		</script>
		秒后将跳转回首頁!
	</div>
	<section class="bg-light" style="margin-top: 50px">
		<div class="container">
			<div class="row no-gutters justify-content-center mb-5 ftco-animate fadeInUp ftco-animated" style="margin-top: -80px">
				<div class="col-md-7 text-center heading-section" style="padding-top: 40px">
					<h2>洛杉磯熱門飯店推薦</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="/Travel/flight/xianqi/img/fushan1.jpg" class="block-20" id="hilton" style="background-image: url('/Travel/flight/xianqi/img/fushan1.jpg');"></a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="/Travel/voyage/hotel/roomTypeSearch.jsp">洛杉磯海云台温德姆华美达安可酒店</a>
							</h6>
                   			<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left" style="margin">NT$ 2,680</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/flight/xianqi/img/fushan2.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">机场酒店</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 3,630</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/flight/xianqi/img/fushan3.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">森图姆尚品酒店</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 3,941</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/flight/xianqi/img/fushan4.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">贝留酒店釜山</a>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							</h6>
							<p class="float-left">NT$ 4,732</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/voyage/hotel/hotelPic/熱門飯店/香港皇悅卓越酒店.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">洛杉磯皇悅卓越酒店(Empire Prestige Tsim Sha Tsui)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 5,768</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/voyage/hotel/hotelPic/熱門飯店/上海帝璟麗致大酒店.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">上海帝璟麗致大酒店</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 4,348</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/voyage/hotel/hotelPic/熱門飯店/曼谷塔瓦納酒店(The Tawana Bangkok).jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">曼谷塔瓦納酒店(The Tawana Bangkok)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 1,221</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/voyage/hotel/hotelPic/熱門飯店/首爾皇家酒店.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">首爾皇家酒店(Royal Hotel Seoul)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 3,297</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/voyage/hotel/hotelPic/熱門飯店/新宿華盛頓酒店.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">新宿華盛頓酒店(Shinjuku Washington Hotel)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 2,763</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate fadeInUp ftco-animated">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20" style="background-image: url('/Travel/voyage/hotel/hotelPic/熱門飯店/新加坡半島怡東酒店.jpg');">
						</a>
						<div class="text p-4">
							<div class="meta"></div>
							<h6>
								<a href="#">新加坡半島怡東酒店(Peninsula Excelsior Hotel Singapore)</a>
							</h6>
							<p style="margin-bottom:0"><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star-half-full"></span></p>
							<p class="float-left">NT$ 3,217</p>
							<p></p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
</body>
</html>