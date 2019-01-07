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
<title>Insert title here</title>
</head>
<body>
	<a href="<c:url value='/tour/display'/>">display</a>
	<h2>商品展示</h2>
	<table id='JSON_table'>
	</table>

	<script>
		$(document).ready(
				function() {
					$.ajax({
						url : '/Travel/tour/display',
						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
					}).done(
							function(JData) {
// 								console.log(JData.TourPictureBean)
								$.each(JData.TourPictureBean, function(index, value) {
									console.log(value)
									$("#JSON_table").append(
											"<tr>" + "<td>"
													+ value.tpicNo
													+ "</td>" + "<td>"
													+ "<img src= "+value.pic+"/>"
													+ "</td>" + "<td>"
													+ value.picDetail
													+ "</td>" + "<td>"
													+ value.pictitle
													+ "</td>" + "</tr>");
								});
							})

				});
	</script>
</body>
</html>