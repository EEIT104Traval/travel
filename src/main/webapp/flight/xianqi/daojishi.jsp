<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>

<html>

<head>

<meta charset="utf-8">

<title>jquery版的网页倒计时效果</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/trip.css'/>" />
<style type="text/css">




</style>

<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript">




// var intDiff = parseInt(60);//倒计时总秒数量



function timer(intDiff){

	window.setInterval(function(){

// 	var day=0,

// 		hour=0,

		minute=0,

		second=0;//时间默认值		

	if(intDiff > 0){

		day = Math.floor(intDiff / (60 * 60 * 24));

		hour = Math.floor(intDiff / (60 * 60)) - (day * 24);

		minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);

		second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);

	}

	if (minute <= 9) minute = '0' + minute;

	if (second <= 9) second = '0' + second;

	$('#day_show').html(day+"天");

	$('#hour_show').html('<s id="h"></s>'+hour+'时');

	$('#minute_show').html('<s></s>'+minute+'分');

	$('#second_show').html('<s></s>'+second+'秒');

	intDiff--;

	}, 1000);

} 



$(document).ready(function(){
	var intDiff = parseInt(899);
	timer(intDiff);

});	

</script>

</head>

<body>


<div class="time-item">

<!-- 	<span id="day_show">0天</span> -->

<!-- 	<strong id="hour_show">0时</strong> -->

	<strong id="minute_show">14分</strong>

	<strong id="second_show">60秒</strong>

</div>

<!--倒计时模块-->

<script src="http://www.jq22.com/js/jq.js"></script>
<%-- <script src="<c:url value='/voyage/js/jquery.min.js' />"></script> --%>


</body>

</html>