<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
 					url : '/Travel/voyage/userorder.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:params,
 				   }).done(function(JData) {
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
						}
</script>

</head>
<body>
<div class="boxmsg" id="searchuser">
<!-- <label class="title">輸入會員編號</label>	 -->
<!-- <input type="text" id="user"size="40" placeholder="請輸入會員資訊" maxlength="10"> -->
<!-- <input type="button" id='membersh' onclick="fundmember()" value="搜尋"> -->
<div style="text-align: center;"><h2></h2></div>
							<br>
							<table ><th style="width:80px">類型</th><th style="width:350px">名稱</th>
							<th style="width:50px">數量</th><th style="width:200px">購買日期</th><th style="width:100px">總價格</th></table>
							<br>
</div>
<%-- <jsp:include page="../後台管理/bindex.jsp" /> --%>

</body>
</html>