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
		url : '/Travel/bindex03_031/User.controller',
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
					'<table><th style="width:170px">票券名稱</th><th style="width:170px">票券國家</th>'+
					'<th style="width:170px">票券類型</th><th style="width:170px">票券價格</th>'+
					'<th style="width:170px">庫存張數</th><th style="width:50px"></tr></table>'
					)
					for(var i = 0;i<JData.length;i++){

					$("#searchuser").append(
					'<table><tr id=""><th style="width:170px">'+JData[i].ticketName+'</th>'+
							'<th style="width:170px">'+JData[i].country+'</th>'+
							'<th style="width:170px">'+JData[i].ticketDescription+'</th>'+
						    '<th style="width:170px">'+JData[i].adultTicketPrice+'</th>'+
						    '<th style="width:170px">'+(JData[i].adultTicketSellQ-JData[i].adultTicketSelledQ)+'</th>'+
						    '<th style="width:50px"><input type="submit" name="prodaction" value="Update" onclick="'+ticketchange(JData[i].ticketName)+'"></tr></table>'

											)}})}
											
	
//連結票券資訊
	    	function ticketchange(ticketName){

//------------------------------------------------------------------------------------------------------------------------------------------------------

									}
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