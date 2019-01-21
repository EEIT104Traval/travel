<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
	
</script>
<!DOCTYPE html>
<html lang="zh-tw">

<head>
<title>國外訂房</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="<c:url value='/voyage/favicon.ico' />">
<%-- <link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />"> --%>
<link rel="stylesheet"
	href="<c:url value='/voyage/css/bootstrap-datepicker.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/styleForHotel.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/jquery-ui.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/main_styles_sherry2.css' />">

<!-- icon -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<style>
@import
	url('https://fonts.googleapis.com/css?family=Noto+Sans+TC&subset=chinese-traditional')
	;

body {
	font-family: 'Noto Sans TC', sans-serif;
}
</style>
</head>
<script>
	var accountName = "${sessionScope.accountName}"

	$(document).ready(function() {
		// 		alert(accountName)
	});
</script>


<body style="background: white">
	<jsp:include page="/voyage/nav.jsp"></jsp:include>

	<!-- 	<!-- NAV -->
	-->
	<!-- 	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar"> -->
	<!--       <div class="container"> -->
	<%--       	<img alt="" src="<c:url value='/voyage/images/TTT.png' />" width="250px" height: auto;> --%>
	<!--         <div class="collapse navbar-collapse" id="ftco-nav"> -->
	<!--           <ul class="navbar-nav ml-auto"> -->
	<%--             <li class="nav-item"><a href="<c:url value='/voyage/contact.html'/>" class="nav-link">聯絡我們</a></li> --%>
	<!-- 		</div> -->
	<!--           </ul> -->
	<!--         </div> -->
	<!--     </nav> -->
	<!--     END nav -->

	<div class="container-fluid" style="padding-top: 80px">
		<div class="row" style="margin: 30px">

			<!-- 左邊 -->

			<div class="col-md-12">
				<div class="row">
					<div class="col-md-7">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-12" style="padding-left: 20px">
										<h4
											style="background: #fff5f2; color: #ff3d00; padding: 5px 0px 5px 10px">
											<i class="far fa-credit-card"></i> 房源非常緊張，建議盡快完成預訂
										</h4>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12" style="padding-left: 20px">
										<h4
											style="background: #f2fbf7; color: #00c853; padding: 5px 0px 5px 10px">
											<i class="fas fa-utensils"></i> 此訂單包括：2份早餐
										</h4>
									</div>
								</div>
								<!-- 							<div class="row"> -->
								<!-- 								<div class="col-md-12" style="padding-left:20px"> -->
								<!-- 									<h4 style="background:#fff5f2; color:#ff3d00; padding:5px 0px 5px 10px"><i class="fas fa-user"></i> 欲訂購，請先<span> -->
								<!-- 									<a id="hotel-login"style="border-bottom: 1px solid #ff3d00; color:#ff3d00" href="#">登入</a></span></h4> -->
								<!-- 								</div> -->
								<!-- 							</div> -->
								<div class="row">
									<div class="col-md-12">
										<div id="card-894316">
											<div class="card">
												<div class="card-header">
													<a class="card-link" data-toggle="collapse"
														data-parent="#card-894316" href="#card-element-547039">住客資料
														(入住旅客姓名必須與證件上顯示的一致)</a>
												</div>
												<div id="card-element-547039" class="collapse show">
													<div class="card-body">
														<p style="margin: 0px">房間數</p>
														<p style="margin-bottom: 10px; color: red">僅剩1間</p>
														<form action="#">
															<label>訂購人</label> <input style="margin-bottom: 10px"
																type="text" placeholder="請輸入姓名">
														</form>
														<p>此預訂最大入住人數：2</p>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header">
													<a class="card-link" data-toggle="collapse"
														data-parent="#card-894316" href="#card-element-706372">聯絡資訊</a>
												</div>
												<div id="card-element-706372" class="collapse show">
													<div class="card-body">
														<form action="#">
															<label>訂購人</label> <input style="margin-bottom: 10px"
																type="text" placeholder="電子郵件">
															<p style="margin-bottom: 10px">我們將發送確認郵件至您的電子信箱</p>
															<input type="text" placeholder="電話號碼">
														</form>
													</div>
												</div>
											</div>
										</div>
										<div class="row" style="margin-right: 15px">
											<div class="col-md-12"
												style="border: 1px solid rgba(0, 0, 0, 0.125); border-radius: 4px; background: white; margin: 0px 15px 0px 15px">
												<h4 style="margin: 10px 0px 10px 5px">到達時間</h4>
												<p style="margin: 0px 0px 10px 5px">最早入住時間為
													15:00。若提早到達有可能需要等候。</p>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div id="card-501538">
													<div class="card">
														<div class="card-header">
															<a class="card-link" data-toggle="collapse"
																data-parent="#card-501538" href="#card-element-174917">推廣活動</a>
														</div>
														<div id="card-element-174917" class="collapse show">
															<div class="card-body">
																<div>
																
																<div class="row" style="margin: 0">
																	<div class="col-md-4"  style="padding:0px; margin-top:5px">
																		<span><input type="text" style="padding:0px" placeholder="優惠代碼"></span>
																	</div>
																	<div class="col-md-8"  style="padding:0px">
																		<button type="button" class="btn btn-danger">登入優惠</button>
																	</div>
																</div>
																
																</div>
															</div>
														</div>
													</div>
													<div class="card">
														<div class="card-header">
															<a class="collapsed card-link" data-toggle="collapse"
																data-parent="#card-501538" href="#card-element-585877">特別要求（選填）</a>
														</div>
														<div id="card-element-585877" class="collapse">
															<div class="card-body">
																<p style="margin-bottom: 10px">我們會將您的需求轉達給飯店，但我們無法確保飯店能夠滿足。</p>
																<textarea rows="4" cols="75"></textarea>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="row" style="margin: 15px 0px 15px 0px">
											<div class="col-md-12">
												<p class="mb-0">前往下一步即表示您已閱讀並接受 TimeToTravel.com 之
													條款及條件和 隱私條款。</p>
											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-6"></div>
													<div class="col-md-6"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row" style="background: #fff7f2; margin: 0">
									<div class="col-md-10">
										<h5 style="margin: 10px 10px">飯店會在您登記入住時或之前從您的信用卡收取房價。TimeToTravel.com 並不會對您的信用卡扣款</h5>
									</div>
									<div class="col-md-2">
										<button type="button" class="btn btn-danger"
											style="margin: 20px 0px 0px 10px">訂購</button>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12"></div>
								</div>
								<div style="margin: 15px 10px 15px 15px">
									<p>重要須知</p>
									<p>[2018年07月28日 - 2020年12月31日] 客人在辦理入住手續時須出示帶照片的身份證件和信用卡。
										請注意：所有特殊要求均視住宿的供應情況而定，也可能收取額外費用。 請注意，酒店將通過預授權收取每晚75美元的雜費押金。
										強制性度假費包括： 供3臺設備連接的WiFi Lobby Lounge休息室或Bridges Bar酒吧15美元的飲品 Herb N' Kitchen 餐廳 10 美元的食品券， 
										僅限外帶食物撥打本地和免付費電話酒店不支持未滿21周歲的客人單獨入住，部分酒店、房型存在特殊政策，請以酒店告知為準。
										如果預訂客房數超過9間，住宿方將采用不同的政策和額外補充規定 。</p>
									<p>付款方式</p>
									<p>根據預訂規則，該訂單確認後不可取消修改。您需預付訂單全額。攜程會把您的有效信用卡資料加密後傳送酒店，由酒店提前操作扣款。</p>
								</div>
							</div>
							<a href="<c:url value='/voyage/hotel/roomTypeSearch.jsp' />"
								style="margin: 0px 10px 10px 0px; padding-left: 30px">
								<i class="fas fa-chevron-left"></i> 變更我的選擇</a>
						</div>
					</div>

					<!-- 右邊 -->

					<div class="col-md-5">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-12">
										<div style="border: 8px solid #f5f9ff">
											<div
												style="border-bottom: 1px dotted grey; padding-bottom: 10px; margin: 10px">
												<!-- 分隔線  -->
												<div class="row">
													<div class="col-md-6" style="padding: 0px">
														<img alt="Bootstrap Image Preview"
															style="margin-left: 17px" width="90%"
															src="https://dimg04.c-ctrip.com/images/fd/hotel/g2/M05/31/12/Cghzf1VNFfCAID8bAAqxINPZe2w423_R_800_525_R5_D.jpg" />
													</div>
													<div class="col-md-6" style="padding-left: 8px">
														<h5 style="margin: 10px 0px 0px 0px; padding: 0px">紐約市中心希爾頓酒店</h5>
														<h6 style="margin: 0">(New York Hilton Midtown)</h6>
														<p style="margin: 20px 0px 0px 3px">
															<i class="fas fa-star"></i><i class="fas fa-star"></i><i
																class="fas fa-star"></i><i class="fas fa-star"></i>
														</p>
														<p style="margin: 20px 0px 0px 3px">1335 Avenue of the
															Americas</p>
													</div>
												</div>
											</div>
											<!-- END 分隔線  -->
											<div class="row">
												<div class="col-md-5">
													<p style="margin-left: 20px">入住時間:</p>
												</div>
												<div class="col-md-5">
													<p>退房時間:</p>
												</div>
												<div class="col-md-2"></div>
											</div>
											<div class="row">
												<div class="col-md-5">
													<p style="margin-left: 20px; padding: 0px; color:red">2019年1月19日</p>
												</div>
												<div class="col-md-5">
													<p style="padding: 0px; color:red">2019年1月20日</p>
												</div>
												<div class="col-md-2">
													<p style="color:red">1 晚</p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-5">
													<p style="margin-left: 20px; padding: 0px">15:00後</p>
												</div>
												<div class="col-md-2">
													<p>12:00前</p>
												</div>
												<div class="col-md-2"></div>
												<a href="#" style="margin-left: 25px">更改日期</a>
											</div>
											<div
												style="border-bottom: 1px dotted grey; padding-bottom: 10px; margin: 10px"></div>
											<!-- 分隔線  -->
											<div class="row">
												<div class="col-md-6">
													<p style="margin-left: 20px">天際大床房</p>
												</div>
												<div class="col-md-6"></div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<p style="margin-left: 20px">每間房最多入住人數</p>
												</div>
												<div class="col-md-6">
													<p>2</p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<p style="margin-left: 20px">床型</p>
												</div>
												<div class="col-md-6">
													<p>1 張加大雙人床</p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<p style="margin-left: 20px">早餐</p>
												</div>
												<div class="col-md-6">
													<p>2 份早餐</p>
												</div>
											</div>
											<div
												style="border-bottom: 1px dotted grey; padding-bottom: 10px; margin: 10px"></div>
											<!-- 分隔線  -->
											<div class="row">
												<div class="col-md-6">
													<p style="margin-left: 20px">1 房間 x 1 晚</p>
												</div>
												<div class="col-md-6">
													<p style="color:red">NT$ 15,000</p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<p style="margin-left: 20px">稅項及附加費</p>
												</div>
												<div class="col-md-6">
													<p style="color:red">NT$ 2,000</p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<p style="margin-left: 20px">應付總額</p>
												</div>
												<div class="col-md-6">
													<p style="color:red">NT$ 17,000</p>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6"></div>
												<div class="col-md-6">
													<p style="color:red">(約 US$ 546.38)</p>
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
	</div>

	<hr>
	<div style="text-align: center">
		<p>Copyright © 1999-2019 Time To Travel All rights reserved<p>
	</div>

	<%-- 	<script src="<c:url value='/voyage/js/aos.js' />"></script> --%>
	<script src="<c:url value='/voyage/js/jquery.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery-migrate-3.0.1.min.js' />"></script>
	<script src="<c:url value='/voyage/js/popper.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/voyage/js/owl.carousel.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script>
	<%-- 	<script src="<c:url value='/voyage/js/main.js' />"></script> --%>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</body>
</html>