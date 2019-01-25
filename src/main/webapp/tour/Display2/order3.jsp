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
	margin-bottom: 20px;
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
.modal-dialog {
    max-width: 700px;
    margin: 1.75rem auto;
</style>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	var accountName = '${accountName}'
	var Data
	var dd
	function ck(e){
// 		console.log(Data)
		var sex = Data[e].sex;
		if (sex=='M'){sex='男'}else{sex='女'}
		$('#sub').html(
			'<h5 style="color:#2d7cd1">訂單聯絡人</h5>'
				+'<table class="table table-striped">'
					+'<thead>'
						+'<tr>'
							+'<th>姓名</th>'
							+'<th>信箱</th>'
							+'<th>電話</th>'
							+'<th>性別</th>'
						+'</tr>'
					+'</thead>'
					+'<tbody>'
						+'<td>'+Data[e].accountName+'</td>'
						+'<td>'+Data[e].email+'</td>'
						+'<td>'+Data[e].phone+'</td>'
						+'<td>'+sex+'</td>'
					+'</tbody>'
				+'</table>'
		)
		$.ajax({
				url : '/Travel/tour/Display2/odmeber',
				type : 'get',
				data:{'orderNo':Data[e].orderNo},
		}).done(function(d) {
					dd = d
					console.log(d)
					$('#sub2').html('');
					$('#sub3').html('');
					$.each(d, function(index, val) {
						sex = val.sex;
						if (sex=='M'){sex='男'}else{sex='女'}
						$('#sub2').append(
								'<tr id='+index+'>'
									+'<td>'+val.fullName+'</td>'
									+'<td>'+val.passport+'</td>'
									+'<td>'+sex+'</td>'
									+'<td>'+val.passenger+'</td>'
									+'<td><a onclick="update('+index+')" href="##">修改</a></td>'
								+'</tr>'
						)
					})
					$('#sub3').append('<h5 style="color:red;float:right">金額總計：'+Data[e].total+'</h5>')
		})
	}
	function update(e){
		var td1 = $('#'+e+'>td:eq(0)').text()
		var td2 = $('#'+e+'>td:eq(1)').text()
		var td3 = $('#'+e+'>td:eq(2)').text()
		$('#'+e+'>td:eq(0)').html('<input type="text" style="width:160px" value='+td1+'>')
		$('#'+e+'>td:eq(1)').html('<input type="text" style="width:160px" value='+td2+'>')
		$('#'+e+'>td:eq(2)').html('<input type="radio" id="M'+e+'" name="sex'+e+'" value="M"><label style="padding:0px 5px" for="M">男</label>')
		$('#'+e+'>td:eq(2)').append('<input type="radio" id="F'+e+'" name="sex'+e+'" value="F"><label style="padding:0px 5px" for="F">女</label>')
		if(td3=='男'){
			$('#M'+e).prop('checked',true)
		}else{
			$('#F'+e).prop('checked',true)
		}
		$('#'+e+'>td:eq(4)').html('<a onclick="submit('+e+')" href="##">確認</a></td>')
	}
	function submit(e){
		var orderNo = dd[e].orderNo
		var purchaseOrder = dd[e].purchaseOrder
		var fullName = $('#'+e+'>td:eq(0)>input').val()
		var passport = $('#'+e+'>td:eq(1)>input').val()
		var sex = 'M'
		if($('#F'+e).prop('checked')==true){
			sex = 'F'
		}
		$.ajax({
			url : '/Travel/tour/Display2/update',
			type : 'get',
			data:{'orderNo':orderNo,'purchaseOrder':purchaseOrder,'fullName':fullName,'passport':passport,'sex':sex},
		}).done(function(update) {
// 			console.log(update)
			if (update.sex=='M'){se='男'}else{se='女'}
			$('#'+e+'>td:eq(0)').html(update.fullName)
			$('#'+e+'>td:eq(1)').html(update.passport)
			$('#'+e+'>td:eq(2)').html(se)
			$('#'+e+'>td:eq(4)').html('<a onclick="update('+e+')" href="##">修改</a>')
		})
	}
		$(document).ready(function() {
				$.ajax({
						url : '/Travel/tour/Display2/acc',
// 						contentType : 'application/json; charset=UTF-8',
						type : 'get',
// 						dataType : 'json',
						data:{'accountName':accountName},
				}).done(function(JData) {
						Data = JData.TourOrderInfoBean;
						$.each(JData.TourOrderInfoBean, function(index, value) {						
// 							console.log(value);
							if(index % 4 == 0){
								var date = new Date(value.departureDate);
								var month = parseInt(date.getMonth())+1;
								var d = new Date(value.orderTime);
								var m2 = parseInt(d.getMonth())+1;
								$('#tbody').append(
				 					'<tr class="table-active">'
			 							+'<td style="text-align: left;">'+date.getFullYear()+'/'+month+'/'+date.getDate()+'</td>'
			 							+'<td colspan="2"><a target="_blank" href="<c:url value="/tour/Display2/travel.jsp?tourNo='+value.tourNo+'"/>">'+value.tourName+'</a></td>'
			 							+'<td>'+value.quantity+'</td>'
			 							+'<td style="color:red">$'+value.total+'</td>'
			 							+'<td>'+value.orderStatus+'</td>'
			 							+'<td>'+d.getFullYear()+'/'+m2+'/'+d.getDate()+'</td>'
			 							+'<td><a onclick="ck('+index+')" href="##" data-toggle="modal" data-target="#exampleModalCenter">明細</a></td>'
			 						+'</tr>'
								);
							}
							if(index % 4 == 1){
								var date = new Date(value.departureDate);
								var month = parseInt(date.getMonth())+1;
								var d = new Date(value.orderTime);
								var m2 = parseInt(d.getMonth())+1;
								$('#tbody').append(
				 					'<tr class="table-success">'
			 							+'<td style="text-align: left;">'+date.getFullYear()+'/'+month+'/'+date.getDate()+'</td>'
			 							+'<td colspan="2"><a target="_blank" href="<c:url value="/tour/Display2/travel.jsp?tourNo='+value.tourNo+'"/>">'+value.tourName+'</a></td>'
			 							+'<td>'+value.quantity+'</td>'
			 							+'<td style="color:red">$'+value.total+'</td>'
			 							+'<td>'+value.orderStatus+'</td>'
			 							+'<td>'+d.getFullYear()+'/'+m2+'/'+d.getDate()+'</td>'
			 							+'<td><a onclick="ck('+index+')" href="##" data-toggle="modal" data-target="#exampleModalCenter">明細</a></td>'
			 						+'</tr>'
								);
							}
							if(index % 4 == 2){
								var date = new Date(value.departureDate);
								var month = parseInt(date.getMonth())+1;
								var d = new Date(value.orderTime);
								var m2 = parseInt(d.getMonth())+1;
								$('#tbody').append(
				 					'<tr class="table-warning">'
			 							+'<td style="text-align: left;">'+date.getFullYear()+'/'+month+'/'+date.getDate()+'</td>'
			 							+'<td colspan="2"><a target="_blank" href="<c:url value="/tour/Display2/travel.jsp?tourNo='+value.tourNo+'"/>">'+value.tourName+'</a></td>'
			 							+'<td>'+value.quantity+'</td>'
			 							+'<td style="color:red">$'+value.total+'</td>'
			 							+'<td>'+value.orderStatus+'</td>'
			 							+'<td>'+d.getFullYear()+'/'+m2+'/'+d.getDate()+'</td>'
			 							+'<td><a onclick="ck('+index+')" href="##" data-toggle="modal" data-target="#exampleModalCenter">明細</a></td>'
			 						+'</tr>'
								);
							}
							if(index % 4 == 3){
								var date = new Date(value.departureDate);
								var month = parseInt(date.getMonth())+1;
								var d = new Date(value.orderTime);
								var m2 = parseInt(d.getMonth())+1;
								$('#tbody').append(
				 					'<tr class="table-danger">'
			 							+'<td style="text-align: left;">'+date.getFullYear()+'/'+month+'/'+date.getDate()+'</td>'
			 							+'<td colspan="2"><a target="_blank" href="<c:url value="/tour/Display2/travel.jsp?tourNo='+value.tourNo+'"/>">'+value.tourName+'</a></td>'
			 							+'<td>'+value.quantity+'</td>'
			 							+'<td style="color:red">$'+value.total+'</td>'
			 							+'<td>'+value.orderStatus+'</td>'
			 							+'<td>'+d.getFullYear()+'/'+m2+'/'+d.getDate()+'</td>'
			 							+'<td><a onclick="ck('+index+')" href="##" data-toggle="modal" data-target="#exampleModalCenter">明細</a></td>'
			 						+'</tr>'
								);
							}
						})
				})
		});
</script>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar"
		id="probootstrap-navbar">
		<div class="container">
			<img alt="" src="<c:url value='/voyage/images/TTT.png' />"
				width="250px">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#probootstrap-menu" aria-controls="probootstrap-menu"
				aria-expanded="false" aria-label="Toggle navigation">
				<span><i class="ion-navicon"></i></span>
			</button>
			<div class="collapse navbar-collapse" id="probootstrap-menu">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a
						href="<c:url value='/voyage/index.jsp'/>" class="nav-link">首頁</a></li>
					<li class="nav-item"><a
						href="<c:url value='/tour/tours.jsp'/>" class="nav-link">團體旅遊</a></li>
					<li class="nav-item"><a
						href="<c:url value='/voyage/hotel/hotels.jsp'/>" class="nav-link">飯店</a></li>
					<li class="nav-item"><a
						href="<c:url value='/flight/FlightNew.jsp'/>" class="nav-link">機票</a></li>
					<li class="nav-item"><a
						href="<c:url value='/voyage/ticket.jsp'/>" class="nav-link">門票</a></li>
					<li class="nav-item"><a
						href="<c:url value='/rate/rateindex2.jsp'/>" class="nav-link">查詢匯率</a></li>
					<li class="nav-item"><a
						href="<c:url value='/voyage/contact.html'/>" class="nav-link">聯絡我們</a></li>
					<!--             <li class="nav-item"><a href="#" class="nav-link"> -->
					<%--             	<jsp:include page="../../voyage/login.jsp"></jsp:include> --%>
					<!-- 					</a></li> -->
				</ul>
			</div>
		</div>
	</nav>

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
				
	<!-- 訂單 -->
	<section class="probootstrap_section bg-light">
		<div class="container" style="max-width: 1200px">
			<div style="border: 1px lightgrey solid; background: white; padding: 10px; text-align: center;">
				<h2>${accountName}：訂單資訊</h2>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>出發日期</th>
							<th colspan="2">商品內容</th>
							<th>人數</th>
							<th>總金額</th>
							<th>訂單狀態</th>
							<th>訂單時間</th>
							<th></th>
						</tr>
					</thead>
					<tbody id='tbody'>
					</tbody>
				</table>
			</div>
		</div>
	</section>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalCenterTitle">明細</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body" id="sub">
	      </div>
	      <div class="modal-body">
	      		<table class="table table-striped">
					<thead>
						<tr>
							<th>中文姓名</th>
							<th>護照姓名</th>
							<th>性別</th>
							<th>類型</th>
							<th></th>
						</tr>
					</thead>
					<tbody id="sub2">
					</tbody>
				</table>
	      </div>
	      <div class="modal-body" id="sub3">
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">退訂</button>
	        <button type="button" class="btn btn-primary">立即付款</button>
	      </div>
	    </div>
	  </div>
	</div>

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