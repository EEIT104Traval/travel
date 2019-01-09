<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		var url = location.href;
		var ary = {}
		var params ={}

		    	params.tourNo = 2

		
		$(document).ready(
				function() {
					$.ajax({
						url : '/Travel/tour/display',
						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
						data:params,
					}).done(
							function(JData) {
								console.log(JData)
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