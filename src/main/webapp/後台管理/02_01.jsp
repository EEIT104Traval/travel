<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>後台管理者介面</title>
</head>
<body>
	<jsp:include page="bindex.jsp" />
	<div class="boxmsg">
<!--  --> 　　　　　　　　　　　　　　　　　　　　　　　　　　　月份報表查詢　　　　　　　　　　　　　　　　　　　　　　　
            <br>
            <br>
            <br>
<!--  --><label class="title">查詢月份</label>
		<select name="option">
	    	<option value="zero"></option>
			<option value="january">JAN</option>
			<option value="february">FEB</option>
			<option value="march">MAR</option>
			<option value="april">APR</option>
			<option value="may">MAY</option>
			<option value="june">JUN</option>
			<option value="july">JUL</option>
			<option value="august">AUG</option>
			<option value="september">SEP</option>
			<option value="october">OCT</option>
			<option value="november">NOV</option>
			<option value="december">DEC</option>　　　
          </select>
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<a href="a.pdf"><img src="images/pdf_icon.gif">PDF下載</a>　　　　  
	</div>
	<div class="boxmsg1">
	 <label class="title">查詢結果</label>
	</div>
</body>
</html>