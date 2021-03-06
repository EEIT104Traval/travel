<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>

<!DOCTYPE html>
<html lang="zh-tw">

<head>
<%-- <jsp:include page="/voyage/nav.jsp"/> --%>
<link rel="stylesheet" href="./css/rate.css">
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
	<div style="margin-top:20px">
	   <button type="button" style="float:right;margin-right: 350px"><a href="../voyage/index.jsp" />回首頁</a></button>
  	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling1.jsp" />最近半年走勢圖</a></button>
	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling.jsp" />最近三個月走勢圖</a></button>
	  
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
			<tr>
				<td>美金(USD)</td>
				<td>30.415</td>
				<td>31.105</td>
				<td>30.785</td>
				<td>30.885</td>
<!-- 				<td><a href="">查詢</a></td> -->
<!-- 				<td><a href="">查詢</a></td> -->
			</tr>
			<tr>
				<td>英鎊(GBP)</td>
				<td>38.16</td>
				<td>40.28</td>
				<td>39.16</td>
				<td>39.58</td>
<!-- 				<td><a href="">查詢</a></td> -->
<!-- 				<td><a href="">查詢</a></td> -->

						<tr>
				<td>瑞士法郎(CHF)</td>
				<td>30.63</td>
				<td>31.83</td>
				<td>31.29</td>
				<td>31.58</td>
<!-- 				<td><a href="">查詢</a></td> -->
<!-- 				<td><a href="">查詢</a></td> -->
			</tr>
						<tr>
				<td>歐元(EUR)</td>
				<td>34.48</td>
				<td>35.82</td>
				<td>35.1</td>
				<td>35.5</td>
<!-- 				<td><a href="">查詢</a></td> -->
<!-- 				<td><a href="">查詢</a></td> -->
			</tr>


			<!--             <tr> -->
			<!--                 <td>002</td> -->
			<!--                 <td colspan="2">netbook</td> -->
			<!--             </tr> -->
			<!--  			<tr> -->
			<!--                 <td>005</td> -->
			<!--                 <td>iPhone</td> -->
			<!--                 <td rowspan="3">20000</td> -->
			<!--             </tr> -->
		</tbody>
	</table>
	
	<%
	   Date dNow = new Date( );
	   SimpleDateFormat ft = 
	   new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
       out.print( "<h3 align=\"left\">更新時間： " +ft.format(dNow)+"</h3>");
    %>
    <script type="text/javascript">
    //讀取產品
	   function loadProduct(id){
		    	
	    	 $.getJSON('Products', { 'categoryID': id }, function (datas) {			          
		           var docFrag = $(document.createDocumentFragment());
		           var tb = $('#productTable>tbody');
		           tb.empty();
		           $.each(datas, function (idx,product) {
		               var cell1 = $('<td></td>').text(product.ProductID);
		               var cell2 = $('<td></td>').text(product.ProductName);
		               var cell3 = $('<td></td>').text(product.UnitPrice);
		               var cell4 = $('<td></td>').text(product.UnitsInStock);
		               var cell5 = $('<td></td>').html('<button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button> <button class="btn btn-info"><i class="fas fa-edit"></i></button>');

		               var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4,cell5]);
		               docFrag.append(row);
		           })
		           tb.append(docFrag);
		       })	   
	   }
    </script>
</body>

</html>