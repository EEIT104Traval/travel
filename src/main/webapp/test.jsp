<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	
	<br />
	<h2>周周</h2>
	<a href="<c:url value='/TourMemberFindAll' />">TourMemberFindAll</a>　
	<a href="<c:url value='/TourMemberFindSerialNo' />">TourMemberFindSerialNo</a>　　
	<a href="<c:url value='/TourMemberFindPrimartyKey' />">TourMemberFindPrimartyKey</a>　　
	<a href="<c:url value='/update' />">update</a>　　
	<a href="<c:url value='/create' />">create</a>　　
	
	<br />
	
</body>
</html>