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
      <a href="<c:url value='TourtestfindPK' />">TourtestfindPK</a>
      <br/><br/>
      <a href="<c:url value='TourtestfindALL' />">TourtestfindALL</a>
      <br/><br/>
      <a href="<c:url value='Tourtestcreate' />">Tourtestcreate</a>
      <br/><br/>
      <a href="<c:url value='Tourtestupdate' />">Tourtestupdate</a>
      <br/><br/>
      <a href="<c:url value='Tourtestremove' />">Tourtestremove</a>
      <br/><br/>
      <a href="<c:url value='ticketfindpk' />">ticketfindpk</a>
      <a href="<c:url value='ticketCreate' />">ticketCreate</a>
      <a href="<c:url value='ticketUpdate' />">ticketUpdate</a>
      <a href="<c:url value='ticketRemove' />">ticketRemove</a>
      <br/><br/>
      
</body>
</html>