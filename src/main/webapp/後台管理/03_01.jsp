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
<script>
var params = {}
var fname
	$(document).ready(function() {
				$(function () {
		  		  var fileInput = document.getElementById('test-file-upload'),
		     	      filePath = document.getElementById('test-get-filename');
		              fileInput.addEventListener('change', function () {
		              filePath.innerText = fileInput.value;
// 		              抓下載路徑------------------↓↓↓↓↓↓↓↓↓↓↓↓↓---------------------------
		              console.log(filePath.innerText);
		    					});
					});
	});
</script>
</head>
<body>
	<jsp:include page="bindex.jsp" />
<div class="boxmsg">
		<!--  -->
		新增行程 <br>
<!-- 		<form enctype="multipart/form-data" method="post"> -->
<!--    			<input type="file" name="file" size="20" style="display:none;"> -->
<!--   			<input type="text" name="upfile" size="20" readonly> -->
<!--    			<input type="button" value="開啟檔案" onclick="this.form.file.click();">  -->
<!--   			<input type="Submit" name="Submit" value="上傳">	 -->
<!--  		</form> -->
<!--  		<form enctype="multipart/form-data" method="post"> -->
<!--   			<input type="file" name="file" size="20" style="display:none;"> -->
<!--   			<input type="text" name="dlfile" size="20" readonly> -->
<!--    			<input type="button" value="下載檔案" onclick="this.form.file.click();">  -->
<!--   			<input type="Submit" name="Submit" value="下載">   -->
<!--   		</form> -->
  		<form method="post" action="http://localhost/test" enctype="multipart/form-data">
   				 <p> <input type="file" id="test-file-upload" name="test"></p>
    			 <p>待上传文件: <span id="test-get-filename" style="color:red"></span></p>
		</form>
</div>
	<div class="boxmsg1">
		<div class="boxmsg" id="searchuser">
			<label class="title">新增結果</label>
			<!-- 	----------------------加東西--------------------- -->
		</div>
	</div>
</body>
</html>