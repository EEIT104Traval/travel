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
					$("#searchuser").append(
					'<div style="margin:0px auto; text-align:center;"><h3>最新資料</h3></div>'+
					
					'<table><th style="width:148px">票券名稱</th>'+
						   '<th style="width:148px">票券國家</th>'+
		   				   '<th style="width:148px">票券類型</th>'+
						   '<th style="width:148px">票券價格</th>'+
						   '<th style="width:148px">進貨數量</th>'+
						   '<th style="width:148px">銷售數量</th>'+
						   '<th style="width:50px"><th style="width:50px"></th></table><br>'
					)

				$.each(JData, function(index, value) {
// 					$("#searchuser").html("")
					$("#searchuser").append(
					'<table><tr id="tr'+value.ticketNo+'"><th style="width:150px">'+value.ticketName+'</th>'+
							'<th style="width:150px">'+value.country+'</th>'+
							'<th style="width:150px">'+value.ticketDescription+'</th>'+
						    '<th style="width:150px">'+value.adultTicketPrice+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSellQ+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSelledQ+'</th>'+
						    '<th style="width:50px"><input type="submit" name="prodaction" value="Update" onclick=ticketchange('+value.ticketNo+')></th>'+
						    '<th style="width:50px"><input type="submit" name="prodaction" value="Check" onclick=check('+value.ticketNo+')></th></tr></table>'

											)
							})
				})}	
//連結票券資訊
	    	function ticketchange(ticketNo){ 
				
	    		var ticketName=$("#tr"+ticketNo+">th:nth-child(1)").text()
				var country=$("#tr"+ticketNo+">th:nth-child(2)").text()
				var ticketDescription=$("#tr"+ticketNo+">th:nth-child(3)").text()
				var adultTicketPrice=$("#tr"+ticketNo+">th:nth-child(4)").text()
				var adultTicketSellQ=$("#tr"+ticketNo+">th:nth-child(5)").text()
				var adultTicketSelledQ=$("#tr"+ticketNo+">th:nth-child(6)").text()
				
				$("#tr"+ticketNo+">th:nth-child(1)").prop("outerHTML","<th>"+"<input type='text' style='width:100%' id='ticketName' value='"+ticketName+"' />"+"</th>");
				$("#tr"+ticketNo+">th:nth-child(2)").prop("outerHTML","<th>"+"<input type='text' style='width:101%' id='country' value='"+country+"' />"+"</th>");
				$("#tr"+ticketNo+">th:nth-child(3)").prop("outerHTML","<th>"+"<input type='text' style='width:101%' id='ticketDescription' value='"+ticketDescription+"' />"+"</th>");
				$("#tr"+ticketNo+">th:nth-child(4)").prop("outerHTML","<th>"+"<input type='text' style='width:101%' id='adultTicketPrice' value='"+adultTicketPrice+"' />"+"</th>");
				$("#tr"+ticketNo+">th:nth-child(5)").prop("outerHTML","<th>"+"<input type='text' style='width:101%' id='adultTicketSellQ' value='"+adultTicketSellQ+"' />"+"</th>");
				$("#tr"+ticketNo+">th:nth-child(6)").prop("outerHTML","<th>"+"<input type='text' style='width:101%' id='adultTicketSelledQ' value='"+adultTicketSelledQ+"' />"+"</th>");	
					
}
	    	function check(ticketNo){ 
	    		var ticketName=$("#ticketName").val()
				var country=$("#country").val()
				var ticketDescription=$("#ticketDescription").val()
				var adultTicketPrice=$("#adultTicketPrice").val()
				var adultTicketSellQ=$("#adultTicketSellQ").val()
				var adultTicketSelledQ=$("#adultTicketSelledQ").val()
				console.log('ticketName'+ticketName)
				$.ajax({
		            type: "GET", //傳送方式
		            url: "/Travel/bindex03_022/User.controller", 
		            dataType: "json", 
		            data: {'ticketNo':ticketNo,'ticketName':ticketName,'country':country,'ticketDescription':ticketDescription,'adultTicketPrice':adultTicketPrice,'adultTicketSellQ':adultTicketSellQ,'adultTicketSelledQ':adultTicketSelledQ
		            },
		            done: function(data) {
		 				console.log(data);
		            }
	       		 });
				$("#tr"+ticketNo+">th:nth-child(1)").prop("outerHTML","<th style='width:150px'>"+ticketName+"</th>");
				$("#tr"+ticketNo+">th:nth-child(2)").prop("outerHTML","<th style='width:150px'>"+country+"</th>");
				$("#tr"+ticketNo+">th:nth-child(3)").prop("outerHTML","<th style='width:150px'>"+ticketDescription+"</th>");
				$("#tr"+ticketNo+">th:nth-child(4)").prop("outerHTML","<th style='width:150px'>"+adultTicketPrice+"</th>");
				$("#tr"+ticketNo+">th:nth-child(5)").prop("outerHTML","<th style='width:150px'>"+adultTicketSellQ+"</th>");
				$("#tr"+ticketNo+">th:nth-child(6)").prop("outerHTML","<th style='width:150px'>"+adultTicketSelledQ+"</th>");		
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