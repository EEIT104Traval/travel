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
	 <label class="title">選擇查詢方法</label>
		<select name="option">
	    	<option value="zero"></option>
			<option value="one">會員帳號</option>
			<option value="two">會員電話</option>
            <input type="text" id="account" name="account" size="40" placeholder="請輸入會員資訊" maxlength="10" inputmode="button">
            <input type="button" value="確認">　　　
            <input type="button" value="顯示所有客戶" name="#">
          </select>
	</div>
	<div class="boxmsg">
	 <label class="title">查詢結果</label>
		
	</div>
</body>
</html>