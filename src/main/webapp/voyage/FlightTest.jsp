<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/voyage/nav.jsp"></jsp:include>
</head>
<body>


	<%-- 	<jsp:include page="<c:url value='/voyage/nav.jsp'/>" /> --%>
	<div style="float: left; margin-right: 20px">
		<label for="bookingType12" class="co_gray" style="display: block">航段</label>
		<select name="bookingType12" id="bookingType12" class="form-control"
			placeholder="來回" onchange="ShowSearch(this.value)">
			<option value="1" selected="">來回</option>
			<option value="2">單程</option>
			<option value="5">多航段</option>
		</select>
	</div>

	<div style="float: left">
		<div style="display: inline-block; margin-right: 20px">
			<label for="loadplace" class="" style="display: block;">出發地</label> <input>

		</div>
		<div style="display: inline-block; margin-right: 20px">
			<label for="ariveplace" class="" style="display: block;">目的地</label>
			<input>
		</div>
	</div>

	<div style="float: left">
		<div style="display: inline-block; margin-right: 20px">
			<label for="startDate" class="co_gray" style="display: block;">出發日</label>
			<input type="text" class="search_input search_input_1"
				id="checkin_date" placeholder="yyyy/MM/dd" name="">

		</div>
		<div style="display: inline-block;">
			<label for="backdate" class="" style="display: block;">回程日</label> <input
				type="text" class="search_input search_input_1" id="checkout_date"
				placeholder="yyyy/MM/dd" name="">
		</div>
	</div>


</body>



</html>