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
<title>國外訂房</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

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

<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />
<link rel="stylesheet" href="css/templatemo-style.css">

<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" -->
<!-- 	crossorigin="anonymous"> -->

<!-- icon -->
<link rel="stylesheet"
 href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
 crossorigin="anonymous">
 
<style>
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+TC&subset=chinese-traditional');

 body {
        font-family: 'Noto Sans TC', sans-serif;
      }
</style>

	
</head>

<body style="background:white">
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
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input" style="font-family: Noto Sans TC; width: 15%" placeholder="請輸入國家" id="country">
									<input type="text" class="search_input" style="font-family: Noto Sans TC; width: 15%" placeholder="請輸入城市" id="city">
									<input type="text" class="search_input" style="font-family: Noto Sans TC; width: 15%" id="checkin_date" placeholder="入住日期" >
									<input type="text" class="search_input" style="font-family: Noto Sans TC; width: 15%" id="checkout_date" placeholder="退房日期">
									<input type="text" class="search_input" style="font-family: Noto Sans TC; width: 15%" id="accommodate" placeholder="人數">
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

	<div style="margin:170px 50px 50px 50px; background:white">

	<!-- 飯店名稱 -->
	<div >
	
	<div style="padding:0px 0px 8px 8px">
		<h6 style="color: black; font-size:20px">${hotelBean.hotelNameCH} (${hotelBean.hotelNameEN}) ${hotelBean.starRate}</h6>
		<p style="color: black"><i class="fas fa-map-marker-alt"></i>${hotelBean.address}</p>
	</div>
	
	<!-- END 飯店名稱 -->
	
	<!-- PHOTO MAP -->
	
	<div style="border:1px solid lightgrey">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-6">
							<img alt="Bootstrap Image Preview" src="https://dimg04.c-ctrip.com/images/fd/hotel/g2/M05/31/12/Cghzf1VNFfCAID8bAAqxINPZe2w423_R_800_525_R5_D.jpg" style="width: 632px;"/>
						</div>
						<div class="col-md-6">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.975565831148!2d-73.98197408540148!3d40.76256214245917!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258f9ad303595%3A0x3270a54be206ffce!2zMTMzNSA2dGggQXZlLCBOZXcgWW9yaywgTlkgMTAwMTnnvo7lnIs!5e0!3m2!1szh-TW!2stw!4v1547195360406"
								width="565px" height="415px" frameborder="0" style="border: 0; padding-left 40px" allowfullscreen>
							</iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	</div>
	<!-- END PHOTO MAP -->

	<!-- SEARCH BAR -->
	<div style="margin-top:10px; font-size:25px; color:#424242">房型價格</div>
	<div style="margin-top:10px">
		<div>
			<div class="home_search_content" style="background:#e3edff">
				<form action="#" class="home_search_form" id="" method="post">
					<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
						<input type="text" class="search_input" style="font-family: Noto Sans TC; background:white; width: 25%" placeholder="入住日期" >
						<input type="text" class="search_input" style="font-family: Noto Sans TC; background:white; width: 25%" placeholder="退房日期">
						<input type="text" class="search_input" style="font-family: Noto Sans TC; background:white; width: 25%" placeholder="人數">
						<input type="button" class="home_search_button" style="font-family: Noto Sans TC" value="搜尋"/>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- END SEARCH BAR -->
	
<!-- 	<div style="margin-top:10px"> -->
<!-- 		<table> -->
<!--   			<tr> -->
<!--     			<th>2019-02-04 (週一) - 2019-02-05 (週二)</th> -->
<!--     			<th>一晚</th> -->
<!--     			<th>2 人</th> -->
<!--  			 </tr> -->
<!-- 		</table> -->
<!-- 	</div> -->
	
	<!-- 	ROOM	 -->
	
	




	
	<div style="border-top: 5px solid #e3edff; margin: 10px 0px 10px 0px" id="roomTypecontainer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
				<img style="width: 390px" alt="Bootstrap Image Preview"
					src="https://dimg04.c-ctrip.com/images/fd/hotel/g2/M05/31/12/Cghzf1VNFfCAID8bAAqxINPZe2w423_R_800_525_R5_D.jpg" />
				</div>
				<div class="col-md-4" style="margin: 10px 0px 10px 0px">
					<h4 style="font-size:20px">天際線客房（1 張睡床）</h4>
					<p style="font-size:16px">從高樓層客房盡情飽覽著名鬧市美景。一張大床。 2 人入住。</p>
					<p style="font-size:16px">紐約市的迷人景致盡收眼底，同時在客房內收看 55 吋高清電視，讓自己徹底放鬆；在大型辦公桌前趕上工作進度；並且使用 WiFi 無線上網與外界保持連線。</p>
				</div>
				<div class="col-md-4 col-sm-7">
					<p style="font-size:40px">每晚最低</p>
					<p style="font-size:40px">NT$ 4,000</p>
					<button type="button" class="btn btn-light" id="1">查看空房</button>
				</div>
			</div>
		</div>
	</div>
	
	
	

	
	<!-- 	END ROOM	 -->
			
			
			
			
			
		</div>
	</div>



	<!-- load JS files -->


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
<%-- 	<script src="<c:url value='/voyage/js/jquery.animateNumber.min.js' />"></script> --%>
	<script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script>
<%-- 	<script src="<c:url value='/voyage/js/jquery.timepicker.min.js' />"></script> --%>
	<script src="<c:url value='/voyage/js/main.js' />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script>
		$(document).ready(function(){
			console.log("hotelno="+'${hotelBean.hotelNo}')
			$.ajax({
				url:"/Travel/voyage/hotel/roomTypes/all",
				data: {"hotelNo":'${hotelBean.hotelNo}'},
				dataType:"json",
			}).done(function(data){
				console.log(data)
				$.each(data,function(idx,val){
					var data = '<div class="container-fluid"><div class="row">';
					data+='<div class="col-md-12"><div class="row">';
					data+='<div class="col-md-6"><img alt="Bootstrap Image Preview" src="'+val.pic+'" style="width: 350px;"/></div>';
					data+= '<div class="col-md-6"><h4>'+val.roomType+'</h4 style="font-size:20px"><p>'+val.description+'</p>';
					data+='<p>'+val.content+'</p><a href="#" class="tm-recommended-price-box">'
					data+='<p class="tm-recommended-price">NT$ '+val.price+'</p><button type="button" class="btn btn-light" id="1">查看空房</button>'			
					data+='</a></div></div></div></div></div>';	
					$("#roomTypecontainer").append(data);
				})

			})
		})
	</script>

</body>
</html>