<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員訂單資料</title>
<style>
.boxmsg {
	margin: auto;
	margin-bottom: 30px;
	width: 980px;
	height: auto;
	color: black;
/*    	border: 1px solid black */
}
th {
	border: 1px solid black
}
</style>

<script>
var params = {}
var accountName =  "${sessionScope.accountName}";//抓名字
var tourOrderInfoBean ;
var ticketOrderInfoBean ;
var hotelOrderDetailsBean ;

	$(document).ready(function() {
			findorder()
			console.log(accountName)	
	});
  			function findorder(){
 			$("#searchuser").html("")

 			$.ajax({
 					url : '/Travel/voyage/userorder.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:{'accountName':accountName,}
 				   }).done(
 						function(JData) {
 							if(JData.TourOrderInfoBean != null){
//  								if(JData.TourOrderInfoBean != null && JData.TourOrderInfoBean.orderStatus="已付費" ){
 								for(var i = 0 ; i<JData.TourOrderInfoBean.length ; i++){
 			 							$("#searchuser").append(		
 			 							'<table ><th style="width:80px" name="orderNo">'+ JData.TourOrderInfoBean[i].orderNo +'</th>'+
 			 							'<th style="width:80px">旅遊行程</th>'+
 			 							'<th style="width:350px" name="tourName">'+ JData.TourOrderInfoBean[i].tourName +'</th>'+
 			 							'<th style="width:50px" name="quantity">'+ JData.TourOrderInfoBean[i].quantity +'</th>'+
 			 							'<th style="width:200px" name="orderTime">'+ JData.TourOrderInfoBean[i].orderTime +'</th>'+
 			 						    '<th style="width:100px" name="total">'+ JData.TourOrderInfoBean[i].total +'</th>'+
//  			 						    '<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
 			 						    '<th style="width:100px" name="totalPrice"><img src="images/gb.png" width="40%" height="20%" "></th></table>'
 																)
 														}
 									   		  }else{$("#searchuser").append('<table ><th style="width:816px">尚無旅遊行程</th></table>')}
 			 			if(JData.TicketOrderInfoBean != null){
 								for(var i = 0;i<JData.TicketOrderInfoBean.length;i++){
 										$("#searchuser").append(		
 										'<table ><th style="width:80px" name="ticketOrderNO">'+ JData.TicketOrderInfoBean[i].ticketOrderNO +'</th>'+
 										'<th style="width:80px">門票</th>'+
 										'<th style="width:350px" name="ticketName">'+ JData.TicketOrderInfoBean[i].ticketName +'</th>'+
 								        '<th style="width:50px" name="adultTicketCount">'+ JData.TicketOrderInfoBean[i].adultTicketCount +'</th>'+
 								        '<th style="width:200px" name="orderDate">'+ JData.TicketOrderInfoBean[i].orderDate +'</th>'+
 								        '<th style="width:100px" name="totalPrice">'+ JData.TicketOrderInfoBean[i].totalPrice +'</th>'+
//  								        '<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
 								       '<th style="width:100px" name="totalPrice"><img src="images/gb.png" width="40%" height="20%"></th></table>'
 																)	
 														}
 											  }else{$("#HotelOrderDetailsBean").append('<table ><th style="width:816px">尚無門票訂單</th></table>')}				 			
 						if(JData.HotelOrderDetailsBean != null){
 								for(var i = 0;i<JData.HotelOrderDetailsBean.length;i++){
 										$("#searchuser").append(		
 										'<table ><th style="width:80px" name="orderNo">'+ JData.HotelOrderDetailsBean[i].orderNo +'</th>'+
 										'<th style="width:80px">飯店</th>'+
 										'<th style="width:350px" name="hotelName">'+ JData.HotelOrderDetailsBean[i].hotelName +'</th>'+
 								        '<th style="width:50px" name="stayNights" >'+ JData.HotelOrderDetailsBean[i].stayNights+'(天) </th>'+
 								        '<th style="width:200px" name="createDate">'+ JData.HotelOrderDetailsBean[i].createDate +'</th>'+
 								        '<th style="width:100px" name="roomPrice">'+ JData.HotelOrderDetailsBean[i].roomPrice +'</th>'+
 								        '<th style="width:100px" name="totalPrice"><input type="submit" name="prodaction" value="刪除"></th></table>'
 																)
 														}
 									 	 	  }else{$("#searchuser").append('<table ><th style="width:1000px">尚無飯店訂單</th></table>')}						
 									})
 							};		

 									
</script>

</head>
<body>

<div style="text-align: center;"><h2></h2></div>
<br>
<table>
<th style="width:80px">訂單號碼</th>
<th style="width:80px">類型</th>
<th style="width:350px">名稱</th>
<th style="width:50px">數量</th>
<th style="width:200px">購買日期</th>
<th style="width:100px">總價格</th>
<th style="width:100px">刪除</th>
</table>
<div class="row" id="searchuser"></div>
</div>
<%-- <jsp:include page="../後台管理/bindex.jsp" /> --%>

</body>
</html>