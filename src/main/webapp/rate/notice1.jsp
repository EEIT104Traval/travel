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
	}else{英鎊
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
<td><select id="select1" name="currency" class="col-sm-9" style="max-width:45%;padding:8px;border-radius:4px">
                		<option value="USD">請選擇幣別</option>
                		<option value="USD">美金</option>
                		<option value="HKD">港幣</option>
                		<option value="GBP">英鎊</option>
                		<option value="AUD">澳幣</option>
                		<option value="CAD">加拿大幣</option>
                		<option value="SGD">新加坡幣</option>
                		<option value="CHF">瑞士法郎</option>
                		<option value="JPY">日圓</option>
                		<option value="ZAR">南非幣</option>
                		<option value="SEK">瑞典幣</option>
                		<option value="NZD">紐元</option>
                		<option value="THB">泰幣</option>
                		<option value="PHP">菲國比索 </option>
                		<option value="DR">印尼幣</option>
                		<option value="EUR">歐元 </option>
                		<option value="KRW">韓元</option>
                		<option value="VND">越南盾</option>
                		<option value="MYR">馬來幣</option>
                		<option value="CNY">人民幣</option>
					</select></td>
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