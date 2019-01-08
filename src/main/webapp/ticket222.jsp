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
	<script>
		$(document).ready(function() {
			$.ajax({
				url : '/Travel/voyage/ticket.controller',
				contentType : 'application/json; charset=UTF-8',
				type : 'get',
				dataType : 'json',
			}).done(function(JData) {
				console.log(JData)
				$.each(JData, function(index, value) {
					console.log(value)
				});
			})

		});
	</script>
</body>
</html>