<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<title>後台管理者介面</title>
</head>
<body>
	<jsp:include page="bindex.jsp" />
	<div class="boxmsg">
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　會員訂單查詢　　　　　　　　　　　　　　　　　　　　　　　
            <br>
            <br>
            <br>
<!--  --><label class="title">輸入會員編號</label>
		
            <input type="text" id="account" name="account" size="40" placeholder="請輸入會員資訊" maxlength="10" inputmode="button">
 			<input type="image" img src="images/FD.png" onClick="document.form1.submit()"  width="3%" height="3%">　　　　　　　　
	</div>
	<div class="boxmsg1">
	 <label class="title">查詢結果</label>
		
	</div>
</body>
</html>