<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RateNotice</title>
<style>
th{
border: 1px solid black;
}
</style>
</head>
<body>

<script>
var accountName = "${sessionScope.accountName}";//抓名字


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
	url:'/Travel/voyage/rateSelect.controller',
	contentType : 'application/json; charset=UTF-8',
	dataType: "json",
	data:{
		'accountName':	accountName,
	},
	
	success: function(json) {
		alert("Hello!! "+json.accountName);
	}
})
		.done(
				function(JData) {
					if (JData.RateNoticeBean != null) {
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
					}
				})
}

</script>

<h4>Hello</h4>
<table>
<thead>
<th>帳號</th>

<th>幣別</th>

<th>匯率</th>

<th>最後通知日</th>
</thead>
</table>
<div class="row" id="searchuser"></div>


</body>
</html>