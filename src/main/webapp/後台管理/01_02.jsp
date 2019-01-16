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
 							'<div style="text-align: center;"><h2>'+params.user +'</h2></div>'+
							'<br>'+
							'<table ><th style="width:80px">類型</th><th style="width:350px">名稱</th>'+
							'<th style="width:50px">數量</th><th style="width:200px">購買日期</th><th style="width:100px">總價格</th></table>'+
							'<br>'		       );
			
							console.log("-------------------------------------");
							console.log(JData);
		    if(JData.TourOrderInfoBean != null){
					for(var i = 0 ; i<JData.TourOrderInfoBean.length ; i++){
 							$("#searchuser").append(		
 							'<table ><th style="width:80px">旅遊行程</th>'+
 							'<th style="width:350px">'+ JData.TourOrderInfoBean[i].tourName +'</th>'+
 							'<th style="width:50px">'+ JData.TourOrderInfoBean[i].quantity +'</th>'+
 							'<th style="width:200px">'+ JData.TourOrderInfoBean[i].orderTime +'</th>'+
 						    '<th style="width:100px">'+ JData.TourOrderInfoBean[i].total +'</th></table>'								
													)
											}
						   		  }else{$("#searchuser").append('<table ><th style="width:816px">尚無旅遊行程</th></table>')}
 			if(JData.TicketOrderInfoBean != null){
					for(var i = 0;i<JData.TicketOrderInfoBean.length;i++){
							$("#searchuser").append(		
							'<table ><th style="width:80px">門票</th>'+
							'<th style="width:350px">'+ JData.TicketOrderInfoBean[i].ticketName +'</th>'+
					        '<th style="width:50px">'+ JData.TicketOrderInfoBean[i].adultTicketCount +'</th>'+
					        '<th style="width:200px">'+ JData.TicketOrderInfoBean[i].orderDate +'</th>'+
					        '<th style="width:100px">'+ JData.TicketOrderInfoBean[i].totalPrice +'</th></table>'								
													)	
											}
								  }else{$("#HotelOrderDetailsBean").append('<table ><th style="width:816px">尚無門票訂單</th></table>')}				 			
			if(JData.HotelOrderDetailsBean != null){
					for(var i = 0;i<JData.HotelOrderDetailsBean.length;i++){
							$("#searchuser").append(		
							'<table ><th style="width:80px">飯店</th>'+
							'<th style="width:350px">'+ JData.HotelOrderDetailsBean[i].hotelName +'</th>'+
					        '<th style="width:50px">'+ JData.HotelOrderDetailsBean[i].stayNights+'(天) </th>'+
					        '<th style="width:200px">'+ JData.HotelOrderDetailsBean[i].createDate +'</th>'+
					        '<th style="width:100px">'+ JData.HotelOrderDetailsBean[i].roomPrice +'</th></table>'								
													)
											}
						 	 	  }else{$("#searchuser").append('<table ><th style="width:816px">尚無飯店訂單</th></table>')}						
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