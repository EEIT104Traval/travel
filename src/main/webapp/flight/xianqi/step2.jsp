<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String name=request.getParameter("goCompany"); %>
hello <%=name%>
<script type="text/javascript">
console.log('${goCompany}');
</script>
<%-- ${goCompany} --%>
</body>
</html>