<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<!-- 	<link rel="stylesheet" href="css/main_styles.css"> -->
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
<%--     <link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />"> --%>
<%--     <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css"> --%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- --- -->
<script type="text/javascript">

var params = {};

$(document).ready(function() {
		ticketSearch1()
})
	function ticketSearch1(){

	$.ajax({
		url : '/Travel/bindex03_021/User.controller',
		contentType : 'application/json; charset=UTF-8',
		type : 'get',
		dataType : 'json',
		data :params,
		}).done(
			function(JData) {
					console.log(JData);
					$("#searchuser").html("")
					$("#searchuser").append(
					'<div style="margin:0px auto; text-align:center;"><h3>最新資料</h3></div>'+
					
					'<table><th style="width:148px">票券名稱</th>'+
						   '<th style="width:148px">票券國家</th>'+
		   				   '<th style="width:148px">票券類型</th>'+
						   '<th style="width:148px">票券價格</th>'+
						   '<th style="width:148px">進貨數量</th>'+
						   '<th style="width:148px">銷售數量</th>'+
						   '<th style="width:50px"><input type="submit" name="prodaction" value="刷新" onclick="ticketSearch1()")></th></table><br>'
					)
				$.each(JData, function(index, value) {
					$("#searchuser").append(
							'<div>'+
					'<table><tr id="tr'+value.ticketNo+'"><th style="width:150px">'+value.ticketName+'</th>'+
							'<th style="width:150px">'+value.country+'</th>'+
							'<th style="width:150px">'+value.ticketDescription+'</th>'+
						    '<th style="width:150px">'+value.adultTicketPrice+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSellQ+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSelledQ+'</th>'+
						    '<th style="width:50px"><input type="button" name="prodaction" value="Delete" data-toggle="modal" id="exampleModal'+value.ticketNo+'" onclick=Delete('+value.ticketNo+')></th></tr></table>'+
						    '</div>'+
//================================================================================================================================================					    
	    		'<div class="modal fade" id="exampleModal'+value.ticketNo+'" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">'+
				  '<div class="modal-dialog" role="document">'+
				    '<div class="modal-content">'+
				      '<div class="modal-header">'+
				        '<h5 class="modal-title" id="exampleModalLabel">注意！！</h5>'+
				        '<button type="button" id="ttop"class="close" data-dismiss="modal" aria-label="Close">'+
				          '<span aria-hidden="true">&times;</span>'+
				        '</button>'+
				      '</div>'+
				     '<div class="modal-body">'+
				        '你現在欲購買<span id="totalpiece'+value.ticketNo+'"></span>'+
				      '</div>'+
				      '<div class="modal-footer">'+
				        '<button type="button" class="btn btn-primary" id="button1'+value.ticketNo+'" onClick="ck('+value.ticketNo+')">確定購入</button>'+
				      '</div>'+
				    '</div>'+
				  '</div>'+
				'</div>'		
					);
					})
					})};	
//連結票券資訊
	    	function Delete(ticketNo){ 
// 	    		alert(ticketNo);
// 	    		'<div class="modal fade" id="exampleModal'+ticketNo+'" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">'+
// 				  '<div class="modal-dialog" role="document">'+
// 				    '<div class="modal-content">'+
// 				      '<div class="modal-header">'+
// 				        '<h5 class="modal-title" id="exampleModalLabel">注意！！</h5>'+
// 				        '<button type="button" id="ttop"class="close" data-dismiss="modal" aria-label="Close">'+
// 				          '<span aria-hidden="true">&times;</span>'+
// 				        '</button>'+
// 				      '</div>'+
// 				     '<div class="modal-body">'+
// 				        '你現在欲購買<span id="totalpiece'+ticketNo+'"></span>'+
// 				      '</div>'+
// 				      '<div class="modal-footer">'+
// 				        '<button type="button" class="btn btn-primary" id="button1'+ticketNo+'" onClick="ck('+ticketNo+')">確定購入</button>'+
// 				      '</div>'+
// 				    '</div>'+
// 				  '</div>'+
// 				'</div>'	
	    		
// 				$.ajax({
// 		            type: "GET", //傳送方式
// 		            url: "/Travel/bindex03_031/User.controller", 
// 		            dataType: "json", 
// 		            data: {'ticketNo':ticketNo}})
		            }				 
//------------------------------------------------------------------------------------------------------------------------------------------------------
									
// -----------------------------------------------------------------------------------------------------------------------------------------------------

</script>
<title>後台管理者介面</title>
</head>
<body>
	<jsp:include page="bindex.jsp" />

	<div class="boxmsg" id="searchuser">
<!-- 	----------------------加東西--------------------- -->	
	</div>
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