<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="http://www.jq22.com/js/jq.js"></script> -->
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/step3.css'/>" />
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/trip.css'/>" />
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/fab-styles.min.css'/>" />
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/passager.css'/>" />
	
	<script type="text/javascript">




// var intDiff = parseInt(60);//倒计时总秒数量



function timer(intDiff){

	window.setInterval(function(){

// 	var day=0,

// 		hour=0,

		minute=0,

		second=0;//时间默认值		

	if(intDiff > 0){

		day = Math.floor(intDiff / (60 * 60 * 24));

		hour = Math.floor(intDiff / (60 * 60)) - (day * 24);

		minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);

		second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);

	}

	if (minute <= 9) minute = '0' + minute;

	if (second <= 9) second = '0' + second;

	$('#day_show').html(day+"天");

	$('#hour_show').html('<s id="h"></s>'+hour+'时');

	$('#minute_show').html('<s></s>'+minute+'分');

	$('#second_show').html('<s></s>'+second+'秒');

	intDiff--;

	}, 1000);

} 



$(document).ready(function(){
	var intDiff = parseInt(899);
	timer(intDiff);

});	

</script>
</head>
<body>
<div class="header-wrapper">
		<div class="header" id="J_hd">
			<div class="ctriplogo">
<!-- 			class="ctriplogo" -->
				<a href="  <c:url value='/voyage/index.jsp'/>"><img alt="" width="150px" src="<c:url value='/voyage/images/TTT-black.png'/>"></a>
			</div>
			<div class="order-progress">
				<div class="prog-step">
					<div class="progress-line"></div>
					<h4>
						乘机信息
<!-- 						<i class="ico ico-step"></i> -->
					</h4>
				</div>
<!-- 				<div class="prog-step"> -->
<!-- 					<div class="progress-line"> -->
<!-- 						<h4>增值服务</h4> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="prog-step  prog-current">
					<div class="progress-line">
						<h4>支付<i class="ico ico-step"></i></h4>
						
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
<div>
	<div class="order_info" style="margin-bottom: 10px;width: 80%;margin:0px auto;">
		<!-- S 订单金额 -->
		<div class="price_area">
			<div class="price_h1">
				订单金额<span class="price_s1">¥<i w-html="amount|number:2">2428.00</i></span>
			</div>
		</div>
		<!-- E 订单金额 -->
		<div class="price_num" style="margin-top: 80px;display: inline-block;position: none;">
				<div class="time-item">
			請在   <strong id="minute_show">14分</strong>

				<strong id="second_show">60秒</strong>之前支付订单，超时订单可能会被取消

				</div>
		</div>
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
	
	<fieldset class="section-fieldset section-payment-billing-payment fb-fieldset" sf-field="2">
    <div class="section" style="height: 350px;">
        <h2 class="section-heading outer-gutter-base">
            <i class="icon-lock"></i>
            付款詳細資料
        </h2>

        <div class="outer-gutter-base">
            <h4>放心，我們將會安全處理您的訂單</h4>
        </div>


        <!----><div ng-if="evalExpr('paymentCtrl.showCardsFeeComponent')" class="outer-gutter-base">
            <fb-card-fees cards="evalExpr('paymentCtrl.cards')" texts="evalExpr('paymentCtrl.props.cardFees.texts')" on-popover-open="evalExpr('paymentCtrl.props.cardFees.trackCardFeesPopoverOpened')" on-popover-close="evalExpr('paymentCtrl.props.cardFees.trackCardFeesPopoverClosed')"><div class="CardFees__container-2xCaf"><div><svg class="PaymentIcon-21cXy" width="37" height="24" xmlns="http://www.w3.org/2000/svg"><g fill="none" fill-rule="evenodd"><rect fill="#FFF" width="36.655" height="24" rx="1.772"></rect><rect stroke="#DDD" stroke-width=".923" x=".462" y=".462" width="35.732" height="23.077" rx="1.772"></rect><path d="M17.771 7.18l-1.858 9.795h-2.248l1.86-9.794h2.246zm9.454 6.324l1.184-3.677.68 3.677h-1.864zm2.508 3.471h2.077l-1.812-9.794h-1.92c-.43 0-.795.283-.956.718l-3.37 9.076h2.357l.47-1.463h2.883l.27 1.463zm-5.866-3.196c.01-2.589-3.17-2.73-3.148-3.883.007-.353.304-.726.953-.822.322-.048 1.209-.084 2.216.437l.394-2.078A5.468 5.468 0 0 0 22.18 7c-2.22 0-3.784 1.332-3.797 3.24-.013 1.41 1.116 2.196 1.968 2.665.875.48 1.168.788 1.166 1.219-.007.655-.7.946-1.345.955-1.13.023-1.787-.343-2.308-.615l-.408 2.145c.525.272 1.493.506 2.5.52 2.36 0 3.904-1.317 3.91-3.35zM14.56 7.18l-3.64 9.794H8.544L6.753 9.158c-.11-.482-.205-.656-.535-.86-.54-.331-1.431-.641-2.218-.834l.055-.283h3.823c.488 0 .925.364 1.036.999l.946 5.668 2.338-6.667h2.362z" fill="#10347E"></path></g></svg><svg class="PaymentIcon-21cXy" width="37" height="24" xmlns="http://www.w3.org/2000/svg"><g fill="none" fill-rule="evenodd"><rect fill="#FFF" width="36.655" height="24" rx="1.772"></rect><rect stroke="#DDD" stroke-width=".923" x=".462" y=".462" width="35.732" height="23.077" rx="1.772"></rect><g><path d="M4 0h28.966v24H4z"></path><path d="M11.124 20.6V19.53a.603.603 0 0 0-.201-.492.742.742 0 0 0-.54-.187.754.754 0 0 0-.662.304.711.711 0 0 0-.622-.304.644.644 0 0 0-.551.254v-.211h-.41V20.6h.414v-.94a.376.376 0 0 1 .112-.324.465.465 0 0 1 .348-.129c.272 0 .41.16.41.45v.95h.414v-.946a.378.378 0 0 1 .113-.325.467.467 0 0 1 .347-.129c.28 0 .414.16.414.45v.95l.414-.007zm6.119-1.707h-.674v-.518h-.414v.518h-.374v.34h.382v.785c0 .397.17.632.654.632.181 0 .359-.045.512-.132l-.118-.318a.814.814 0 0 1-.362.097c-.197 0-.272-.115-.272-.286v-.779h.67l-.004-.34zm3.493-.043a.57.57 0 0 0-.496.25v-.207h-.406V20.6h.41v-.957c0-.282.134-.44.394-.44a.729.729 0 0 1 .256.043l.126-.357a.957.957 0 0 0-.292-.046l.008.007zm-5.282.179a1.522 1.522 0 0 0-.768-.18c-.476 0-.788.208-.788.547 0 .28.229.45.65.504l.197.025c.225.029.331.082.331.179 0 .132-.15.207-.43.207a1.074 1.074 0 0 1-.625-.179l-.197.29c.238.15.524.228.815.221.544 0 .859-.232.859-.557 0-.325-.248-.457-.658-.51l-.197-.026c-.177-.021-.32-.053-.32-.168 0-.114.135-.2.36-.2.207.002.41.053.59.147l.181-.3zm10.972-.18a.57.57 0 0 0-.496.251v-.207h-.406V20.6h.41v-.957c0-.282.134-.44.393-.44a.729.729 0 0 1 .257.043l.126-.357a.957.957 0 0 0-.292-.046l.008.007zm-5.278.894a.822.822 0 0 0 .285.648c.19.17.452.259.72.245.245.011.487-.061.677-.204l-.197-.3a.883.883 0 0 1-.492.154c-.314-.023-.556-.26-.556-.547 0-.285.242-.523.556-.546.178.002.35.056.492.153l.197-.3a1.052 1.052 0 0 0-.678-.203 1.008 1.008 0 0 0-.72.245.822.822 0 0 0-.284.648v.007zm3.836 0v-.85h-.41v.207a.746.746 0 0 0-.59-.25c-.544 0-.985.4-.985.893s.441.893.985.893c.23.008.45-.085.59-.25v.207h.41v-.85zm-1.524 0c.018-.28.28-.496.59-.485.309.01.552.243.547.524-.005.28-.256.506-.566.508a.595.595 0 0 1-.417-.16.485.485 0 0 1-.154-.387zm-4.943-.893c-.544.007-.979.412-.971.905.007.494.455.888.998.881.284.013.562-.07.782-.232l-.197-.275a.954.954 0 0 1-.547.178c-.282.022-.531-.163-.563-.418h1.398v-.142c0-.536-.367-.894-.894-.894l-.006-.003zm0 .332a.494.494 0 0 1 .333.118c.09.078.14.184.143.297h-.984c.014-.239.237-.423.5-.415h.008zm10.262.565v-1.54h-.393v.893a.746.746 0 0 0-.591-.25c-.544 0-.985.4-.985.893s.44.893.985.893c.23.008.45-.085.59-.25v.207h.394v-.846zm.684.605a.2.2 0 0 1 .136.048.18.18 0 0 1 .041.054c.02.042.02.09 0 .132a.18.18 0 0 1-.102.09.201.201 0 0 1-.075.014.199.199 0 0 1-.177-.104.154.154 0 0 1 .04-.186.2.2 0 0 1 .143-.048h-.006zm0 .302a.152.152 0 0 0 .102-.04.123.123 0 0 0 0-.178.147.147 0 0 0-.102-.04.16.16 0 0 0-.105.04.123.123 0 0 0 .048.207c.02.008.041.012.063.01h-.006zm.012-.213c.018 0 .036.005.05.015.013.009.02.023.019.037a.04.04 0 0 1-.014.032.073.073 0 0 1-.042.016l.058.06H29.5l-.053-.06h-.018v.06h-.037v-.158l.083-.002zm-.044.03v.044h.044a.045.045 0 0 0 .023 0 .016.016 0 0 0 0-.016.016.016 0 0 0 0-.017.045.045 0 0 0-.023 0l-.044-.01zm-2.166-.724c.018-.28.28-.496.59-.486.309.01.552.244.547.524-.005.281-.256.507-.566.508a.595.595 0 0 1-.417-.16.485.485 0 0 1-.154-.386zm-13.831 0v-.854h-.41v.207a.746.746 0 0 0-.59-.25c-.545 0-.985.4-.985.893s.44.893.984.893c.23.008.45-.085.591-.25v.207h.41v-.846zm-1.525 0c.019-.28.28-.496.59-.486.31.01.553.244.548.524-.005.281-.257.507-.566.508a.595.595 0 0 1-.42-.159.486.486 0 0 1-.156-.387h.004z" fill="#231F20" fill-rule="nonzero"></path><g fill-rule="nonzero"><path fill="#FF5F00" d="M15.757 4.823h6.24v10.91h-6.24z"></path><path d="M16.153 10.28c-.002-2.13 1.002-4.142 2.724-5.457-2.924-2.235-7.122-1.91-9.644.748a6.802 6.802 0 0 0 0 9.414c2.522 2.658 6.72 2.984 9.644.748-1.721-1.314-2.725-3.325-2.724-5.454z" fill="#EB001B"></path><path d="M30.413 10.28c0 2.656-1.558 5.079-4.014 6.24a7.291 7.291 0 0 1-7.522-.787c1.72-1.315 2.724-3.326 2.724-5.455 0-2.128-1.004-4.14-2.724-5.455a7.291 7.291 0 0 1 7.522-.786c2.456 1.16 4.014 3.584 4.014 6.24v.002zM29.732 14.718v-.34h.093v-.07h-.235v.07h.1v.34h.042zm.458 0v-.41h-.072l-.083.293-.083-.294h-.063v.411h.051v-.308l.077.267h.054l.077-.267v.311l.042-.003z" fill="#F79E1B"></path></g></g></g></svg><svg class="PaymentIcon-21cXy" width="37" height="24" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient x1="-49.558%" y1="58.295%" x2="241.957%" y2="58.295%" id="a"><stop stop-color="#00763C" offset="0%"></stop><stop stop-color="#238B37" offset="31%"></stop><stop stop-color="#53A831" offset="77%"></stop><stop stop-color="#65B32E" offset="100%"></stop></linearGradient><linearGradient x1="46967%" y1="29844%" x2="54756%" y2="29844%" id="b"><stop stop-color="#00763C" offset="0%"></stop><stop stop-color="#238B37" offset="31%"></stop><stop stop-color="#53A831" offset="77%"></stop><stop stop-color="#65B32E" offset="100%"></stop></linearGradient><linearGradient x1="46967%" y1="28523%" x2="54755%" y2="28523%" id="c"><stop stop-color="#00763C" offset="0%"></stop><stop stop-color="#238B37" offset="31%"></stop><stop stop-color="#53A831" offset="77%"></stop><stop stop-color="#65B32E" offset="100%"></stop></linearGradient><linearGradient x1="1.564%" y1="50.695%" x2="103.763%" y2="50.695%" id="d"><stop stop-color="#312B6B" offset="0%"></stop><stop stop-color="#2A3577" offset="13%"></stop><stop stop-color="#0C5FA7" offset="71%"></stop><stop stop-color="#006FB9" offset="100%"></stop></linearGradient><linearGradient x1="1.575%" y1="50.7%" x2="100.817%" y2="50.7%" id="e"><stop stop-color="#6E2E2B" offset="0%"></stop><stop stop-color="#A21A32" offset="39%"></stop><stop stop-color="#D20738" offset="80%"></stop><stop stop-color="#E4003A" offset="100%"></stop></linearGradient></defs><g fill="none" fill-rule="evenodd"><rect fill="#FFF" width="37" height="24" rx="1.772"></rect><rect stroke="#DDD" stroke-width=".923" x=".462" y=".462" width="36.077" height="23.077" rx="1.772"></rect><g fill-rule="nonzero"><path d="M30.758 18.164a3.829 3.829 0 0 1-1.128 2.712A3.858 3.858 0 0 1 26.907 22H6V6.837A3.844 3.844 0 0 1 9.852 3h20.906v15.164z" fill="#FFF"></path><path d="M17.848 11.515h1.566c.062-.001.124-.008.186-.021.323-.091.552-.44.552-.842 0-.402-.23-.751-.552-.843a.941.941 0 0 0-.186-.021h-1.566v1.727z" fill="url(#a)" transform="translate(6 3)"></path><path d="M19.5 1.152a2.792 2.792 0 0 0-2.8 2.782v2.89h3.962c.092 0 .205.007.275.01.897.045 1.558.503 1.558 1.297 0 .628-.452 1.159-1.275 1.279v.031c.91.063 1.605.56 1.605 1.342 0 .848-.764 1.392-1.782 1.392h-4.346v5.673h4.11c1.546 0 2.8-1.246 2.8-2.783V1.152H19.5z" fill="url(#b)" transform="translate(6 3)"></path><path d="M20.151 8.06c.007-.28-.246-.523-.592-.565a1.66 1.66 0 0 0-.166-.01h-1.545v1.151h1.545c.055 0 .11-.004.166-.01.345-.042.599-.284.592-.565z" fill="url(#c)" transform="translate(6 3)"></path><path d="M3.951 1.152a2.791 2.791 0 0 0-2.8 2.782v6.871c.786.379 1.597.628 2.423.628.967 0 1.5-.586 1.5-1.377V6.824h2.408v3.228c0 1.263-.78 2.277-3.456 2.277-.968 0-1.933-.115-2.873-.345v5.864h4.108c1.546 0 2.8-1.246 2.8-2.783V1.152H3.95z" fill="url(#d)" transform="translate(6 3)"></path><path d="M12.01 1.152a2.79 2.79 0 0 0-2.798 2.782v3.643c.711-.604 1.935-.983 3.927-.893.741.046 1.477.157 2.198.331v1.178a5.482 5.482 0 0 0-2.116-.615c-1.512-.114-2.422.621-2.422 1.922 0 1.3.907 2.035 2.422 1.921a5.573 5.573 0 0 0 2.119-.615v1.178c-.722.174-1.457.285-2.198.332-1.992.09-3.219-.289-3.928-.893v6.425h4.108c1.546 0 2.8-1.246 2.8-2.783V1.152H12.01z" fill="url(#e)" transform="translate(6 3)"></path></g></g></svg></div><div id="rJbG83t1mE" class="">
            <span class="bpk-text-1neZm bpk-text--base-2hktr CardFees__popoverLinkText-2xU4L">無論如何支付，都沒有手續費。
            <button type="button" class="bpk-link-DN8Zj" id="ryxM82YJmV">查看支持的卡。</button></span></div></div></fb-card-fees>
        </div><!---->
<!-- 		姓名<input > -->

        <div class="outer-gutter-base">
           <sf-decorator ng-repeat="item in form.items | orderBy: 'order'" form="item" class="decorator-last_name"><div class="field field-text field-type-last_name">
    <label for="payment_last_name" ng-hide="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)">
        姓氏
    </label>

    <div ng-messages="fieldController.$error" ng-show="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)" id="payment_last_name-validation_message" class="ng-active ng-hide">
       <div ng-repeat="error in form.validation">
           <div ng-message-exp="error.rule" class="validation-error-msg" data-rule="required">輸入姓氏</div>
        </div><div ng-repeat="error in form.validation">
           
        </div><div ng-repeat="error in form.validation">
           
        </div>
       <div ng-repeat="error in $parent.form.validation">
           
        </div>
    </div>

    <input type="text" class="fb-input ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-valid-combined-max-length" autocomplete="cc-family-name" placeholder="" id="payment_last_name" ng-model-options="form.ngModelOptions" ng-model="model['payment']['last_name']" ng-change="evalExpr('passengersCtrl.trackAnyPassengerNameCyrillic()')" name="payment_last_name" sf-changed="form" ng-required="form.schema.validationMap.required" ng-maxlength="42" ng-pattern="/^[A-Za-zÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿ \'-]+$/" fb-validation-email="form.schema.validationMap.email" fb-validation="fieldController" fb-validation-combined-max-length="" ng-readonly="form.readonly" fb-user-journey-tracking="" required="required">
</div>
</sf-decorator><sf-decorator ng-repeat="item in form.items | orderBy: 'order'" form="item" class="decorator-first_name"><div class="field field-text field-type-first_name">
    <label for="payment_first_name" ng-hide="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)">
        名字
    </label>

    <div ng-messages="fieldController.$error" ng-show="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)" id="payment_first_name-validation_message" class="ng-active ng-hide">
       <div ng-repeat="error in form.validation">
           <div ng-message-exp="error.rule" class="validation-error-msg" data-rule="required">輸入名字</div>
        </div><div ng-repeat="error in form.validation">
           
        </div><div ng-repeat="error in form.validation">
           
        </div>
       <div ng-repeat="error in $parent.form.validation">
           
        </div>
    </div>

    <input type="text" class="fb-input ng-pristine ng-untouched ng-valid-combined-max-length ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength" autocomplete="cc-given-name" placeholder="" id="payment_first_name" ng-model-options="form.ngModelOptions" ng-model="model['payment']['first_name']" ng-change="evalExpr('passengersCtrl.trackAnyPassengerNameCyrillic()')" name="payment_first_name" sf-changed="form" ng-required="form.schema.validationMap.required" ng-maxlength="42" ng-pattern="/^[A-Za-zÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿ \'-]+$/" fb-validation-email="form.schema.validationMap.email" fb-validation="fieldController" fb-validation-combined-max-length="" ng-readonly="form.readonly" fb-user-journey-tracking="" required="required">
</div>
</sf-decorator><sf-decorator ng-repeat="item in form.items | orderBy: 'order'" form="item" class="decorator-card_type"><div class="field field-payment_methods field-type-card_type ng-hide" ng-show="evalExpr('paymentCtrl.redux.get().showPaymentMethodSelector')">
    <label for="payment_card_type" ng-hide="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)">
        信用卡類型
    </label>

    <div ng-messages="fieldController.$error" ng-show="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)" id="payment_card_type-validation_message" class="ng-inactive ng-hide">
       <div ng-repeat="error in form.validation">
           
        </div>
    </div>

    <select autocomplete="cc-type" ng-model="model['payment']['card_type']" name="payment_card_type" id="payment_card_type" fb-validation="fieldController" fb-card-select="" ng-options="option as (option.name + ' ' + (option | fbCardCharge | fbFormatCurrency)) for option in form.payment_options" ng-required="form.schema.validationMap.required &amp;&amp; evalExpr('paymentCtrl.redux.get().showPaymentMethodSelector')" fb-user-journey-tracking="" ng-disabled="form.readonly" class="ng-pristine ng-untouched ng-valid ng-empty ng-valid-required"><option value="" class="" selected="selected">選取付款類型</option><option label="Visa NT$0.00" value="object:1021">Visa NT$0.00</option><option label="MasterCard NT$0.00" value="object:1022">MasterCard NT$0.00</option><option label="JCB NT$0.00" value="object:1023">JCB NT$0.00</option></select>
</div>
</sf-decorator><sf-decorator ng-repeat="item in form.items | orderBy: 'order'" form="item" class="decorator-token"><div id="braintree-pay-number" class="field" ng-show="evalExpr('paymentCtrl.paymentSpecModel.braintreeClientToken')">
   <fb-card-number title="卡號" ng-if="!form.readonly"><label ng-if="showLabel()" for="card-number-field">
    卡號
    <input type="text" class="fb-input ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-pattern ng-valid-minlength ng-valid-maxlength ng-valid-combined-max-length" autocomplete="cc-family-name" placeholder="" id="payment_last_name" ng-model-options="form.ngModelOptions" ng-model="model['payment']['last_name']" ng-change="evalExpr('passengersCtrl.trackAnyPassengerNameCyrillic()')" name="payment_last_name" sf-changed="form" ng-required="form.schema.validationMap.required" ng-maxlength="42" ng-pattern="/^[A-Za-zÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿ \'-]+$/" fb-validation-email="form.schema.validationMap.email" fb-validation="fieldController" fb-validation-combined-max-length="" ng-readonly="form.readonly" fb-user-journey-tracking="" required="required">
<!--     <span class="icon-spinner-holder ng-hide" aria-hidden="true" ng-show="redux.get().cardNumberFieldIsLoading"> -->
<!--         <svg class="icon-button-svg icon-spinner-svg" viewBox="0 0 12 12"></svg> -->
<!--     </span> -->
</label>

<!-- <div ng-messages="fieldState" ng-show="!showLabel()" class="ng-inactive ng-hide"> -->
   

   

   
<!-- </div> -->

<div id="card-number-field" class="braintree-field-container hosted-field"><iframe src="https://assets.braintreegateway.com/web/3.37.0/html/hosted-fields-frame.min.html#e4079cd6-f6fa-44ed-aa29-ee9f058894f7" frameborder="0" allowtransparency="true" scrolling="no" type="number" name="braintree-hosted-field-number" title="Secure Credit Card Frame - Credit Card Number" id="braintree-hosted-field-number" style="border: none; width: 100%; height: 100%; float: left;"></iframe><div style="clear: both;"></div></div>

</fb-card-number>
   
</div>
</sf-decorator><sf-decorator ng-repeat="item in form.items | orderBy: 'order'" form="item" class="decorator-card_expiry"><div class="field field-date-month field-type-card_expiry">
    <label for="payment_card_expiry" ng-hide="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)">
        到期日
    </label>

    <div ng-messages="fieldController.$error" ng-show="fieldController.$invalid &amp;&amp; (fieldController.$dirty || fieldController.$$parentForm.$submitted)" id="payment_card_expiry-validation_message" class="ng-active ng-hide">
       <div ng-repeat="error in form.validation">
           <div ng-message-exp="error.rule" class="validation-error-msg" data-rule="required">請輸入到期日</div>
        </div><div ng-repeat="error in form.validation">
           
        </div><div ng-repeat="error in form.validation">
           
        </div><div ng-repeat="error in form.validation">
           
        </div>
    </div>

    <input type="tel" class="fb-input ng-pristine ng-untouched ng-empty ng-invalid ng-invalid-required ng-valid-mindate ng-valid-minage ng-valid-maxdate ng-valid-maxage ng-valid-date ng-valid-mask" autocomplete="cc-exp" id="payment_card_expiry" name="payment_card_expiry" ng-model="model['payment']['card_expiry']" placeholder="mm/yy" ng-model-options="{ debounce: 100 }" sf-changed="form" ui-mask="99/99" fb-validation="fieldController" ng-required="form.schema.validationMap.required" fb-validation-date="MMYY" fb-validation-mindate="month" fb-validation-maxdate="" fb-validation-agecheckdate="" fb-validation-minage="" fb-validation-maxage="" fb-validation-last-day-of-month="true" ng-readonly="form.readonly" fb-user-journey-tracking="" required="required">
</div>
</sf-decorator><sf-decorator ng-repeat="item in form.items | orderBy: 'order'" form="item" class="decorator-cvv-field">
<div id="braintree-pay-cvv" class="field field-cvv field-type-cvv" ng-show="evalExpr('paymentCtrl.paymentSpecModel.braintreeClientToken')">
   <fb-cvv title="CVV" ng-if="!form.readonly"><label for="card-cvv-field" ng-if="showLabel()">
    CVV
    <span class="icon-spinner-holder ng-hide" aria-hidden="true" ng-show="redux.get().cvvFieldIsLoading">
        <svg class="icon-button-svg icon-spinner-svg" viewBox="0 0 12 12"></svg>
    </span>
</label>

<div ng-messages="fieldState" ng-show="!showLabel()" class="ng-inactive ng-hide">
   

   
</div>

<div id="card-cvv-field" class="braintree-field-container hosted-field" ng-class="(fieldState.isEmpty || fieldState.isInvalid) ? 'braintree-hosted-fields-invalid' : ''">
<iframe src="https://assets.braintreegateway.com/web/3.37.0/html/hosted-fields-frame.min.html#4ab07f7a-8527-44c7-bbb7-722f3f51225d" frameborder="0" allowtransparency="true" scrolling="no" type="cvv" name="braintree-hosted-field-cvv" title="Secure Credit Card Frame - CVV" id="braintree-hosted-field-cvv" style="border: none; width: 100%; height: 100%; float: left;"></iframe><div style="clear: both;"></div></div>
</fb-cvv>
    <i class="icon-cvv" ng-class="{'icon-cvv--front': evalExpr('paymentCtrl.isCvvFront()')}"></i>
</div></sf-decorator><sf-decorator ng-repeat="item in form.items | orderBy: 'order'" form="item" class="decorator-total_price">
</sf-decorator>
        </div>
    </div>
    <section class="opreatBtn">
        <button class="research" onclick="history.back()" type="button" style="width: 200px;text-align: center;"><i class="glyphicon glyphicon-menu-left"></i>回上一頁</button>
        <button class="nextPage" id="btn_post_test" style="width: 200px;text-align: center;">立即付款 <i class="glyphicon glyphicon-menu-right"></i></button>
    </section>
</fieldset>
	
</div>
</body>
</html>