<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>後台管理者介面</title>
</head>
<body>
	<jsp:include page="bindex.jsp" />
<div style="color:#ffffff">
　　　　　　　　　　　　　　　　　　　　　　修改行程　　　　　　　　　　　　　　　　　　　　　　　　
</div>
<div class="boxmsg">
<table>
	<tr>
		<th>
			行程代號
		</th>
		<th>
			國家
		</th>
		<th>
			團名
		</th>
		<th>
			旅遊地點
		</th>
		<th>
			旅遊天數
		</th>
	</tr>
	<tr>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>
	</tr>
	<tr>
		<th>
			行程簡介
		</th>
		<th>
			出發日期
		</th>
		<th>
			價格(大人)
		</th>
		<th>
			價格(小孩)
		</th>
		<th>
			價格(嬰兒)
		</th>		
	</tr>
	<tr>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>
		<th>
			<input type="text">
		</th>		
	</tr>
</table>
　　　　<input type="image" img src="images/ALL.png" onClick="document.form1.submit()" width="3%" height="3%">
　<input type="image" img src="images/SEE.png" onClick="document.form1.submit()" width="3%" height="3%">
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<input type="image" img src="images/PEN.png" onClick="document.form1.submit()"  width="3%" height="3%">
</div>
</div>
	<div class="boxmsg1">
	 <label class="title">修改結果</label>
	</div>
</body>
</html>