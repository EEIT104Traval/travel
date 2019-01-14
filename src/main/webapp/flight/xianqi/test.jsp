<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/bootstrap.min.css?sv=1'/>" />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/style.css?sv=1'/>" />

<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script
	src="<c:url value='/flight/xianqi/js/jquery-1.11.2.min.js?sv=1'/>"></script>

<script type="text/javascript"
	src="<c:url value='/flight/xianqi/js/bootstrap.min.js?sv=1'/>"></script>
<script type="text/javascript"
	src="<c:url value='/flight/xianqi/js/bootstrap-tooltip.js?sv=1'/>"></script>
<script type="text/javascript"
	src="<c:url value='/flight/xianqi/js/bootstrap-popover.js?sv=1'/>"></script>

</head>
<body>

	<script>
		$(document)
				.ready(
						function() {
							var result = ${result}
							
							
				
						
							console.log(result)
// 							console.log(flightCompany)
							var code;
							$.each(result.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary,	function(index, value) {
									code = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Code;
									console.log(code);

							})
							
						})
	</script>
	
	
	<c:forEach items="${flightCompany}" var="flight">
		<p>${flight.key}:${flight.value}</p>
	
	</c:forEach>
	<div class="container">

		<!--重新search-->

		<!--重新search_結束-->

		<div class="list_flight">
			<div class="flirow">

				<!--左側欄-->
				<div class="panel-group  flyst" id="accordion">
					<div class="panel panel-info">
						<div id="mo_accordion"
							class="panel-collapse contbg  main_left martb" role="tabpanel"
							aria-labelledby="headingOne">
							<div class="modal-header visible-xs visible-sm">
								<button type="button" class="close" data-toggle="collapse"
									data-parent="#accordion" href="#mo_accordion">
									<span aria-hidden="true">×</span>
								</button>
								<h4 class="modal-title" id="pop_protickLabel">航班篩選</h4>
							</div>
							<ul class="filters">

								<!--航空公司-->

								<li>
									<h4>航空公司</h4>
									<ul class="are_nav airpn">
										<li>
											<div class="cdst">
												<input type="checkbox" id="cd-checkbox-s1"> <label
													for="cd-checkbox-s1"></label>
											</div>
											<p>
												<span>中華航空 </span><span class="price">$<b>31,256</b></span>
											</p>
										</li>
										<li>
											<div class="cdst">
												<input type="checkbox" id="cd-checkbox-s2"> <label
													for="cd-checkbox-s2"></label>
											</div>
											<p>
												<span>泰國航空</span><span class="price">$<b>34,825</b></span>
											</p>
										</li>
										<li>
											<div class="cdst">
												<input type="checkbox" id="cd-checkbox-s3"> <label
													for="cd-checkbox-s3"></label>
											</div>
											<p>
												<span>大韓航空 </span><span class="price">$<b>35,054</b></span>
											</p>
										</li>
										<li>
											<div class="cdst">
												<input type="checkbox" id="cd-checkbox-s4"> <label
													for="cd-checkbox-s4"></label>
											</div>
											<p>
												<span>長榮航空</span> <span class="price">$<b>36,134</b></span>
											</p>
										</li>
										<li>
											<div class="cdst">
												<input type="checkbox" id="cd-checkbox-s5"> <label
													for="cd-checkbox-s5"></label>
											</div>
											<p>
												<span>酷鳥航空 </span><span class="price">$<b>37,411</b></span>
											</p>
										</li>
										<li>
											<div class="cdst">
												<input type="checkbox" id="cd-checkbox-s6"> <label
													for="cd-checkbox-s6"></label>
											</div>
											<p>
												<span>曼谷航空 </span><span class="price">$<b>38,433</b></span>
											</p>
										</li>
										<li>
											<div class="cdst">
												<input type="checkbox" id="cd-checkbox-s7"> <label
													for="cd-checkbox-s7"></label>
											</div>
											<p>
												<span>國泰航空</span> <span class="price">$<b>39,172</b></span>
											</p>
										</li>
									</ul>
								</li>

								<!--航空公司_結束-->

							</ul>
							<div class="fix-button text-center">關閉</div>
						</div>
					</div>
				</div>

				<!--左側欄_結束-->

				<!--右側欄-->

				<div class="main_right">
					<h3 class="title">
						可選航班共<span>10</span>組
					</h3>
					<div class=" flylist" id="gofirst">
						<div>

							<div class="num-tag">1</div>
							<div class="flybox row">
								<div class="col-xs-10 text-center fly-leftbox">
									<div class="col-xs-3 fl-namebox text-center">
										<div class="fl-name">XXX</div>
										<div class="fl-num">OS100</div>
										<div>去程第一段</div>
									</div>


									<div class="flybox row">
										<div class="col-xs-10 text-center fly-leftbox">
											<div class="col-xs-3 fl-namebox text-center">
												<div class="fl-name">奧地利航空</div>
												<div class="fl-num">OS100</div>
												<div>去程第二段</div>
											</div>
										</div>
									</div>

									第1段_結束 第2段

									<div class="flybox row border-top">
										<div class="col-xs-10 text-center fly-leftbox">
											<div class="col-xs-3 fl-namebox text-center">
												<div class="fl-name">奧地利航空</div>
												<div class="fl-num">OS100</div>
												<div>回程第一段</div>
											</div>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 	</div></div></div> -->
</body>
</html>