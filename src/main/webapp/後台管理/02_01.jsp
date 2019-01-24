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
var month
var tprice
var params = {}
var sum = 0;

// 	$(document).ready(function() {
// 			$('#select1').change(function() {
// 			params.month =  $('#select1').val()
// 			$("#searchuser").html("")
//  			$.ajax({
//  					url : '/Travel/bindex02_01/User.controller',
//  					contentType : 'application/json; charset=UTF-8',
//  					type : 'get',
//  					dataType : 'json',
//  					data:params,
//  				   }).done(function(JData) {  
//  					  $("#searchuser").append(
//  								'<div style="text-align: center;"><h2>'+Number($('#select1').val()) +'月份報表</h2></div>'+
//  								'<br>'+
//  								'<table ><th style="width:50px">國家</th><th style="width:350px">名稱</th>'+
//  								'<th style="width:50px">數量</th><th style="width:200px">購買日期</th><th style="width:100px">價格</th></table>'+
//  								'<br>'		 );
 					 
//  					 	console.log("-------------------------------------");
// 						console.log(JData);
// 						if(JData != null){
//   							for(var i = 0;i<JData.length;i++){
//   								var x = JData[i].total
// 	 							$("#searchuser").append(		
// 	 		 							'<table ><th style="width:50px">'+ JData[i].country +'</th>'+
// 	 		 									'<th style="width:350px">'+ JData[i].tourName +'</th>'+
// 	 		 							        '<th style="width:50px">'+ JData[i].quantity +'</th>'+
// 	 		 							        '<th style="width:200px">'+ JData[i].orderTime +'</th>'+
// 	 		 							        '<th style="width:100px">'+ JData[i].total +'</th></table>'	
// 	 													)
// 	 													sum = sum + x
// 	 								 } $("#searchuser").append('<table><th style="width:50px">合計</th><th style="width:727px">'+ sum +'</th></table>')
// 								                       }else{
// 						$("#searchuser").append('<H1>業績差尚無訂單</H1>')
// 								                       }
// 											})
// 								})
// 					});
	
					
</script>
</head>
<body>
<form action=" <c:url value='/Travel/export.do'/>">
	<div class="boxmsg">
	        <br>
            <br>
<!--  --> 　　　　　　　　　　　　　　　　　　　　　　　　　　　月份報表查詢　　　　　　　　　　　　　　　　　　　　　　　
            <br>
            <br>
            <br>
<!--  --><label class="title">查詢月份</label>
		<select id="select1" name="month"> 
	    	<option value="zero"></option>
			<option value="1">JAN</option>
			<option value="2">FEB</option>
			<option value="3">MAR</option>
			<option value="4">APR</option>
			<option value="5">MAY</option>
			<option value="6">JUN</option>
			<option value="7">JUL</option>
			<option value="8">AUG</option>
			<option value="9">SEP</option>
			<option value="10">OCT</option>
			<option value="11">NOV</option>
			<option value="12">DEC</option>　　　
          </select>
<!--             <button type="button" onclick="TourOrder()">下載EXCEL檔</button> -->
            <input type="submit" value="下載EXCEL檔">
<!--  -->
	</div>
	<div class="boxmsg" id="searchuser">
<!-- 	----------------------加東西--------------------- -->
	 <label class="title">查詢結果</label>
		
	</div>
	</form>
</body>
</html>