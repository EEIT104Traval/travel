<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/step3.css'/>" />
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/trip.css'/>" />
</head>
<body>
<div class="header-wrapper">
		<div class="header" id="J_hd">
			<div class="ctriplogo">
<!-- 			class="ctriplogo" -->
				<a href="  <c:url value='/voyage/index.jsp'/>"><img alt="" width="150px" src="<c:url value='/voyage/images/TTT-black.png'/>"></a>
			</div>
			<div class="order-progress">
				<div class="prog-step prog-current">
					<div class="progress-line"></div>
					<h4>
						乘机信息<i class="ico ico-step"></i>
					</h4>
				</div>
<!-- 				<div class="prog-step"> -->
<!-- 					<div class="progress-line"> -->
<!-- 						<h4>增值服务</h4> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="prog-step">
					<div class="progress-line">
						<h4>支付</h4>
					</div>
				</div>
				<div class="prog-step">
					<div class="progress-line">
						<h4>完成</h4>
					</div>
				</div>
			</div>
			<div class="loginbar">
				<span id="J_quickUserName" class="ctrip-username"
					style="display: none;">尊敬的会员</span> <a id="J_quickLogin"
					href="javascript:((window.openLoginModal || {}).andOkToReload || __SSO_loginShow ||  function(){})('refresh', true, 0, true);"
					class="ctrip-username">登录</a> <a href="http://kefu.ctrip.com"
					target="_blank" class="callcenter">客服中心</a>
			</div>
		</div>
	</div>

	<div class="order_info" style="margin-bottom: 10px;width: 80%;margin:0px auto;">
		<!-- S 订单金额 -->
		<div class="price_area">
			<div class="price_h1">
				订单金额<span class="price_s1">¥<i w-html="amount|number:2">2428.00</i></span>
			</div>
		</div>
		<!-- E 订单金额 -->
		<!-- S 订单标题 -->
		<div class="order_tit">
			<h2>往返机票&nbsp;&nbsp;上海 - 广州</h2>
			<h3>
				去程&nbsp;&nbsp;虹桥国际机场T2 -
				白云国际机场T2&nbsp;&nbsp;&nbsp;&nbsp;出发时间：2019-01-24&nbsp;&nbsp;20:15:00<br>返程&nbsp;&nbsp;白云国际机场T1
				-
				虹桥国际机场T2&nbsp;&nbsp;&nbsp;&nbsp;出发时间：2019-01-26&nbsp;&nbsp;16:20:00<br>乘机人：ZHU/WEI
				&nbsp;&nbsp;&nbsp;乘机证件：护照 J96811445<br>
			</h3>
			<div class="price_num">
				<i></i>请在<span>13:38</span>之前支付订单，超时订单可能会被取消
			</div>
			<i class="bg_icon01"></i>
		</div>
		<!-- E 订单标题 -->
		<!-- S 订单详情 -->
		<div class="order_detail" style="display: none"
			w-show="[==,isOrderDetailsShow,#true]"></div>
		<!-- E 订单详情 -->
		<!-- S 提示信息 -->
		<div class="tip_area">
			航班价格变动频繁，请在15分钟内完成支付以免耽误出行 <i></i>
		</div>
		<!-- E 提示信息 -->
	</div>

</body>
</html>