<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html lang="tw-zh">

<!-- import this css by Alex -->
<!-- <link rel="stylesheet" href="css/main_styles.css"> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/voyage/styles/main_styles.css'/>">

<link rel="stylesheet"
	href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/owl.carousel.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/owl.theme.default.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/magnific-popup.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/ionicons.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/bootstrap-datepicker.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/jquery.timepicker.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">
<link href="<c:url value='/voyage/css/jquery-ui.css' />"
	rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/flight/彈窗/custom-popup/custom.popup-v1.3.1.css'/>">


<head>
<script>
	var mypops = new Array(40);

	$(function() {
		mypops[33] = $.initPopup({
			content : "#content",
			targetSelector : "#peopleType",
			insideOrFollow : "follow",
			relativePosition : "bottom"
		}).addButton("确定")
	})
	function showPopup(index, content) {

		mypops[index].showPopup(content);
	}

	$('#peopleType').click(function(){
			var adult = $('#adultcount').val();
			console.log('adult');
			
			
		})
	// 		$('input').hover(over,out);
	// 		function over(){
	// 			//$(this).removeClass('s1',1000).addClass('s2',1000)
	// 			$(this).switchClass('search_input_1','search_input_1hover',1000)
	// 		}
	// 		function out(){
	// 			//$(this).removeClass('s2',1000).addClass('s1',1000)
	// 			$(this).switchClass('search_input_1hover','search_input_1',1000)
	// 		}
	// 		$('#peopleType').click(function() {
	// 			alert('aaaa')
	// 			$(this).append(

	// 			'<div>111</div>'
	// 			)

	// 		})

	// 	})
	// 			$('#home_search_button').click(function() {
	// 				alert("button被按了一下");
	// 				var goPlace = $('#goPlace').val();
	// 				var goPlace2 = $('#goPlace2').val();
	// 				var checkin_date = $('#checkin_date').val();
	// 				var checkout_date = $('#checkout_date').val();
	// 				var peopleType = $('#peopleType').val();
	// 				var cabin = $('#search-controls-cabin-class-dropdown').val();
	// 				$.ajax({
	// 					url : '/Travel/FlightInfo',
	// 					contentType : 'application/json; charset=UTF-8',
	// 					type : 'get',
	// 					dataType : 'json',
	// 					data:{
	// 						"takeOffPlace": goPlace,
	// 						"landingPlace":goPlace2,
	// 						"checkin_date":checkin_date,
	// 						"checkout_date":checkout_date,
	// 						"peopleType":peopleType,
	// 						"cabinclass":cabin
	// 					}
	// 				}).done(function(JData) {
	// 					console.log(JData)

	// 					})

	// 			});
	// 	});
</script>
</head>
<body>

	<jsp:include page="/voyage/nav.jsp" />
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/home_slider.jpg'/>')"
			data-stellar-background-ratio="0.5">
			<div class="overlay">
				<div class="container"></div>
			</div>
		</div>
	</section>
	<!-- END slider -->

	<!-- add this div by Alex -->
	<!-- Search -->

	<div class="home_search" style="margin-top: -150px">
		<form action="<c:url value="/FlightInfoNew" />"
			class="home_search_form" id="home_search_form" method="POST">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_search_container">
							<!-- 						<div class="home_search_title">想飛哪就選哪</div> hidden-->
							<div class="home_search_title">
								<div class="form-group">
									<div class="form-checkbox">
										<div class="radio-beauty-container">
											<div style="display: inline-block;">
												<input type="radio" name="flystyle" id="flystyle1"
													hidden=true style="display: inline-block;"
													checked="checked" /> <label for="goandback"
													class="radio-beauty" style="display: inline-block;"></label><span
													class="radio-name">往返</span>
											</div>
											<div style="display: inline-block;">
												<input type="radio" name="flystyle" id="go" hidden=true
													style="display: inline-block;" /> <label for="flystyle2"
													class="radio-beauty" style="display: inline-block;"></label><span
													class="radio-name">單程</span>
											</div>
											<div style="display: inline-block;">
												<input type="radio" name="flystyle" id="more" hidden=true
													style="display: inline-block;" /> <label for="flystyle3"
													class="radio-beauty" style="display: inline-block;"></label><span
													class="radio-name">多程</span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="home_search_content">

								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<div>
										<span class="form-label">出發地</span> <input id='demo2' name="takeOffPlace"
											type="text"  class="search_input_1"
											style="width: 450px" placeholder="請輸入機場/城市中英文或代碼" required="required" >
										<!-- 											required="required" -->
									</div>
									<img alt=""
										src="<c:url value='/voyage/images/changeTwoPlace.png'/>"
										width="25px" style="padding-top: 42px">
									<div>
										<span class="form-label">目的地</span> <input id='demo1' name="landingPlace"
											type="text"  class="search_input_1"
											style="width: 450px" placeholder="請輸入機場/城市中英文或代碼" required="required">
									</div>
								</div>

								<div style="display: inline-block; padding-right: 30px;">
									<span class="form-label">出發日期</span> <input type="text"
										 class="search_input_1" id="checkin_date" 
										placeholder="yyyy/MM/dd" name="takeoff_date" autocomplete="off">
								</div>
								<div style="display: inline-block; padding-right: 30px;">
									<span class="form-label">回程日期</span> <input type="text"
										 class="search_input_1"
										placeholder="yyyy/MM/dd" name="flyback_date" id="checkout_date" autocomplete="off">
								</div>
								<div style="display: inline-block; padding-right: 30px;width:200px;">
									<span class="form-label">旅客類型</span> <input type="text" id='peopleType' autocomplete="off"
										 class="search_input_1" value="1位成人" name="peopleType" onclick="showPopup(33)" style="width:200px;text-align: left;">
								</div>
								<div id="content" class="test">
									<div style="display: inline-block">
										<span>成人數量</span> <input type="image" style="display: inline-block"
											src="../voyage/images/MIN.png" class="min" width="8%">
										<input type="text" value="1" placeholder="0" id="adultcount" name="adultcount" 
											class="text_box" readonly="readonly"
											style="text-align: center; height: 30px; width: 40px; margin: 0; border: 0px;display: inline-block;">
										<input type="image" src="../voyage/images/PL.png" style="display: inline-block"
											class="add" width="8%"> <span>(年滿 16 歲)</span>
									</div>
									<div style="display: inline-block">
										<span>兒童數量</span> <input type="image" style="display: inline-block"
											src="../voyage/images/MIN.png" class="min" width="8%">
										<input type="text" value="" placeholder="0" id="childcount"
											class="text_box" readonly="readonly"
											style="text-align: center; height: 30px; width: 40px; margin: 0; border: 0px;display: inline-block;">
										<input type="image" src="../voyage/images/PL.png" style="display: inline-block"
											class="add" width="8%"> <span>(2~15 歲)</span>
									</div>
									<div style="display: inline-block">
										<span>嬰兒數量</span> <input type="image" style="display: inline-block"
											src="../voyage/images/MIN.png" class="min" width="8%">
										<input type="text" value="" placeholder="0" id="babycount" 
											class="text_box" readonly="readonly"
											style="text-align: center; height: 30px; width: 40px; margin: 0; border: 0px;display:inline-block">
										<input type="image" src="../voyage/images/PL.png" style="display: inline-block"
											class="add" width="8%"> <span>(0~2 歲)</span>
									</div>
									<div class="description">旅行時，您須符合預訂規定的年齡層。航空公司對於未滿 18
										歲單獨旅行的乘客有限制規定。</div>

									<div class="description">年齡限制與攜兒童旅行的政策可能不同，請先向航空公司確認，然後再進行預訂。</div>
								</div>
								<div style="display: inline-block; padding-right: 30px;padding-left: 30px;">
									<span class="form-label">艙等</span> <select
										class="search_input_1"
										id="search-controls-cabin-class-dropdown"
										name="search-controls-cabin-class-dropdown"
										style="width: 150px; display: block;">
										<option value="Economy" selected="selected">經濟艙</option>
										<option value="PremiumEconomy">高端經濟艙</option>
										<option value="First">頭等艙</option>
										<option value="Business">商務艙</option>
									</select>
								</div>
								
								<button class="home_search_button" id="home_search_button"
									type="submit" >搜尋</button>
								<div style="padding-top: 10px">	
								<input type="checkbox" value="僅直飛" style="display: inline-block;margin:auto;" id="checkbox">
								<label for="checkbox" style="display: inline-block;"><span>僅直飛</span></label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
<script>
	function formDate()
{console.log($("form").serialize());
		}

</script>



	<script>
		$(document).ready(function() {
			peoplechoose();
		});
		
		function calPeopleCount(){
			var adultcount =$("#adultcount").val();
			var childcount =$("#childcount").val();
			var peopleCount ="";
			if (adultcount!= 0){
				peopleCount += adultcount+"位成人";
			}
			if (childcount!= 0){
				peopleCount += childcount+"位child";
			}
			$('#peopleType').val(peopleCount);
			
		}
		function peoplechoose() {
			$("#content").on("click", ".add", function() {
				var t = $(this).parent().find('input[class*=text_box]');
				if (t.val() == "" || undefined || null) {
					t.val(0);
				}
				t.val(parseInt(t.val()) + 1)
				calPeopleCount()
				
			})
			$("#content").on("click", ".min", function() {
				var t = $(this).parent().find('input[class*=text_box]');
				if (t.val() == "" || undefined || null) {
					t.val(0);
				}
				t.val(parseInt(t.val()) - 1)
				if (parseInt(t.val()) < 0) {
					t.val(0);
				}
				calPeopleCount()
			})
		}
	</script>
	<script src="<c:url value='/voyage/js/jquery.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery-migrate-3.0.1.min.js' />"></script>
	<script src="<c:url value='/voyage/js/popper.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.easing.1.3.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.waypoints.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.stellar.min.js' />"></script>
	<script src="<c:url value='/voyage/js/owl.carousel.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.magnific-popup.min.js' />"></script>
	<script src="<c:url value='/voyage/js/aos.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.animateNumber.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.timepicker.min.js' />"></script>
	<script src="<c:url value='/voyage/js/main.js' />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="http://www.bootcss.com/p/bootstrap-datetimepicker/index.htm"></script>
	<script src=" <c:url value='/flight/mohu/demo/js/demo.js'/>"
		type="text/javascript"></script>
	<%-- 	<link href=" <c:url value='/flight/mohu/demo/css/prettify.css'/>" rel="stylesheet" /> --%>
	<!--     <link href="css/bootstrap.css" rel="stylesheet"> -->
	<%--     <link href=" <c:url value='/flight/mohu/demo/css/demo.css'/>" rel="stylesheet"> --%>
	<script src=" <c:url value='/flight/mohu/demo/js/prettify.js'/>"
		type="text/javascript"></script>
	<script src=" <c:url value='/flight/mohu/demo/js/mockjax.js'/>"
		type="text/javascript"></script>
	<script src=" <c:url value='/flight/mohu/js/bootstrap-typeahead.js'/>"
		type="text/javascript"></script>
	<script
		src="<c:url value='/flight/彈窗/custom-popup/jquery.custom.popup-v1.3.1.js'/>"></script>
</body>
</html>