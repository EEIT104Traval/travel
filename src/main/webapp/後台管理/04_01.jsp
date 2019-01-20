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

        <form method="POST" action="uploadFile" enctype="multipart/form-data">
           File to upload: <input type="file" name="file">
           <input type="submit" value="Upload"> Press here to upload the file!
        </form>

	</div>
	<div class="boxmsg" id="searchuser">
		<!-- 	----------------------加東西--------------------- -->
		<label class="title">查詢結果</label>

	</div>
</body>
</html>