<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="display:inline-block ;">
		<label for="bookingType12" class="co_gray">航段</label> <select
			name="bookingType12" id="bookingType12" class="form-control"
			placeholder="來回" onchange="ShowSearch(this.value)">
			<option value="1" selected="">來回</option>
			<option value="2">單程</option>
			<option value="5">多航段</option>
		</select>
	</div>
	<div style="display:inline-block ;">
	<label for="godate" class="co_gray ">出發地</label>
	<input>
	</div>
	


</body>
</html>