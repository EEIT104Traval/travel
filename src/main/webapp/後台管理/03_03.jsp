<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
// 					for(var i = 0;i<JData.length;i++){
				$.each(JData, function(index, value) {
// 					$("#searchuser").html("")
					$("#searchuser").append(
					'<table><tr id="tr'+value.ticketNo+'"><th style="width:150px">'+value.ticketName+'</th>'+
							'<th style="width:150px">'+value.country+'</th>'+
							'<th style="width:150px">'+value.ticketDescription+'</th>'+
						    '<th style="width:150px">'+value.adultTicketPrice+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSellQ+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSelledQ+'</th>'+
						    '<th style="width:50px"><input type="submit" name="prodaction" value="Delete" onclick=Delete('+value.ticketNo+')></th></tr></table>'

											)
							})
				})}	
//連結票券資訊
	    	function Delete(ticketNo){ 
				   
				$.ajax({
		            type: "GET", //傳送方式
		            url: "/Travel/bindex03_031/User.controller", 
		            dataType: "json", 
		            data: {'ticketNo':ticketNo}})
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
</body>
</html>