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

<title>後台管理者介面</title>
<script>
var number
var user
var params = {}
	$(document).ready(function() {
		$('#select1').change(function() {
			params.number = $('#select1').val()
		})
	});

  			function fundmember(){
 			params.user = $('#user').val();
			$("#searchuser").html("")

 			$.ajax({
 					url : '/Travel/bindex/User.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:params,
 				   }).done(function(JData) {
//  					   console.log(JData)
// 							$.each(JData, function(index, value) {
// 								console.log(value)
// 							})
 						$("#searchuser").append(
 							'<table><tr><th>accountName</th><th>firstname</th><th>lastname</th><th>identityNo</th><th>email</th></tr><tr>'
 							+'<th>'+JData.accountName +'</th>'
 							+'<th>'+JData.firstname +'</th>'
 							+'<th>'+JData.lastname +'</th>'
 							+'<th>'+JData.identityNo +'</th>'
 							+'<th>'+JData.email +'</th>'
 							+'</tr><tr><th>sex</th><th>phone</th><th>birth</th><th colspan="2">address</th></tr><tr>'
 							+'<th>'+JData.sex +'</th>'
 							+'<th>'+JData.phone +'</th>'
 							+'<th>'+JData.birth +'</th>'
 							+'<th colspan="2">'+JData.address +'</th></tr></table>'
 				);	
			});		
 		};
</script>
</head>
<body>
	<jsp:include page="bindex.jsp" />
	<div class="boxmsg">
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　會員資料查詢　　　　　　　　　　　　　　　　　　　　　　　<input type="button" value="顯示所有客戶" name="#">
            <br>
            <br>
            <br>
<!--  -->
		<div>
   	 <label class="title">選擇查詢方法</label>
		<select id="select1">
	       	<option value="zero"></option>
			<option value="one">會員帳號</option>
			<option value="two">會員電話</option>
		</select>
            <input type="text" id="user"size="40" placeholder="請輸入會員資訊" maxlength="10">
 			<input type="button" id='membersh' onclick="fundmember()" value="搜尋">　　
 		</div>　　　　　　          
	</div>
	<div class="boxmsg" id="searchuser">
<!-- 	----------------------加東西--------------------- -->
	 <label class="title">查詢結果</label>
		
	</div>
</body>
</html>