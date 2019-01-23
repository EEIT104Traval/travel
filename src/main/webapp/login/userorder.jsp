<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" -->
<!-- 	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" -->
<!-- 	crossorigin="anonymous"></script> -->
<!DOCTYPE html>
<html>
<!-- <link rel="stylesheet" href="css/main_styles.css"> -->
<%-- 	<link rel="stylesheet" href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/owl.carousel.min.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/owl.theme.default.min.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/magnific-popup.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/ionicons.min.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/bootstrap-datepicker.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/jquery.timepicker.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />"> --%>
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />"> --%>
<link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">
<%--     <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css"> --%>
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

	$(document).ready(function() {
		findorder()
		console.log(accountName)
	});
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
								//  								if(JData.TourOrderInfoBean != null && JData.TourOrderInfoBean.orderStatus="已付費" ){
								for (var i = 0; i < JData.TourOrderInfoBean.length; i++) {
									$("#searchuser")
											.append(
													'<table class="table table-hover"><th scope="row" style="width:10%;text-align:center" name="orderNo">'
															+ JData.TourOrderInfoBean[i].orderNo
															+ '</th>'
															+ '<th scope="row">旅遊行程</th>'
															+ '<th scope="row" style="width:40%;text-align:center" name="tourName">'
															+ JData.TourOrderInfoBean[i].tourName
															+ '</th>'
															+ '<th scope="row" name="quantity">'
															+ JData.TourOrderInfoBean[i].quantity
															+ '</th>'
															+ '<th scope="row"name="orderTime">'
															+ JData.TourOrderInfoBean[i].orderTime
															+ '</th>'
															+ '<th scope="row" name="total">'
															+ JData.TourOrderInfoBean[i].total
															+ '</th>'
															+
															//  			 						    '<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
															'<th scope="row" name="totalPrice"><img src="images/gb.png" width="20%" height="20%"></th></table>')
								}
							} else {
								$("#searchuser")
										.append(
												'<table ><th>尚無旅遊行程</th></table>')
							}
							if (JData.TicketOrderInfoBean != null) {
								for (var i = 0; i < JData.TicketOrderInfoBean.length; i++) {
									$("#searchuser")
											.append(
													'<table class="table table-hover"><th scope="row" name="ticketOrderNO">'
															+ JData.TicketOrderInfoBean[i].ticketOrderNO
															+ '</th>'
															+ '<th>門票</th>'
															+ '<th name="ticketName">'
															+ JData.TicketOrderInfoBean[i].ticketName
															+ '</th>'
															+ '<th name="adultTicketCount">'
															+ JData.TicketOrderInfoBean[i].adultTicketCount
															+ '</th>'
															+ '<th name="orderDate">'
															+ JData.TicketOrderInfoBean[i].orderDate
															+ '</th>'
															+ '<th name="totalPrice">'
															+ JData.TicketOrderInfoBean[i].totalPrice
															+ '</th>'
															+
															//  								        '<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
															'<th name="totalPrice"><img src="images/gb.png" width="20%" height="20%"></th></table>')
								}
							} else {
								$("#HotelOrderDetailsBean")
										.append(
												'<table class="table table-hover"><th scope="row">尚無門票訂單</th></table>')
							}
							if (JData.HotelOrderDetailsBean != null) {
								for (var i = 0; i < JData.HotelOrderDetailsBean.length; i++) {
									$("#searchuser")
											.append(
													'<table class="table table-hover"><th scope="row" name="orderNo">'
															+ JData.HotelOrderDetailsBean[i].orderNo
															+ '</th>'
															+ '<th>飯店</th>'
															+ '<th name="hotelName">'
															+ JData.HotelOrderDetailsBean[i].hotelName
															+ '</th>'
															+ '<th name="stayNights" >'
															+ JData.HotelOrderDetailsBean[i].stayNights
															+ '(天) </th>'
															+ '<th name="createDate">'
															+ JData.HotelOrderDetailsBean[i].createDate
															+ '</th>'
															+ '<th name="roomPrice">'
															+ JData.HotelOrderDetailsBean[i].roomPrice
															+ '</th>'
															+
															//  								        '<th style="width:0px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
															'<th name="totalPrice"><img src="images/gb.png" width="20%" height="20%"></th></table>')
								}
							} else {
								$("#searchuser")
										.append(
												'<table ><th scope="row">尚無飯店訂單</th></table>')
							}
						})
	};
</script>

</head>
<body>
	<jsp:include page="/voyage/nav.jsp" />

		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row" style=" margin: 150px 200px 100px 200px">
						<div class="col-md-12">

							<div style="text-align: center;">
								<h2></h2>
							</div>
							<br>
							<table class="table table-hover">
								<thead>
									<th scope="col" style="width:10%">訂單號碼</th>
									<th scope="col">類型</th>
									<th scope="col">名稱</th>
									<th scope="col">數量</th>
									<th scope="col">購買日期</th>
									<th scope="col">總價格</th>
									<th scope="col">刪除</th>
								</thead>
							</table>
							<div class="row" id="searchuser"></div>

						</div>
					</div>
				</div>
			</div>
		</div>





	</div>
	<%-- <jsp:include page="../後台管理/bindex.jsp" /> --%>
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