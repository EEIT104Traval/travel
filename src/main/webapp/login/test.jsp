<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../css/main.css" />

<title>Product</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}
</script>

</head>
<body>

<!-- <h3>Welcome </h3> -->

<!-- <h3>Product Table</h3> -->

<form action="<c:url value="/secure/login.controller" />" method="post">
<table>
	<tr>
		<td>帳號: </td>
		<td><input type="text" name="accountName" value="${param.accountName}"></td> 
		<td><span class="error">${errors.xxx1}</span></td>
	</tr>
	<tr>
		<td>密碼: </td>
		<td><input type="text" name="password" value="${param.password}"></td>
		<td></td>
	</tr>
	<tr>
		<td>英文姓 : </td>
		<td><input type="text" name="firstname" value="${param.firstname}"></td>
		<td><span class="error">${errors.firstname}</span></td>
	</tr>
	<tr>
		<td>英文名 : </td>
		<td><input type="text" name="lastname" value="${param.lastname}"></td>
		<td><span class="error">${errors.lastname}</span></td>
	</tr>
		<tr>
		<td>身分證字號 : </td>
		<td><input type="text" name="identityNo" value="${param.identityNo}"></td>
		<td><span class="error">${errors.identityNo}</span></td>
	</tr>
		<tr>
		<td>出生年月日 : </td>
		<td><input type="text" name="birth" value="${param.birth}"></td>
		<td><span class="error">${errors.birth}</span></td>
	</tr>
	<tr>
		<td>性別 : </td>
		<td><input type="text" name="sex" value="${param.sex}"></td>
		<td><span class="error">${errors.sex}</span></td>
	</tr>
	<tr>
		<td>行動電話 : </td>
		<td><input type="text" name="phone" value="${param.phone}"></td>
		<td><span class="error">${errors.phone}</span></td>
	</tr>
	<tr>
		<td>E-mail : </td>
		<td><input type="text" name="email" value="${param.email}"></td>
		<td><span class="error">${errors.email}</span></td>
	</tr>
	
	<tr>
		<td>地址 : </td>
		<td><input type="text" name="address" value="${param.address}"></td>
		<td><span class="error">${errors.address}</span></td>
	</tr>
	
	<tr>
		<td>
			<input type="submit" name="prodaction" value="送出">
			<input type="button" value="Clear" onclick="clearForm()">
		</td>
	</tr>
</table>

</form>

<h3><span class="error">${errors.action}</span></h3>

<c:if test="${not empty delete}">
	<c:if test="${delete}">
		<h3>Delete product table success : 1 row deleted</h3>
	</c:if>
	<c:if test="${not delete}">
		<h3>Delete product table success : 0 row deleted</h3>
	</c:if>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty insert}">
	<h3>Insert product table success</h3>
	<table border="1">
		<tr><td>Id</td><td>${insert.id}</td></tr>
		<tr><td>Name</td><td>${insert.name}</td></tr>
		<tr><td>Price</td><td>${insert.price}</td></tr>
		<tr><td>Make</td><td>${insert.make}</td></tr>
		<tr><td>Expire</td><td>${insert.expire}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update product table success</h3>
	<table border="1">
		<tr><td>Id</td><td>${update.id}</td></tr>
		<tr><td>Name</td><td>${update.name}</td></tr>
		<tr><td>Price</td><td>${update.price}</td></tr>
		<tr><td>Make</td><td>${update.make}</td></tr>
		<tr><td>Expire</td><td>${update.expire}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>