<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" -->
<!-- 	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" -->
<!-- 	crossorigin="anonymous"></script> -->
<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles.css' />">
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
    <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css">
<head>
<meta charset="UTF-8">
<title>會員訂單資料</title>
<style>
/* .boxmsg { */
/* 	margin: auto; */
/* 	margin-bottom: 30px; */
/* 	width: 980px; */
/* 	height: auto; */
/* 	color: black; */
/* 	/*    	border: 1px solid black */ */
/* } */

 th {
/*  text-align:center; */


 } 
</style>

<script>
	var params = {}
	var accountName = "${sessionScope.accountName}";//抓名字
	var tourOrderInfoBean;
	var ticketOrderInfoBean;
	var hotelOrderDetailsBean;
	var ticketOrderNO;

	$(document).ready(function() {
		findorder()
		console.log(accountName)
	});
	
	function deleteOrder(ticketOrderNO){
		var r=confirm("確定刪除!!!");
// 	 	if(r==true){
// 		alert("確定價格")
// 	}else{
// 		alert("取消確認")
// 	}
		console.log("ticketOrderNO="+ticketOrderNO)
		$.ajax({
					url : '/Travel/voyage/deleteorder.controller',
					contentType : 'application/json; charset=UTF-8',
					type : 'get',
					dataType : 'json',
					data : {
						'ticketOrderNO' : ticketOrderNO,
					},
					success: function(json) {
            			alert("刪除!!");
             			console.log(json);
            			location.reload();

            		},
            		error: function(json) {
            			if(r==true){
            			alert("刪除成功");
            			location.reload();
            			}else{
            				alert("取消刪除")
            			}
             			console.log(json);
//             			location.reload();

            		},
				});
	};
	
	function findorder() {
		$("#searchuser").html("")

		$
				.ajax({
					url : '/Travel/voyage/userorder.controller',
					contentType : 'application/json; charset=UTF-8',
					type : 'get',
					dataType : 'json',
					data : {
						'accountName' : accountName,
					}
				})
				.done(
						function(JData) {
							if (JData.TourOrderInfoBean != null) {
								//if(JData.TourOrderInfoBean != null && JData.TourOrderInfoBean.orderStatus="已付費" ){
								for (var i = 0; i < JData.TourOrderInfoBean.length; i++) {
									$("#searchuser")
											.append(
													'<table class="table table-hover"><th scope="row" style="width:10%;text-align:center" name="orderNo">'
															+ JData.TourOrderInfoBean[i].orderNo
															+ '</th>'
															+ '<th scope="row">旅遊行程</th>'
															+ '<th scope="row" style="width:42%;text-align:center" name="tourName">'
															+ JData.TourOrderInfoBean[i].tourName
															+ '</th>'
															+ '<th scope="row" style="width:5%" name="quantity">'
															+ JData.TourOrderInfoBean[i].quantity
															+ '</th>'
															+ '<th scope="row" style="width:15%" name="orderTime">'
															+ JData.TourOrderInfoBean[i].orderTime
															+ '</th>'
															+ '<th scope="row" style="width:10%" name="total">'
															+ JData.TourOrderInfoBean[i].total
															+ '</th>'
															+
															//'<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
															'<th scope="row" style="width:10%" name="totalPrice"><input type="image" src="images/gb.png" width="20%" height="20%" alt="send" name="Test" id="Test" onclick="deleteOrder();" /></th></table>')
								}
							} else {
								$("#searchuser")
										.append(
												'<table ><hr></table>')
							}
							if (JData.TicketOrderInfoBean != null) {
								for (var i = 0; i < JData.TicketOrderInfoBean.length; i++) {
									$("#searchuser")
											.append(
													'<table class="table table-hover"><th scope="row" style="width:10%;text-align:center" name="ticketOrderNO">'
															+ JData.TicketOrderInfoBean[i].ticketOrderNO
															+ '</th>'
															+ '<th scope="row">門票</th>'
															+ '<th scope="row" style="width:25%; name="ticketName">'
															+ JData.TicketOrderInfoBean[i].ticketName
															+ '</th>'
															+ '<th scope="row" style="width:5%" name="adultTicketCount">'
															+ JData.TicketOrderInfoBean[i].adultTicketCount
															+ '</th>'
															+ '<th scope="row" style="width:15%" name="orderDate">'
															+ JData.TicketOrderInfoBean[i].orderDate
															+ '</th>'
															+ '<th scope="row" style="width:10%" name="totalPrice">'
															+ JData.TicketOrderInfoBean[i].totalPrice
															+ '</th>'
															+
															//'<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
															'<th scope="row" style="width:10%" name="totalPrice"><input type="image" src="images/gb.png" width="20%" height="20%" alt="send" name="Test" id="Test" onclick="deleteOrder(\''+JData.TicketOrderInfoBean[i].ticketOrderNO+'\');" /></th></table>')
								}
							} else {
								$("#HotelOrderDetailsBean")
										.append('<table ><hr></table>')
// 												'<table class="table table-hover"><th scope="row">尚無門票訂單</th></table>')
							}
							
							if (JData.FlightOrderInfoBean != null) {
								for (var i = 0; i < JData.FlightOrderInfoBean.length; i++) {
									$("#searchuser")
											.append(
													'<table class="table table-hover"><th scope="row" style="width:10%;text-align:center" name="flightOrderNO">'
															+ JData.FlightOrderInfoBean[i].flightOrderNO
															+ '</th>'
															+ '<th scope="row">飛機票</th>'
															+ '<th scope="row" style="text-align:left;width:25%">桃園-釜山 往返</th>'
															+ '<th scope="row" style="width:5%" name="adultCount">'
															+ JData.FlightOrderInfoBean[i].adultCount
															+ '</th>'
															+ '<th scope="row" style="width:15%" name="dealDate">'
															+ JData.FlightOrderInfoBean[i].dealDate
															+ '</th>'
															+ '<th scope="row" style="width:10%" name="totalAmount">'
															+ JData.FlightOrderInfoBean[i].totalAmount
															+ '</th>'
															+
															//'<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
															'<th scope="row" style="width:10%" name="totalPrice"><input type="image" src="images/gb.png" width="20%" height="20%" alt="send" name="Test" id="Test" onclick="deleteOrder(\''+JData.FlightOrderInfoBean[i].flightOrderNO+'\');" /></th></table>')
								}
							} else {
								$("#HotelOrderDetailsBean")
										.append('<table ><hr></table>')
// 												'<table class="table table-hover"><th scope="row">尚無機票訂單</th></table>')
							}
							if (JData.HotelOrderDetailsBean != null) {
								for (var i = 0; i < JData.HotelOrderDetailsBean.length; i++) {
									$("#searchuser")
											.append(
													'<table class="table table-hover"><th scope="row" style="width:10%;text-align:center" name="orderNo">'
															+ JData.HotelOrderDetailsBean[i].orderNo
															+ '</th>'
															+ '<th scope="row">飯店</th>'
															+ '<th scope="row" style="width:25%; name="hotelName">'
															+ JData.HotelOrderDetailsBean[i].hotelName
															+ '</th>'
															+ '<th scope="row" style="width:5%" name="stayNights" >'
															+ JData.HotelOrderDetailsBean[i].stayNights
															+ '(天) </th>'
															+ '<th scope="row" style="width:15%" name="createDate">'
															+ JData.HotelOrderDetailsBean[i].createDate
															+ '</th>'
															+ '<th scope="row" style="width:10%" name="roomPrice">'
															+ JData.HotelOrderDetailsBean[i].roomPrice
															+ '</th>'
															+
															//'<th style="width:0px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
															'<th scope="row" style="width:10%" name="totalPrice"><input type="image" src="images/gb.png" width="20%" height="20%" alt="send" name="Test" id="Test" onclick="deleteOrder('+JData.HotelOrderDetailsBean[i].orderNo+');" /></th></table>')
								}
							} else {
								$("#searchuser")
										.append('<table ><hr></table>')
// 												'<table ><th scope="row">尚無飯店訂單</th></table>')
							}
						})
	};
</script>

</head>
<body>
	<jsp:include page="/voyage/nav.jsp" />	
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/home_slider.jpg'/>')"
			data-stellar-background-ratio="0.5">
			<div class="overlay">
				<div class="container"></div>
			</div>
		</div>
	</section>
	
	
		
		<div class="container-fluid" >
			<div class="row">
				<div class="col-md-12">
					<div class="row" style=" margin: 150px 200px 100px 200px">
						<div class="col-md-12">

							<div style="text-align: center;">
								<h2></h2>
							</div>
							<br>
							<table class="table table-hover" style="margin-top:-150px">
								<thead>
									<th scope="col" style="width:10%">訂單號碼</th>
									<th scope="col">類型</th>
									<th scope="col" style="width:25%">名稱</th>
									<th scope="col" style="width:5%">數量</th>
									<th scope="col" style="width:15%">購買日期</th>
									<th scope="col" style="width:10%">總價格</th>
									<th scope="col" style="width:10%">刪除</th>
								</thead>
							</table>
							<div class="row" id="searchuser"></div>

						</div>
					</div>
				</div>
			</div>
		</div>
	




	</div>
	
	<jsp:include page="/voyage/foo.jsp" />
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
</body>
</html>