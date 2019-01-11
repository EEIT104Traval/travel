<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/bg_2.jpg'/>');"data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row slider-text align-items-center">
					<div class="col-md-7 col-sm-12 ftco-animate">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="<c:url value='/voyage/index.jsp' />">Home</a></span> <span>Tour</span>
						</p>
						<h1 class="mb-3">Tours </h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END slider -->
	


	<script>		
	$(document).ready(function() {
	$('input[name="id"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/rate/rateController",
			data: "id="+$('input[name="id"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
			console.log(json)	
			
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='currency']").val(json[1].currency);
					$("input[name='updateTime']").val(json[1].updateTime);
					$("input[name='cashBuy']").val(json[1].cashBuy);
					$("input[name='cashSell']").val(json[1].cashSell);
					$("input[name='spotBuy']").val(json[1].spotBuy);
					$("input[name='spotBuy']").val(json[1].spotBuy);
				}
			}
		});
		
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
		</tbody>
		</table>
	
	</script>
	<jsp:include page="/voyage/foo.jsp"/>
</body>
</html>