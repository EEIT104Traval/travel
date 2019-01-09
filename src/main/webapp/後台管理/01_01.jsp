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

	$(document).ready(function() {
	
			$('#check').click(function(){
			params.user = $('#user').val();
			alert(params.user)
			$.ajax({
					url : '/Travel/bindex/User.controller',
					contentType : 'application/json; charset=UTF-8',
					type : 'get',
					dataType : 'json',
					data:params,
				   }).done(function(JData) {
								$("#searchuser").append("<h1>"+JData.tourName+"</h1><br/>")
					$.each(JData.TourPictureBean, function(index, value) {console.log(value)
// 					if(index==0){
// 						$("#searchuser").append(		
 					});
			});
	});
});
</script>
</head>
<body>
	<jsp:include page="bindex.jsp" />
	<div class="boxmsg">
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　會員資料查詢　　　　　　　　　　　　　　　　　　　　　　　<input type="button" value="顯示所有客戶" name="#">
            <br>
            <br>
            <br>
<!--  --><label class="title">選擇查詢方法</label>
		<select name="option">
	    	<option value="zero"></option>
			<option value="one">會員帳號</option>
			<option value="two">會員電話</option>
            <input type="text" id="user" name="account" size="40" placeholder="請輸入會員資訊" maxlength="10" inputmode="button">
 			<input type="image"  src="images/FD.png" class="check"  width="3%" height="3%">　　　　　　　　
           
          </select>
	</div>
	<div class="boxmsg1" id="searchuser">
	 <label class="title">查詢結果</label>
		
	</div>
</body>
</html>