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

	$(document).ready(function() {
		$('#select1').change(function() {
			month = $('#select1').val()
			alert(month)
		
//   			function fundmember(){
 			
			$("#searchuser").html("")

 			$.ajax({
 					url : '/Travel/bindex02_01/User.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:month,
 				   }).done(function(JData) {
 					   console.log(JData)
							$.each(JData, function(index, value) {
					  console.log(value)
//  						$("#searchuser").append(
//  							'<table><tr><th>accountName</th><th>firstname</th><th>lastname</th><th>identityNo</th><th>email</th></tr><tr>'
//  							+'<th>'+value.accountName +'</th>'
//  							+'<th>'+value.firstname +'</th>'
//  							+'<th>'+value.lastname +'</th>'
//  							+'<th>'+value.identityNo +'</th>'
//  							+'<th>'+value.email +'</th>'
//  							+'</tr><tr><th>sex</th><th>phone</th><th>birth</th><th colspan="2">address</th></tr><tr>'
//  							+'<th>'+value.sex +'</th>'
//  							+'<th>'+value.phone +'</th>'
//  							+'<th>'+value.birth +'</th>'
//  							+'<th colspan="2">'+value.address +'</th></tr></table>'
// 							)
							}
				)}
 	)
//  	};		
		})
	});
</script>
</head>
<body>
	<div class="boxmsg">
<!--  --> 　　　　　　　　　　　　　　　　　　　　　　　　　　　月份報表查詢　　　　　　　　　　　　　　　　　　　　　　　
            <br>
            <br>
            <br>
<!--  --><label class="title">查詢月份</label>
		<select id="select1">
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
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<a href="a.pdf"><img src="images/pdf_icon.gif">PDF下載</a>　　　　  
	</div>
	<div class="boxmsg" id="searchuser">
<!-- 	----------------------加東西--------------------- -->
	 <label class="title">查詢結果</label>
		
	</div>
</body>
</html>