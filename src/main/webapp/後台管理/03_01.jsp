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
<title>後台管理者介面</title>
<script>
var fileInput
var filePath
var paths
var params = {}


	$(document).ready(function() {
				$(function () {

						});
				});
	
		
//-------------------------------查詢全部票券↓↓↓↓↓↓↓↓↓↓↓↓↓---------------------------	
	function show(){
	$("#searchuser").html("")
	$.ajax({
			url : '/Travel/bindex03_011/User.controller',
			contentType : 'application/json; charset=UTF-8',
			type : 'get',
			dataType : 'json',
		   }).done(function(JData) {
			  $("#searchuser").append(
					'<div style="text-align: center;"><h2>票券庫存查詢系統</h2></div>'+
					'<br>'+
					'<table ><th style="width:150px">票券號碼</th><th style="width:150px">票券國家</th>'+
							'<th style="width:150px">票券名稱</th><th style="width:150px">票券價格</th>'+
							'<th style="width:150px">庫存數量</th><th style="width:150px">銷售數量</th>'+
					'</table><br>'	
								);
			  
			   console.log(JData)
			   console.log(JData.length)
			   
			for(var i = 0;i<JData.length;i++){
						$("#searchuser").append(
							'<table >'+
							'<th style="width:150px">'+JData[i].ticketNo+'</th>'+
							'<th style="width:150px">'+JData[i].country+'</th>'+
							'<th style="width:150px">'+JData[i].ticketName+'</th>'+
							'<th style="width:150px">'+JData[i].adultTicketPrice+'</th>'+
							'<th style="width:150px">'+(JData[i].adultTicketSellQ-JData[i].adultTicketSelledQ)+'</th>'+
							'<th style="width:150px">'+JData[i].adultTicketSelledQ+'</th></table>'
											)}})};	
	 	
 	
</script>
</head>
<body>
	<jsp:include page="bindex.jsp" />
<div class="boxmsg">
		<!--  -->
		新增票券 <br>
		<table>
		<tr><td>票券名稱</td><td>票券類型</td><td>票券價格</td><td>庫存數量</td><td>國家</td></tr>
		<tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
		<tr><td>國家</td><td>使用期限</td><td>票券資訊</td><td>庫存限制</td><td>註解</td></tr>
		<tr><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
		
		
		</table>
  		<form method="post" action="/Travel/bindex03_01/User.controller" enctype="multipart/form-data">
    			 <input type="button" id='membersh' onclick="UP()" value="確認">
<!--     			 <input type="submit"  value="確認1"> -->
    			 <input type="button" id='membersh' onclick="show()" value="顯示資料">
		</form>
</div>
	<div class="boxmsg">
		<div  id="searchuser">
			<label class="title">新增結果</label>
			<!-- 	----------------------加東西--------------------- -->
		</div>
	</div>
</body>
</html>