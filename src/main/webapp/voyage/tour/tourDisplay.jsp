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

	<a href="<c:url value='/tour/display'/>">display</a>
	<h2>商品展示</h2>
	<table id='JSON_table'>
	</table>

	<script>
		$(document).ready(
				function() {
					$.ajax({
						url : '/Travel/tour/display',
						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
						
					}).done(
							function(JData) {
								console.log(JData)
								$.each(JData.TourPictureBean, function(index, value) {
									console.log(value)
									$("#JSON_table").append(
											"<tr>" + "<td>"
													+ value.tpicNo
													+ "</td>" + "<td>"
													+ "<img src= "+value.pic+"/>"
													+ "</td>" + "<td>"
													+ value.picDetail
													+ "</td>" + "<td>"
													+ value.pictitle
													+ "</td>" + "</tr>");
								});
							})

				});
	</script>
	<jsp:include page="../foo.jsp"/>
</body>
</html>