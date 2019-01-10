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
</head>
<body>
	<div class="boxmsg">
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　會員訂單查詢　　　　　　　　　　　　　　　　　　　　　　　
            <br>
            <br>
            <br>
<!--  --><label class="title">輸入會員編號</label>
		
            <input type="text" id="user"size="40" placeholder="請輸入會員資訊" maxlength="10">
 			<input type="button" id='membersh' onclick="fundmember()" value="搜尋">　　　　　　　　
	</div>
	<div class="boxmsg" id="searchuser">
<!-- 	----------------------加東西--------------------- -->
	 <label class="title">查詢結果</label>
		
	</div>
</body>
</html>