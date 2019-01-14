<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/main.css" rel="stylesheet" type="text/css" />
	<jsp:include page="bindex.jsp" />
	
<title>後台管理者介面</title>
<script>
var number
var user
var params = {}
var tourOrderInfoBean ;
var ticketOrderInfoBean ;
var hotelOrderDetailsBean ;


	$(document).ready(function() {
// 		$('#select1').change(function() {
// 			params.number = $('#select1').val()
// 			alert(params.number)
// 		})
	});
  			function fundmember(){
 			params.user = $('#user').val();
//  			alert(params.user)
			$("#searchuser").html("")

 			$.ajax({
 					url : '/Travel//bindex01_02/User.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:params,
 				   }).done(function(JData) {
							$("#searchuser").append(
							'<div style="text-align: center;"><h2>'+JData[0].accountName +'</h2></div>'+
							'<br>'+
							'<table ><th style="width:80px">類型</th><th style="width:350px">名稱</th>'+
							'<th style="width:50px">數量</th><th style="width:200px">購買日期</th><th style="width:100px">總價格</th></table>'+
							'<br>'		       );
										  
	console.log(JData);
		if(JData[0].tourOrderInfoBean.length != 0){
					$.each(JData, function(index, value) {	
// 	console.log(value);
// 	console.log(value.ticketOrderInfoBean.length)
						for(var i = 0;i<value.tourOrderInfoBean.length;i++){
 							$("#searchuser").append(		
 							'<table ><th style="width:80px">旅遊行程</th>'+
 									'<th style="width:350px">'+ value.tourOrderInfoBean[i].serialNo +'</th>'+
 							        '<th style="width:50px">'+ value.tourOrderInfoBean[i].quantity +'</th>'+
 							        '<th style="width:200px">'+ value.tourOrderInfoBean[i].orderTime +'</th>'+
 							        '<th style="width:100px">'+ value.tourOrderInfoBean[i].total +'</th></table>'								
													)
											}})
							 	  }	

			if(JData[0].ticketOrderInfoBean.length != 0){
				$.each(JData, function(index, value) {	
					for(var i = 0;i<value.ticketOrderInfoBean.length;i++){
							$("#searchuser").append(		
							'<table ><th style="width:80px">門票</th>'+
									'<th style="width:350px">'+ value.ticketOrderInfoBean[i].ticketNo +'</th>'+
							        '<th style="width:50px">'+ value.ticketOrderInfoBean[i].adultTicketCount +'</th>'+
							        '<th style="width:200px">'+ value.ticketOrderInfoBean[i].orderDate +'</th>'+
							        '<th style="width:100px">'+ value.ticketOrderInfoBean[i].totalPrice +'</th></table>'								
													)	
											}})
								  }					 			
			if(JData[0].hotelOrderDetailsBean.length != 0){
				$.each(JData, function(index, value) {	
					for(var i = 0;i<value.hotelOrderDetailsBean.length;i++){
							$("#searchuser").append(		
							'<table ><th style="width:80px">飯店</th>'+
									'<th style="width:350px">'+ value.hotelOrderDetailsBean[i].hotelName +'</th>'+
							        '<th style="width:50px">'+ value.hotelOrderDetailsBean[i].stayNights+'(天) </th>'+
							        '<th style="width:200px">'+ value.hotelOrderDetailsBean[i].createDate +'</th>'+
							        '<th style="width:100px">'+ value.hotelOrderDetailsBean[i].roomPrice +'</th></table>'								
														)
											}})
						 	 	 }						
						})
				};		
</script>
</head>
<body>
	<div class="boxmsg">
	  	    <br>
            <br>
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　會員訂單查詢　　　　　　　　　　　　　　　　　　　　　　　
            <br>
            <br>
            <br>
<!--  --><label class="title">輸入會員編號</label>
		
            <input type="text" id="user"size="40" placeholder="請輸入會員資訊" maxlength="10">
 			<input type="button" id='membersh' onclick="fundmember()" value="搜尋">　　　　　　　　
	</div>
	<div class="boxmsg" id="searchuser">
<!-- 	----------------------加東西--------------------- -->
	 <label class="title">查詢結果</label>
		
	</div>
</body>
</html>