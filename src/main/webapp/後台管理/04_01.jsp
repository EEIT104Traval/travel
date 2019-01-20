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
		<form action="${pageContext.request.contextPath}/test/upload.do" method="post" enctype="multipart/form-data">
			<input type="file" name="csv">
			<br /> 
			<input type="submit" name="提交">
		</form>
	</div>
	<div class="boxmsg" id="searchuser">
		<!-- 	----------------------加東西--------------------- -->
		<label class="title">查詢結果</label>

	</div>
</body>
</html>