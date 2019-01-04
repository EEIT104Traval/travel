<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- ${fn:length(select)}! --%>
<form action="<c:url value="/groupTour.controller" />">
	<table>
		<tr>
			<td>${select.tourNo}</td>
<!-- 			<td></td> -->
<!-- 			<td>1</td> -->
<!-- 			<td>2</td> -->
<!-- 			<td>1</td> -->
<!-- 			<td>2</td> -->
<!-- 			<td>1</td> -->
<!-- 			<td>2</td> -->
<!-- 			<td>1</td> -->
		</tr>
<!-- 		<tr> -->
<!-- 			<td>3</td> -->
<!-- 			<td>4</td> -->
<!-- 			<td>5</td> -->
<!-- 		</tr> -->
		<tr><td> <input type="submit"></td></tr>
	</table>
</form>

</body>
</html>