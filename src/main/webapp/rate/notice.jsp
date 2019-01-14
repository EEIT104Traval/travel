<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
帳號:<input type="text" id="demo"><br>
幣別:<input type="text" id=""><br>
匯率:<input type="text" id=""><br>
時間:
<button onclick="notice()">送出</button><br/>


</body>
</html>