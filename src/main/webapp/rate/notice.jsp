<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RateNotice</title>
</head>
<body>

<script>
function disp_prompt(){
	var price = prompt("輸入匯率價格")
	if (price!=null && price!=""){
		document.getElementById("prompt").innerHTML="您輸入的匯率為"+price;
	}
}

function show_confirm(){
	var r = confirm("確定或取消");
	if(r==true){
		alert("確定價格")
	}else{
		alert("取消確認")
	}
}

function notice(){
	var x =document.getElementById("demo").value;
	try{		
		if(x=="") throw "請輸入數值";
		if(isNaN(x)) throw "不是數字"		
	}
	catch(err){
		var y = document.getElementById("mess");
		alert("輸入錯誤，"+err+"。")
	}
	if(x==""||isNaN(x)){
		
	}else{
	var r = confirm("確定或取消: rate="+x);
	if(r==true){
		alert("確定價格")
	}else{
		alert("取消確認")
	}
	}	
}
</script>
<!-- <input type="button" onclick="disp_prompt()" value="輸入匯率價格"> -->
<!-- <p id="prompt"> -->
<!-- <input type="button" onclick="show_confirm()" value="確認送出"> -->
<h4>請輸入欲通知的匯率金額</h4>
<form action="<c:url value="/secure/rate.controller" />" method="post">
<table>
<tr>
<td>帳號:</td>
<td><input type="text" id="" name="accountName"><br></td>
</tr>
<tr>
<td>幣別:</td>
<td><input type="text" id="" name="currency"><br></td>
</tr>
<tr>
<td>匯率:</td>
<td><input type="text" id="demo" name="targetRate"><br></td>
</tr>
<tr>
<td>最後通知日:</td>
<td><input type="text" id="" name="deadline"></td>
</tr>
<button onclick="notice()">送出</button><br/>
</table>
</form>

</body>
</html>