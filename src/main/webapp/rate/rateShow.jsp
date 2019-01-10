<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>

<!DOCTYPE html>
<html lang="zh-tw">

<head>
<%-- <jsp:include page="/voyage/nav.jsp"/> --%>
<link rel="stylesheet" href="./css/rate.css">
	<script language="javascript" type="text/javascript" src="./js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.time.js"></script>
	<script language="javascript" type="text/javascript" src="./js/moment.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>銀行匯率</title>
<style>
.tb1 {
	width: 1000px;
	border: 3px solid #0080ff;
	border-collapse: collapse;
}

td, th {
	border: 1px solid gray;
}

thead {
	background-color: #46a3ff;
	color: #ffffff;
	border-bottom: 3px double #ff5809;
}

tbody {
	background-color: #c4e1ff;
	text-align: center;
}

tbody tr:nth-child(2n) {
	background-color: #acd6ff;
}

tbody tr:nth-child(2n+1) {
	background-color: #e0e0e0;
}

tbody tr:hover {
	background-color: #ffffff;
}
</style>
</head>

<body>
<script>
$(document).ready(function() {
		$.ajax({
			method: "GET",
			url:"/Travel/rate/rateController",
// 			url:"/Travel/tour/display?tourNo=1",
			dataType: "json",
			success: function(json) {
			console.log(json.country)
			var text = "<ul><li>" +json.country + "</li></ul>"
			$('#123').html(text)
				}
			
		})
});
</script>
	<div id='123'></div>
	<div style="margin-top:20px">
	   <button type="button" style="float:right;margin-right: 350px"><a href="../voyage/index.jsp" />回首頁</a></button>
  	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling1.jsp" />最近半年走勢圖</a></button>
<!-- 	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling.jsp" />最近三個月走勢圖</a></button> -->
	  
	</div>
	<h2 style="margin-left:450px">匯率</h2>
	<table id="productTable" class="tb1">
<!-- 		<caption> -->
<!-- 			<h3>匯率</h3> -->
<!-- 		</caption> -->
		<thead>
			<tr>
				<th rowspan="2">幣別</th>
				<th colspan="2">現金匯率</th>
				<th colspan="2">即期匯率</th>
<!-- 				<th rowspan="2">遠期匯率</th> -->
<!-- 				<th rowspan="2">歷史匯率</th> -->
			</tr>

			<tr>
				<th>本行買入</th>
				<th>本行賣出</th>
				<th>本行賣出</th>
				<th>本行賣出</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="bean" items="${rateResult}">
		<c:url value="/rate/toggling3.jsp" var="path">
			<c:param name="currency" value="${bean.currency}" />
			<c:param name="updateTime" value="${bean.updateTime}" />
			<c:param name="cashBuy" value="${bean.cashBuy}" />
			<c:param name="cashSell" value="${bean.cashSell}" />
			<c:param name="spotBuy" value="${bean.spotBuy}" />
			<c:param name="spotSell" value="${bean.spotSell}" />
		</c:url>
	<tr>
		<td>${bean.cashBuy}</td>
<%-- 		<td><a href="${path}">${bean.name}</a></td> --%>
		<td>${bean.cashSell}</td>
<%-- 		<td><fmt:formatDate value="${bean.make}" pattern="yyyy/MM/dd G"/></td> --%>
		<td>${bean.spotBuy}</td>
		<td>${bean.spotSell}</td>
	</tr>	
	</c:forEach>
<!-- 			<tr> -->
<!-- 				<td>美金(USD)</td> -->
<!-- 				<td>30.415</td> -->
<!-- 				<td>31.105</td> -->
<!-- 				<td>30.785</td> -->
<!-- 				<td>30.885</td> -->

<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>英鎊(GBP)</td> -->
<!-- 				<td>38.16</td> -->
<!-- 				<td>40.28</td> -->
<!-- 				<td>39.16</td> -->
<!-- 				<td>39.58</td> -->


<!-- 			<tr> -->
<!-- 				<td>瑞士法郎(CHF)</td> -->
<!-- 				<td>30.63</td> -->
<!-- 				<td>31.83</td> -->
<!-- 				<td>31.29</td> -->
<!-- 				<td>31.58</td> -->

<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>歐元(EUR)</td> -->
<!-- 				<td>34.48</td> -->
<!-- 				<td>35.82</td> -->
<!-- 				<td>35.1</td> -->
<!-- 				<td>35.5</td> -->

<!-- 			</tr> -->

		</tbody>
	</table>
	
	<%
	   Date dNow = new Date( );
	   SimpleDateFormat ft = 
	   new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
       out.print( "<h3 align=\"left\">更新時間： " +ft.format(dNow)+"</h3>");
    %>
  
</body>

</html>