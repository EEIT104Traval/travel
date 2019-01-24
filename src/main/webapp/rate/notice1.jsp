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
function findorder() {
	$("#searchuser").html("")

$.ajax({
	method: "GET",
	url:'/Travel/secure/rateselect.controller',
	
	dataType: "json",
	success: function(json) {
		alert("Hello!! "+json.accountName);
	}
})
		.done(
				function(JData) {
					if (JData.TourOrderInfoBean != null) {
						for (var i = 0; i < JData.RateNoticeBean.length; i++) {
							$("#searchuser")
							.append(
									'<table class="table table-hover"><th scope="row" style="text-align:center" name="orderNo">'
											+ JData.RateNoticeBean[i].currency
											+ '</th>'
											+ '<th scope="row" style="text-align:center" name="tourName">'
											+ JData.RateNoticeBean[i].targetRate
											+ '</th>'
											+ '<th scope="row" style="width:5%" name="quantity">'
											+ JData.RateNoticeBean[i].deadline
											+ '</th>'
											+ '<th scope="row" style="width:15%" name="orderTime">'
											+ JData.RateNoticeBean[i].registerDate
											+ '</th>'
											+ '<th scope="row" style="width:10%" name="totalPrice"></th></table>')
						}
					


</script>

<h4>Hello</h4>
<form action="<c:url value="/secure/rate.controller" />" method="post">
<table>
<tr>
<td>帳號</td>

<td>幣別</td>

<td>匯率</td>

<td>最後通知日</td>

</table>
<div class="row" id="searchuser"></div>
</form>

</body>
</html>