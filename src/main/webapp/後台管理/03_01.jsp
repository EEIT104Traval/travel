<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>後台管理者介面</title>
<script>

var params = {}

	$(document).ready(function() {
		
 	});		
</script>
</head>
<body>
	<jsp:include page="bindex.jsp" />
<div class="boxmsg">
<!--  -->	 　　　　　　　　　　　　　　　　　　　　　　　　　　　　新增行程　　　　　　　　　　　　　　　　　　　　　　　　
<br>
	<div style="text-align : center">
		<input type="image"  src="images/UP.png" onClick="document.submit1()" width="10%" height="10%">
		<input type="image"  src="images/DL.png" onClick="document.submit2()"  width="10%" height="10%">
	</div>
</div>
	<div class="boxmsg1">
		 <div class="boxmsg" id="searchuser">
	 <label class="title">新增結果</label>
<!-- 	----------------------加東西--------------------- -->
		</div>
	</div>
</body>
</html>