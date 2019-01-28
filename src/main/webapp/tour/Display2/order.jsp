<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Places &mdash; Free HTML5 Bootstrap 4 Theme by
	ProBootstrap.com</title>
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<!-- 	<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css"> -->
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/select2.css">
<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">
<!-- icon -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<style>
h2 {
	color: #2d7cd1;
}

.scroll {
	display: block;
	background-color: #ECECEC;
	width: 900px;
	height: 250px;
	overflow: auto;
}

.count {
	color: red;
	margin-top: 40px;
	margin-bottom: 20px;
	text-align: right;
}

.form-control {
	margin: 15px;
	display: inline;
	width: 70%;
	padding: .375rem .75rem;
	font-size: 1rem;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.sex {
	padding: 20px 20px 20px 0px;
}

.navbar-dark .navbar-nav .nav-link {
	color: rgba(255, 255, 255);
}

.buttonbuy {
	padding: 10px;
	margin-bottom:20px;
	text-align: center;
	border-radius: 10px;
	background: red;
	color: white;
	width: 200px;
	height: 60px;
	font-size: 24px;
	font-weight: bolder;
	float: right;
}

.exclamation {
	border: 2px solid #fbb949;
	padding: 5px;
	padding-left: 15px;
	margin-top: 10px;
}
</style>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	var week = new Array("日", "一", "二", "三", "四", "五", "六")
	var date = new Date('${result.tour.departureDate}');
	var week1 = week[date.getDay()]
	var date2 = date.setDate(date.getDate() + parseInt('${tourDays}'));
	var week2 = new Date(date2);
	week2 = week2.setDate(week2.getDate() - 1);
	week2 = new Date(week2)
	week2 = week[week2.getDay()]
	$(document).ready(
			function() {
				date2 = new Date(date2)
				date = '${result.tour.departureDate}';
				if ('${result}') {
					$('#title').html('${tourName}');
					$('#tourDays').html(
							date.substring(0, 10) + "星期(" + week1 + ")～"
									+ date2.toISOString().substring(0, 10)
									+ "星期(" + week2 + ")");
					$('#gotour').html('您選擇的出發日為' + date.substring(0, 10))
					$('#price_adult').html('${result.tour.price_adult}')
					$('#price_child').html('${result.tour.price_child}')
					if ('${result.tour.price_baby}') {
						$('#price_baby').html('${result.tour.price_baby}')
					} else {
						$('#price_baby_null').html("")
					}
				}
				if($('#agree').prop('checked')==true){
					$('#buybot').css('background','red');
					$('#buybot').attr('href','#modal-container-853884');
				}else{
					$('#buybot').css('background','grey');
					$('#buybot').attr('href','');
				}
			});

	function add(e) {
		var i = parseInt($('#' + e).val()) + 1
		$('#' + e).val(i)
		money();
	}
	function minus(e) {
		var i = $('#' + e).val() - 1
		if (i >= 0) {
			$('#' + e).val(i)
			money();
		}
	}
	function money() {
		$('#collapseOne').html('')
		var adultcount = $("#adult").val();
		var childcount = $("#child").val();
		var babycount = $("#baby").val();
		if (babycount == null) {
			babycount = ""
		}
		var money = 0 ;
		money = parseInt($("#price_adult").text()) * adultcount + parseInt($("#price_child").text()) * childcount;
		if (babycount != 0) {
			money = parseInt($("#price_adult").text())*adultcount + parseInt($("#price_child").text()) * childcount + parseInt($("#price_baby").text())*babycount;
		}
// 		console.log(money);
		$('#money_hidden').val(money);
		var total = 0;
		var peopleCount = "";
		if (adultcount != 0) {
			peopleCount += adultcount + "位成人　";
			total += parseInt(adultcount);
		}
		if (childcount != 0) {
			peopleCount += childcount + "位小孩　";
			total += parseInt(childcount);
		}
		if (babycount != 0) {
			peopleCount += babycount + "位嬰兒　";
			total += parseInt(babycount);
		}
		$('#peoplecount').html(peopleCount);
		if (peopleCount.length == 0) {
			$('#peoplecount').html('請選擇您要預訂的人數')
		}
		for (i = 0; i < total; i++) {
			var customer = '<div class="panel-body">'
					+ '<div style="border-top: 1px solid lightgray; margin: 10px 0px;">'
					+ '<div class="row">'
					+ '<div class="col-md-6 col-xs-12">'
					+ '<label>中文姓名</label> <input type="text" name="cname" class="form-control" />'
					+ '</div>' + '<div class="col-md-6 col-xs-12">';
			if (adultcount != 0) {
				customer += '<label class="sex" style="color:#2d7cd1">旅客' + (i+1)
						+ '(成人)</label><input type="hidden" id='+i+' name="price" value="${result.tour.price_adult}">'
						+ '<input type="hidden" name="passenger" value="成人">';
				adultcount = adultcount - 1;
			} else if (childcount != 0) {
				customer += '<label class="sex" style="color:#2d7cd1">旅客' + (i+1)
						+ '(小孩)</label><input type="hidden" id='+i+' name="price" value="${result.tour.price_child}">'
						+ '<input type="hidden" name="passenger" value="小孩">';
				childcount = childcount - 1;
			} else {
				customer += '<label class="sex" style="color:#2d7cd1">旅客' + (i+1)
						+ '(嬰兒)</label><input type="hidden" id='+i+' name="price" value="${result.tour.price_baby}">'
						+ '<input type="hidden" name="passenger" value="嬰兒">';
			}

			customer += '</div>'
					+ '</div>'
					+ '<div class="row">'
					+ '<div class="col-md-6 col-xs-12">'
					+ '<label for="exampleInputPassword1"> 護照姓名 </label>'
					+ '<input type="text" class="form-control" name="pname" />'
					+ '</div>'
					+ '<div class="col-md-6 col-xs-12">'
					+ '<label for="exampleInputPassword1" class="sex"> 性別 </label>'
					+ '<input type="radio" id="man'+i+'" name="sex'+i+'" value="M" style="margin:0px 10px;"/><label for="man'+i+'">男</label>'
					+ '<input type="radio" id="woman'+i+'" name="sex'+i+'" value="F" style="margin:0px 10px;"/><label for="woman'+i+'">女</label>'
					+ '</div>' + '</div>' + '</div>' 
					+ '</div>'
			$('#collapseOne').append(customer)
		}
	}
	function put(){
		if($('#same').prop('checked')==true){
			$('#fullName').val('${user}');
			$('#userPhone').val('${result.user.phone}');
			$('#userMail').val('${result.user.email}');
			if('${result.user.sex}'=='F'){
				$('#man').prop('checked',true);
			}else{
				$('#woman').prop('checked',true);
			}
		}else{
			$('#fullName').val('');
			$('#userPhone').val('');
			$('#userMail').val('');
			$('#man').prop('checked',false);
			$('#woman').prop('checked',false);
		}
	}
	function agree(){
		if($('#agree').prop('checked')==true){
			$('#buybot').css('background','red');
			$('#buybot').attr('href','#modal-container-853884');
		}else{
			$('#buybot').css('background','grey');
			$('#buybot').attr('href','');
		}
	}
	function buy(){
		var s = '男';
		if($('#man').prop('checked')==false){
			s = '女';
		}
		$('#sub').html(
			'<h5 style="color:#2d7cd1">訂單聯絡人</h5>'
			+'<div>姓名：'+$('#fullName').val()+'</div>'
			+'<div>信箱：'+$('#userMail').val()+'</div>'
			+'<div>電話：'+$('#userPhone').val()+'</div>'
			+'<div>性別：'+s+'</div>'
			+'<h5 style="color:red;float:right">金額總計：'+$('#money_hidden').val()+'</h5>'
		)
	}
</script>

<body>
    <jsp:include page="nav.jsp"/>
<!-- 	<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" -->
<!-- 		id="probootstrap-navbar"> -->
<!-- 		<div class="container"> -->
<%-- 			<img alt="" src="<c:url value='/voyage/images/TTT.png' />" width="250px"> --%>
<!-- 			<button class="navbar-toggler" type="button" data-toggle="collapse" -->
<!-- 				data-target="#probootstrap-menu" aria-controls="probootstrap-menu" -->
<!-- 				aria-expanded="false" aria-label="Toggle navigation"> -->
<!-- 				<span><i class="ion-navicon"></i></span> -->
<!-- 			</button> -->
<!-- 			<div class="collapse navbar-collapse" id="probootstrap-menu"> -->
<!-- 				<ul class="navbar-nav ml-auto"> -->
<!-- 					<li class="nav-item"><a -->
<%-- 						href="<c:url value='/voyage/index.jsp'/>" class="nav-link">首頁</a></li> --%>
<!-- 					<li class="nav-item"><a -->
<%-- 						href="<c:url value='/tour/tours.jsp'/>" class="nav-link">團體旅遊</a></li> --%>
<!-- 					<li class="nav-item"><a -->
<%-- 						href="<c:url value='/voyage/hotel/hotels.jsp'/>" class="nav-link">飯店</a></li> --%>
<!-- 					<li class="nav-item"><a -->
<%-- 						href="<c:url value='/flight/FlightNew.jsp'/>" class="nav-link">機票</a></li> --%>
<!-- 					<li class="nav-item"><a -->
<%-- 						href="<c:url value='/voyage/ticket.jsp'/>" class="nav-link">門票</a></li> --%>
<!-- 					<li class="nav-item"><a -->
<%-- 						href="<c:url value='/rate/rateindex2.jsp'/>" class="nav-link">查詢匯率</a></li> --%>
<!-- 					<li class="nav-item"><a -->
<%-- 						href="<c:url value='/voyage/contact.html'/>" class="nav-link">聯絡我們</a></li> --%>
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</nav> -->

	<!-- 標頭 -->
	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('<c:url value='/voyage/images/bg_2.jpg'/>');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center text-center">
				<div class="col-md">
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">Travel
						With Us</h2>
					<p class="lead mb-5 probootstrap-animate">
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->
	
	<!--  行程 -->
	<section class="probootstrap_section bg-light">
		<div class="container" style="max-width: 1400px">
			<div
				style="border: 1px lightgrey solid; background: white; padding: 10px;">
				<div class="row">
					<div
						class="col-md-3 probootstrap-animate fadeInUp probootstrap-animated">
						<h2 style="padding: 10px;">我的行程</h2>
					</div>
					<div
						class="col-md-8 probootstrap-animate fadeInUp probootstrap-animated">
						<h4 id="title" style="padding-top: 20px;">魅力歐洲～『Hello
							UK』英倫時尚7天(超值版)</h4>
						<label id="tourDays" style="padding: 20px 0px;">2019-01-26(星期六)
							~ 2019-02-04(星期一)</label> <label style="background: antiquewhite;">※
							已含每人500萬旅行業責任保險及20萬意外醫療險(依規定未滿15歲或70歲以上者,限投保旅遊責任險2佰萬元)。</label>
					</div>
				</div>
			</div>
		</div>
	</section>
<form action="<c:url value='/tour/Display2/order'/>" method="get">
	<!-- 訂單 -->
	<section class="probootstrap_section bg-light">
		<div class="container" style="max-width: 1400px">
			<div
				style="border: 1px lightgrey solid; background: white; padding: 10px;">
				<div class="row">
					<div
						class="col-md-3 probootstrap-animate fadeInUp probootstrap-animated">
						<h2 style="padding: 10px;">訂單聯絡人</h2>
						<input type="hidden" name="serialNo" value="${result.tour.serialNo}">
						<input type="hidden" name="accountName" value="${accountName}">
					</div>
					<div class="col-md-8 probootstrap-animate fadeInUp probootstrap-animated">
						<h5 style="padding-top: 20px; float: left; margin-right: 20px">請填寫訂單聯絡人資訊</h5>
						<input onclick="put()" id="same" type="checkbox"> 
						<label for="same" style="padding-top: 20px;">同聯絡人資訊</label>
<!-- 						<form role="form"> -->
							<div class="row">
								<div class="col-md-5 col-xs-12">
									<label>姓名</label> 
									<input id="fullName" name="fullName" type="text" class="form-control" />
								</div>
								<div class="col-md-5 col-xs-12">
									<label> 電話 </label> 
									<input id="userPhone" name="userPhone" type="text" class="form-control" />
								</div>
							</div>
							<div class="row">
								<div class="col-md-5 col-xs-12">
									<label> 信箱 </label> 
									<input	id="userMail" name="userMail" type="text" class="form-control" />
								</div>
								<div class="col-md-5 col-xs-12">
									<label for="exampleInputPassword1" class="sex"> 性別 </label> 
									<input type="radio" id="man" name="userSex" style="margin: 0px 10px;" value="M"/><label for="man">男</label> 
									<input type="radio" id="woman" name="userSex" style="margin: 0px 10px;" value="F" /><label for="woman">女</label>
								</div>
							</div>
<!-- 						</form> -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 報名 -->
	<section class="probootstrap_section bg-light" id="section-contact">
		<div class="container" style="max-width: 1400px">
			<div
				style="border: 1px lightgrey solid; background: white; padding: 10px;">
				<div class="row">
					<div
						class="col-md-3 probootstrap-animate fadeInUp probootstrap-animated">
						<h2 style="padding: 10px">選擇報名人數</h2>
					</div>
					<div
						class="col-md-8 probootstrap-animate fadeInUp probootstrap-animated">
						<h5 id="gotour" style="padding-top: 20px">您選擇的出發日為 2019-02-01</h5>
						<br />
						<div class="cart-select-number-area">
							<div class="row">
								<div class="col-md-4 col-xs-12">
									<div style="display: inline-block;">
										<div
											style="float: left; font-size: 20px; padding-right: 10px; font-weight: 600;">成人</div>
										<div id="price_adult"
											style="float: left; font-size: 20px; color: red; padding-right: 3px;">$41,900</div>
										<div style="padding: 5px">/人</div>
										<div>
											<div class="">
												<input type="image" src="images/MIN.png" width="11%" onclick="minus('adult');return false;"> 
												<input type="text" value="0" id="adult" disabled='disabled' readonly style="text-align: center; height: 30px; width: 60px; margin: 0; border: 0px; background: white; font-size: 20px">
												<input type="image" src="images/PL.png" width="11%" onclick="add('adult');return false;">
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4 col-xs-12">
									<div>
										<div
											style="float: left; font-size: 20px; padding-right: 10px; font-weight: 600;">小孩</div>
										<div id="price_child"
											style="float: left; font-size: 20px; color: red; padding-right: 3px;">$41,900</div>
										<div style="padding: 5px">/人</div>
										<div>
											<div
												class="d-flex flex-lg-row flex-column align-items-start justify-content-start">
												<input type="image" src="images/MIN.png" width="11%" onclick="minus('child');return false;"> 
												<input type="text" value="0" id="child" disabled='disabled' readonly style="text-align: center; height: 30px; width: 60px; margin: 0; border: 0px; background: white; font-size: 20px">
												<input type="image" src="images/PL.png" width="11%" onclick="add('child');return false;">
											</div>
										</div>
									</div>
								</div>
								<div id="price_baby_null" class="col-md-4 col-xs-12">
									<div style="display: inline-block;">
										<div
											style="float: left; font-size: 20px; padding-right: 10px; font-weight: 600;">嬰兒</div>
										<div id="price_baby"
											style="float: left; font-size: 20px; color: red; padding-right: 3px;">$2,900</div>
										<div style="padding: 5px">/人</div>
										<div>
											<div class="d-flex flex-lg-row flex-column align-items-start justify-content-start">
												<input type="image" src="images/MIN.png" width="11%" onclick="minus('baby');return false;"> 
												<input type="text" value="0" id="baby" disabled='disabled' readonly style="text-align: center; height: 30px; width: 60px; margin: 0; border: 0px; background: white; font-size: 20px">
												<input type="image" src="images/PL.png" width="11%" onclick="add('baby');return false;">
											</div>
										</div>
									</div>
								</div>
								<div id="peoplecount" class="col-md-12 col-xs-12 count">請選擇您要預訂的人數</div>
								<div class="editor-area scroll" style="margin-bottom: 20px;">
									<ol style="padding: 10px 10px 10px 40px">
										<li>小孩係指２歲至未滿１２歲之孩童（以團體回程當日為準），小孩須有成人同行。</li>
										<li>嬰兒係指未滿2歲之孩童（以團體回程當日為準），不佔機位及車位，須有成人同行。</li>
										<li>若一名成人與一名孩童同行時，因使用房間之權益及安全理由，孩童一律以"小孩佔床"價報名。</li>
										<li>本團最終出發之總人數，本公司保留最後之決定權。</li>
										<li>因團費以二人一室估算，若一人報名參加團體有可能需補單人房差價。</li>
										<li>三人房：3個床位。飯店多以雙人房加行軍床或沙發床方式提供3名佔床者同住一房。商品若無提供3人房價格，則表示該飯店無提供加床服務。</li>
										<li>因房間安排因素，小孩不佔床人數不可超過成人及佔床人數。</li>
										<li>中東 . 南亞 . 非州團，每房限一名不佔床小孩。</li>
										<li>歐洲團小孩必須佔床或加床，每房限一名加床。</li>
										<li>本行程所載之護照、簽證等相關規定，對象均為持中華民國護照之旅客；若您擁有雙重國籍或持他國護照，請先自行查明相關規定，並務必於報名時，明白告知您的客服人員。</li>
									</ol>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
		<!-- 按鈕延伸 -->
	<div class="modal fade" id="modal-container-853884" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel">再次確認</h5>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" id="sub">...</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">確認</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
	

	<!-- 資訊 -->
	<section class="probootstrap_section bg-light">
		<div class="container" style="max-width: 1400px">
			<div
				style="border: 1px lightgrey solid; background: white; padding: 10px;">
				<div class="row">
					<div
						class="col-md-3 probootstrap-animate fadeInUp probootstrap-animated">
						<h2 style="padding: 10px;">填寫資料</h2>
					</div>
					<div
						class="col-md-8 probootstrap-animate fadeInUp probootstrap-animated">
						<label class="exclamation"><i class="fas fa-exclamation"></i>
							你選擇的出發日即將截止報名，為確保您順利成行，建議先填寫所有旅客資料</label>
						<div class="panel-group why-choose-group" id="accordion">

							<div class="panel panel-default">
								<div class="panel-heading">
									<span class="panel-title">若您希望儘快完成報名，建議您提前填寫 <a
										data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne" class="title"> 旅客資料 <i
											class="fas fa-angle-down"></i></a>
									</span>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
<!-- 									<div class="panel-body"> -->
<!-- 										<form role="form"> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</form>

	<!-- 同意按鈕 -->
	<section class="probootstrap_section bg-light" id="section-contact">
		<div class="container" style="max-width: 1400px">
			<div>
			<div style="float:right;">
				<input type="checkbox" onclick="agree()" id="agree" style="margin: 0px 10px;" />
				<label for="agree">我已閱讀並同意訂購須知及旅遊契約書(請點選並詳細閱讀)</label>
			</div>
			<h3 style="color:transparent;">空</h3>
			<div>
			<div href="" data-toggle="modal"
				style="border: 1px solid white; background: gray;" class="buttonbuy" id="buybot" onclick="buy()">立即訂購</div>
			</div>
			</div>
		</div>
	</section>

	<input type="hidden" id="money_hidden" value="">

	<section class="probootstrap_section">
		<div class="container">
			<div class="row probootstrap-animate">
				<div class="col-md-12">
					<div class="owl-carousel js-owl-carousel"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->



	<footer class="probootstrap_section probootstrap-border-top">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">Home</a></li>
						<li><a href="https://free-template.co" target="_blank">About</a></li>
						<li><a href="https://free-template.co" target="_blank">Services</a></li>
						<li><a href="https://free-template.co" target="_blank">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">Home</a></li>
						<li><a href="https://free-template.co" target="_blank">About</a></li>
						<li><a href="https://free-template.co" target="_blank">Services</a></li>
						<li><a href="https://free-template.co" target="_blank">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">Home</a></li>
						<li><a href="https://free-template.co" target="_blank">About</a></li>
						<li><a href="https://free-template.co" target="_blank">Services</a></li>
						<li><a href="https://free-template.co" target="_blank">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
					<ul class="list-unstyled">
						<li><a href="https://free-template.co" target="_blank">Home</a></li>
						<li><a href="https://free-template.co" target="_blank">About</a></li>
						<li><a href="https://free-template.co" target="_blank">Services</a></li>
						<li><a href="https://free-template.co" target="_blank">Contact</a></li>
					</ul>
				</div>
			</div>
			<div class="row pt-5">
				<div class="col-md-12 text-center">
					<p class="probootstrap_font-14">
						&copy; 2017. All Rights Reserved. <br> Designed &amp;
						Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap</a><small>
							(Don't remove credit link on this footer. See <a
							href="https://probootstrap.com/license/">license</a>)
						</small>
					</p>
					<p class="probootstrap_font-14">
						Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
					</p>
				</div>
			</div>
		</div>
	</footer>


	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/select2.min.js"></script>
	<script src="assets/js/main.js"></script>

	<script src="<c:url value='/voyage/js/jquery-migrate-3.0.1.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.stellar.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.magnific-popup.min.js' />"></script>
	<script src="<c:url value='/voyage/js/aos.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.animateNumber.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.timepicker.min.js' />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<%--     <jsp:include page="../../voyage/foo.jsp"></jsp:include> --%>
</body>
</html>