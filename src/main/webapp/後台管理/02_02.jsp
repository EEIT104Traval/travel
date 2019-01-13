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
</head>
<body>
	<jsp:include page="bindex.jsp" />
	<div class="boxmsg">
<!--  --> 　　　　　　　　　　　　　　　　　　　　　　　　　　　歷史報表查詢　　　　　　　　　　　　　　　　　　　　　　　
            <br>
            <br>
            <br>
<!--  --><label class="title">查詢年份</label>
		<select name="option">
			<option value="0000">選擇</option>
	    	<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
			<option value="2020">2020</option>
			<option value="2021">2021</option>
		　　<option value="2022">2022</option>
          </select>
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<a href="a.pdf"><img src="images/pdf_icon.gif">PDF下載</a>　　　　  
	</div>
	<div class="boxmsg1">
	 <label class="title">查詢結果</label>
	</div>
</body>
</html>