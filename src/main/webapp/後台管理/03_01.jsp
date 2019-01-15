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
		<!--  -->
		新增行程 <br>
		<div style="text-align: center">
		<form name="UploadForm" enctype="multipart/form-data" method="post" action="doupload.jsp">
		<input id="images/UP.png" style="display:none;" type="file">
			<input type="file" id="images/UP.png" onClick="document.submit1()"width="10%" height="10%">
			<input type="file"id="images/DL.png" onClick="document.submit2()" width="10%"height="10%">
<!-- 			檔案1<input type="file" name="File1" size="50" maxlength="20" /> <br> -->
<!-- 			檔案2<input type="file" name="File2" size="50" maxlength="20" /> <br> -->

			   <input type="submit" value="upload">
		</form>
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