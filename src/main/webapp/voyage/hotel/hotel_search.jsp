<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Voyage - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<link rel="stylesheet" href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/owl.carousel.min.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/owl.theme.default.min.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/magnific-popup.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/ionicons.min.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/bootstrap-datepicker.css' />">
<%-- <link rel="stylesheet" href="<c:url value='/voyage/css/jquery.timepicker.css' />"> --%>
<link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">

<link rel="stylesheet"	href="https://scss.settour.com.tw/vendor.css?1547708750755">
<link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="<c:url value='/voyage/css/jquery-ui.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles_sherry.css' />">
	
<link data-react-helmet="true" rel="author"	href="https://plus.google.com/103719721831316369301">
<link data-react-helmet="true" rel="publisher"	href="https://plus.google.com/103719721831316369301">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"	rel="stylesheet">
<link id="spStyleCss" rel="stylesheet"	href="//settour.api.useinsider.com/css/sp-style.css?v=0.1"	type="text/css" media="screen">
<link rel="stylesheet"	href="https://scss.settour.com.tw/tour.css?1547708750755">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

<script charset="UTF-8">

</script>
<script async=""
	src="https://script.hotjar.com/modules-7a540391ba1fb992682e401dac39619b.js"></script>
<style type="text/css">
iframe#_hjRemoteVarsFrame {
	display: none !important;
	width: 1px !important;
	height: 1px !important;
	opacity: 0 !important;
	pointer-events: none !important;
}

.product-item .area-price {
    position: absolute;
    bottom: 0;
    right: 15px;
}



</style>
<script type="text/javascript" async="" src="//api.useinsider.com/js/squery.min.js"></script>
<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/853971459/?random=1547708750063&amp;cv=9&amp;fst=1547708750063&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=592230571&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=21&amp;u_tz=480&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2wg170&amp;sendb=1&amp;frm=0&amp;url=https%3A%2F%2Ftour.settour.com.tw%2Fsearch%3FkeyWords%3D%26sortType%3DBA%26arrDate%3D20190420%26pfpClass%3D%26destinationCode%3DAUS003_3%26keyword%3D%26depAirportCode%3D%26isOrder%3Dtrue%26arrAirportCode%3D%26tripType%3D%26tktNmCode%3D%26isOrderFlag%3Dtrue%26grupStatus%3D%26airlineCode%3D%26depDate%3D20190120%26departureCode%3DTPE&amp;ref=https%3A%2F%2Fwww.settour.com.tw%2Fgfg%2F&amp;tiba=%E6%90%9C%E5%B0%8B%E7%B5%90%E6%9E%9C-%E5%9C%8B%E5%A4%96%E5%9C%98%E9%AB%94%E6%97%85%E9%81%8A%20%7C%20%E6%9D%B1%E5%8D%97%E6%97%85%E9%81%8A%E7%B6%B2&amp;li=0-0_1-1055_2-1056_3-555_4-659&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/854687825/?random=1547708752097&amp;cv=9&amp;fst=1547708752097&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=21&amp;u_tz=480&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2wg170&amp;sendb=1&amp;frm=0&amp;url=https%3A%2F%2Ftour.settour.com.tw%2Fsearch%3FkeyWords%3D%26sortType%3DBA%26arrDate%3D20190420%26pfpClass%3D%26destinationCode%3DAUS003_3%26keyword%3D%26depAirportCode%3D%26isOrder%3Dtrue%26arrAirportCode%3D%26tripType%3D%26tktNmCode%3D%26isOrderFlag%3Dtrue%26grupStatus%3D%26airlineCode%3D%26depDate%3D20190120%26departureCode%3DTPE&amp;ref=https%3A%2F%2Fwww.settour.com.tw%2Fgfg%2F&amp;tiba=%E6%90%9C%E5%B0%8B%E7%B5%90%E6%9E%9C-%E5%9C%8B%E5%A4%96%E5%9C%98%E9%AB%94%E6%97%85%E9%81%8A%20%7C%20%E6%9D%B1%E5%8D%97%E6%97%85%E9%81%8A%E7%B6%B2&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/955153939/?random=1547708752098&amp;cv=9&amp;fst=1547708752098&amp;num=1&amp;label=p2d4CKXysFkQk_y5xwM&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=21&amp;u_tz=480&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;gtm=2wg170&amp;sendb=1&amp;frm=0&amp;url=https%3A%2F%2Ftour.settour.com.tw%2Fsearch%3FkeyWords%3D%26sortType%3DBA%26arrDate%3D20190420%26pfpClass%3D%26destinationCode%3DAUS003_3%26keyword%3D%26depAirportCode%3D%26isOrder%3Dtrue%26arrAirportCode%3D%26tripType%3D%26tktNmCode%3D%26isOrderFlag%3Dtrue%26grupStatus%3D%26airlineCode%3D%26depDate%3D20190120%26departureCode%3DTPE&amp;ref=https%3A%2F%2Fwww.settour.com.tw%2Fgfg%2F&amp;tiba=%E6%90%9C%E5%B0%8B%E7%B5%90%E6%9E%9C-%E5%9C%8B%E5%A4%96%E5%9C%98%E9%AB%94%E6%97%85%E9%81%8A%20%7C%20%E6%9D%B1%E5%8D%97%E6%97%85%E9%81%8A%E7%B6%B2&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>


</head>

<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>

<body>
	<jsp:include page="/voyage/nav.jsp"></jsp:include>
		<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/bg_room.jpg'/>');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container"></div>
		</div>
	</section>
	<!-- END slider -->


	<div class="container">
		<div class="search">
			<div class="row">
				<div class="search-left col-md-3">
					<aside class="hidden-sm hidden-xs">
						<section class="filter-criteria">
							<h4 class="tit-m">
								<i class="fa fa-filter"></i><strong>篩選項目</strong>
							</h4>
							<div class="filter-criteria-item">
								<h5 class="filter-criteria-item-title" aria-expanded="true"
									aria-controls="filter1" data-toggle="collapse">
									預算價格<i class="fa fa-angle-down active" aria-hidden="true"></i>
								</h5>
								<div class="filter-criteria-item-option-area collapse in"
									id="filter1" style="">
									<div class="filter-criteria-item-text">
										$<span>10,000</span> ~ $<span>60,000</span>
									</div>
									<div class="filter-criteria-item-option">
										<div class="adj-price">
											<div class="rc-slider">
												<div class="rc-slider-rail"></div>
												<div class="rc-slider-track rc-slider-track-1"
													style="left: 0%; width: 100%;"></div>
												<div class="rc-slider-step"></div>
												<div tabindex="0"
													class="rc-slider-handle rc-slider-handle-1"
													style="left: 0%;" role="slider" aria-valuemin="62800"
													aria-valuemax="92900" aria-valuenow="62800"
													aria-disabled="false"></div>
												<div tabindex="0"
													class="rc-slider-handle rc-slider-handle-2"
													style="left: 100%" role="slider" aria-valuemin="62800"
													aria-valuemax="92900" aria-valuenow="92900"
													aria-disabled="false"></div>
												<div class="rc-slider-mark"></div>
											</div>
											<div class="rc-slider-mark"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="filter-criteria-item">
								<h5 class="filter-criteria-item-title" data-toggle="collapse"
									aria-expanded="true" aria-controls="filter2">
									<span class="icon-star"></span> 星級<i class="fa fa-angle-down active" aria-hidden="true"></i>
								</h5>
								<div class="filter-criteria-item-option collapse in" style="">
									<div class="checkbox">
										<input type="checkbox" id="checkbox-tourday-0"
											name="checkbox-tourday-0"><label
											for="checkbox-tourday-0" class="checkbox-label"><strong><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span></strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-tourday-1"
											name="checkbox-tourday-1"><label
											for="checkbox-tourday-1" class="checkbox-label"><strong><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span></strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-tourday-2"
											name="checkbox-tourday-2"><label
											for="checkbox-tourday-2" class="checkbox-label"><strong><span class="icon-star"></span><span class="icon-star"></span><span class="icon-star"></span></strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-tourday-3"
											name="checkbox-tourday-3"><label
											for="checkbox-tourday-3" class="checkbox-label"><strong><span class="icon-star"></span><span class="icon-star"></span></strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-tourday-4"
											name="checkbox-tourday-4"><label
											for="checkbox-tourday-4" class="checkbox-label"><strong><span class="icon-star"></span></strong></label>
									</div>
								</div>
							</div>
							<div class="filter-criteria-item">
								<h5 class="filter-criteria-item-title" data-toggle="collapse"
									aria-expanded="true" aria-controls="filter3">
									飯店設備<i class="fa fa-angle-down active" aria-hidden="true"></i>
								</h5>
								<div class="filter-criteria-item-option collapse in" style="">
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-0"
											name="checkbox-mkt-0"><label for="checkbox-mkt-0"
											class="checkbox-label"><strong>電梯</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-1"
											name="checkbox-mkt-1"><label for="checkbox-mkt-1"
											class="checkbox-label"><strong>兒童床</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-2"
											name="checkbox-mkt-1"><label for="checkbox-mkt-2"
											class="checkbox-label"><strong>加床</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-3"
											name="checkbox-mkt-1"><label for="checkbox-mkt-3"
											class="checkbox-label"><strong>停車場</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-4"
											name="checkbox-mkt-1"><label for="checkbox-mkt-4"
											class="checkbox-label"><strong>健身房</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-5"
											name="checkbox-mkt-1"><label for="checkbox-mkt-5"
											class="checkbox-label"><strong>房內 Wi-fi</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-6"
											name="checkbox-mkt-1"><label for="checkbox-mkt-6"
											class="checkbox-label"><strong>吹風機</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-7"
											name="checkbox-mkt-1"><label for="checkbox-mkt-7"
											class="checkbox-label"><strong>吸菸室</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-8"
											name="checkbox-mkt-1"><label for="checkbox-mkt-8"
											class="checkbox-label"><strong>機場短途巴士</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-9"
											name="checkbox-mkt-1"><label for="checkbox-mkt-9"
											class="checkbox-label"><strong>盥洗用品</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-10"
											name="checkbox-mkt-1"><label for="checkbox-mkt-10"
											class="checkbox-label"><strong>保險箱</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-11"
											name="checkbox-mkt-1"><label for="checkbox-mkt-11"
											class="checkbox-label"><strong>冰箱</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-12"
											name="checkbox-mkt-1"><label for="checkbox-mkt-12"
											class="checkbox-label"><strong>衣物烘乾機</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-13"
											name="checkbox-mkt-1"><label for="checkbox-mkt-13"
											class="checkbox-label"><strong>允許小型寵物 (上限5公斤)</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-14"
											name="checkbox-mkt-1"><label for="checkbox-mkt-14"
											class="checkbox-label"><strong>私人游泳池</strong></label>
									</div>
									<div class="checkbox">
										<input type="checkbox" id="checkbox-mkt-15"
											name="checkbox-mkt-1"><label for="checkbox-mkt-15"
											class="checkbox-label"><strong>提供自行車</strong></label>
									</div>
								</div>
							</div>
						</section>
					</aside>
					<div></div>
				</div>
				
				
				<div class="search-right col-md-9">
					<div class="product">
						<section class="search-area-title tour">
							<div class="clearfix">
								<div class="pull-left">
									<h1 class="tit-lg">
										<i class="fa fa-search"></i><strong>國外訂房</strong>
									</h1>
									<div class="slash">
										<span></span>
									</div>
									<div class="tag-result">
										查詢結果：<span class="red">8</span>筆(金額單位：新台幣含稅)
									</div>
								</div>
								<div class="sort pull-right hidden-sm hidden-xs">
									<span>顯示：</span>
									<button type="button" class="btn-switch">
										個團<i class="fa fa-flag" aria-hidden="true"></i>
									</button>
									<button type="button" class="btn-switch active">
										行程<i class="fa fa-map-signs" aria-hidden="true"></i>
									</button>
								</div>
								<div class="sort pull-right hidden-sm hidden-xs">
									<span>排序：</span><select class="select-boder"
										id="modalSearchResultSort"
										style="background-image: url(&quot;https://www.settour.com.tw/st_ec/img/newWeb/icon/icon-dropdown.png&quot;);"><option
											value="PH">價格低→高</option>
										<option value="PL">價格高→低</option>
										<option value="SH">星級低→高</option>
										<option value="SL">星級高→低</option></select>
								</div>
							</div>
						</section>
						<section class="product-list">
							<div>
								<div class="infinite-scroll-component"
									style="height: auto; overflow: initial;">
									<article class="product-item tour">
										<div class="container-fluid">
											<div class="row" style=" margin-right: -15px;  margin-left: -1px;">
												<div class="serach-img col-md-4 col-sm-5">
													<a href="/product/GFG0000012035/AUKA9B90204A"
														target="_blank"><img
														alt="【直昇機體驗+無尾熊抱抱】春節東澳全覽九日(含雪梨夜遊及含小費)BM"
														class="img-responsive"
														src="https://photo.settour.com.tw/600x400/https%3A%2F%2Fs2.settour.com.tw%2Fss_img%2FGFG%2F0000%2F0120%2F35%2Fori_7821708.jpg"></a>
<!-- 													<div class="favorite hidden-xs"> -->
<!-- 														<div class="btn-collect-nobox"></div> -->
<!-- 													</div> -->
												</div>
												<div class="product-info col-md-6 col-sm-7">
													<h4 class="product-name">
														<a href="/product/GFG0000012035/AUKA9B90204A"
															target="_blank"><div
																style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 3;">【直昇機體驗+無尾熊抱抱】春節東澳全覽九日(含雪梨夜遊及含小費)BM</div></a>
													</h4>
													<div class="product-info-tag-area">
														<div class="tag solid yellow">已成團</div>
													</div>
													<div
														class="product-info-bottom hidden-md hidden-sm hidden-xs">
														<div>桃園出發</div>
														<div>團號：AUKA9B90204A</div>
														<div>機位 洽客服</div>
														<div class="order-btn">
															<a role="button" data-toggle="collapse"
																href="#slider-flightInfo_AUKA9B90204A"
																aria-expanded="true" aria-controls="slider-flightInfo">航班<i
																class="fa fa-angle-down" aria-hidden="true"></i></a>
														</div>
													</div>
												</div>
												<div class="product-item-right-text">
													<strong>02/04，洽客服</strong>
												</div>
												<div class="area-price col-md-2 col-sm-12">
													<div class="row">
														<div class="col-md-12 col-xs-8">
															<div class="price">
																<div class="ori-price">9天</div>
																<div>
																	<span class="price-uni">$</span>92,900<em>起</em>
																</div>
															</div>
														</div>
														<div class="price-btn col-md-12 col-xs-4">
															<button class="btn-order">看詳細</button>
														</div>
													</div>
												</div>
											</div>
											<div id="slider-flightInfo_AUKA9B90204A"
												class="slider-flight-info tour hidden-md hidden-sm hidden-xs collapse">
												<div class="slider-flight-info-item-area"></div>
												<div class="cart-notice type2">
													<div class="editor-area">
														<p>實際搭乘航班請以行前說明會資料為準</p>
													</div>
												</div>
												<div class="slider-flight-info-close-btn">
													<div data-toggle="collapse" href="#slider-flightInfo"
														aria-expanded="true" aria-controls="slider-flightInfo">
														收合參考航班<i class="fa fa-angle-up" aria-hidden="true"></i>
													</div>
												</div>
											</div>
										</div>
									</article>
									<article class="product-item tour">
										<div class="container-fluid">
											<div class="row" style=" margin-right: -15px;  margin-left: -1px;">
												<div class="serach-img col-md-4 col-sm-5">
													<a href="/product/GFG0000001333/AUSPA990219A"
														target="_blank"><img
														alt="【澳遊客】東澳全覽9日(3城夜遊+小費+4★住宿&amp;黃金升等)"
														class="img-responsive"
														src="https://photo.settour.com.tw/600x400/https%3A%2F%2Fs2.settour.com.tw%2Fss_img%2FGFG%2F0000%2F0013%2F33%2Fori_2205181.jpg"></a>
													
												</div>
												<div class="product-info col-md-6 col-sm-7">
													<h4 class="product-name">
														<a href="/product/GFG0000001333/AUSPA990219A"
															target="_blank"><div
																style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 3;">【澳遊客】東澳全覽9日(3城夜遊+小費+4★住宿&amp;黃金升等)</div></a>
													</h4>
													<div class="product-info-tag-area">
														<div class="tag blue has-tooltip">
															聯營 <i class="fa fa-info-circle" aria-hidden="true"></i>
															<div class="st-tooltip">為提升您順利成行的機率，東南旅行社特別邀集數家結盟旅行社共同出團，領隊由結盟旅行社挑選指派，旅遊品質由聯盟共同承諾，提供您最好的旅遊品質並確保您的權益。</div>
														</div>
													</div>
													<div
														class="product-info-bottom hidden-md hidden-sm hidden-xs">
														<div>桃園出發</div>
														<div>團號：AUSPA990219A</div>
														<div>機位 洽客服</div>
														<div class="order-btn">
															<a role="button" data-toggle="collapse"
																href="#slider-flightInfo_AUSPA990219A"
																aria-expanded="true" aria-controls="slider-flightInfo">航班<i
																class="fa fa-angle-down" aria-hidden="true"></i></a>
														</div>
													</div>
												</div>
												<div class="product-item-right-text">
													<strong>02/19，洽客服</strong>
												</div>
												<div class="area-price col-md-2 col-sm-12">
													<div class="row">
														<div class="col-md-12 col-xs-8">
															<div class="price">
																<div class="ori-price">9天</div>
																<div>
																	<span class="price-uni">$</span>62,800<em>起</em>
																</div>
															</div>
														</div>
														<div class="price-btn col-md-12 col-xs-4">
															<button class="btn-order">看詳細</button>
														</div>
													</div>
												</div>
											</div>
											<div id="slider-flightInfo_AUSPA990219A"
												class="slider-flight-info tour hidden-md hidden-sm hidden-xs collapse">
												<div class="slider-flight-info-item-area"></div>
												<div class="cart-notice type2">
													<div class="editor-area">
														<p>實際搭乘航班請以行前說明會資料為準</p>
													</div>
												</div>
												<div class="slider-flight-info-close-btn">
													<div data-toggle="collapse" href="#slider-flightInfo"
														aria-expanded="true" aria-controls="slider-flightInfo">
														收合參考航班<i class="fa fa-angle-up" aria-hidden="true"></i>
													</div>
												</div>
											</div>
										</div>
									</article>



									<div class="no-data-info text-center">已經到底了，沒有東西囉</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
		<div class="pin-bottom-bar hidden-lg hidden-md">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-2">
						<button type="button" class="btn-select">篩選</button>
					</div>
					<div class="col-xs-2">
						<button type="button" class="btn-select">行程</button>
					</div>
					<div class="col-xs-8 text-center">
						排序：<select class="select-boder"
							style="background-image: url(&amp;quot;https://www.settour.com.tw/st_ec/img/newWeb/icon/icon-dropdown.png&amp;quot;)"
							id="modalSearchResultSort"><option selected=""
								value="BA">出發日近→遠</option>
							<option value="BD">出發日遠→近</option>
							<option value="PA">價格低→高</option>
							<option value="PD">價格高→低</option></select>
					</div>
				</div>
			</div>
		</div>
	</div>



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

</body>
</html>