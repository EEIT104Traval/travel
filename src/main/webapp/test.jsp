<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

      <a href="<c:url value='/test' />">UserInfoTest</a>
      <br/><br/>
      <a href="<c:url value='/Tourtest' />">Tourtest</a>
      <br/><br/>
       <a href="<c:url value='/userInfofindALL' />">Usetest</a>
      <br/><br/>
      <a href="<c:url value='/userInfocreate' />">Usercreat</a>
      <br/><br/>
         <a href="<c:url value='/userInforemove' />">Userremove</a>
      <br/><br/>
         <a href="<c:url value='/userInfoupdate' />">Userupdate</a>
      <br/><br/>
</body>
</html>