<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="<c:url value='/voyage/css/main_styles.css' />">
	<link rel="stylesheet" href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/owl.theme.default.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/magnific-popup.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />">
	<link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">
    <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css">
<head>
<meta charset="UTF-8">
<title>會員登入/註冊</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- <link href="/Travel/login/css/registered.css" rel="stylesheet">一定要關 -->
<!-- <script src="./js/registered.js"></script> 轉跳頁面會讓樣式跑不出來-->
<script src="/Travel/login/js/registered.js"></script>

<script>

function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}

// $( function() {
//     $( "#datepicker" ).datepicker({dateFormat:'yy-MM-dd',changeYear: true});
//   } );
  </script>
  



</head>
<body>
	<jsp:include page="/voyage/nav.jsp" />	
<!-- 	<section class="home-slider owl-carousel"> -->
<!-- 		<div class="slider-item" -->
<%-- 			style="background-image: url('<c:url value='/voyage/images/home_slider.jpg'/>')" --%>
<!-- 			data-stellar-background-ratio="0.5"> -->
<!-- 			<div class="overlay"> -->
<!-- 				<div class="container"></div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->


<!------ Include the above in your HEAD tag ---------->

<div class="container" style="black">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link" style="color:#00BBFF;margin-left: -120px">修改會員資料</a>
							</div>

						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="modify-form" style="display: block;">

									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
											<div class="form-group">
										
										<input type="text" name="accountName" id="accountName" tabindex="1" class="form-control" placeholder="帳號" value="${accountNameBean.accountName}">
									</div>
									<div class="form-group">
										<input type="text" name="email" id="email" tabindex="1" class="form-control" placeholder="Email信箱" value="${accountNameBean.email}">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="修改密碼">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="確認密碼">
									</div>
									<div class="form-group">
										<input type="text" name="firstname" id="firstname" tabindex="2" class="form-control" placeholder="英文姓" value="${accountNameBean.firstname}">
									</div>
									<div class="form-group">
										<input type="text" name="lastname" id="lastname" tabindex="2" class="form-control" placeholder="英文名" value="${accountNameBean.lastname}">
									</div>
									<div class="form-group">
										<input type="text" name="identityNo" id="identityNo" tabindex="2" class="form-control" placeholder="身分證字號" value="${accountNameBean.identityNo}">
									</div>
									<div class="form-group">
										<input type="text" name="birth" id="birth" tabindex="2" class="form-control" placeholder="生日" value="${accountNameBean.birth}">
									</div>
									<div class="form-group">
										<input type="text" name="phone" id="phone" tabindex="2" class="form-control" placeholder="行動電話 " value="${accountNameBean.phone}">
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="2" class="form-control" placeholder="地址" value="${accountNameBean.address}">
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="2" class="form-control" placeholder="地址" value="${accountNameBean.registerDate}">
									</div>
									
										<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="button"  id="modify-submit" tabindex="4" class="form-control btn btn-login" value="資料修改">
												<input type="button" value="清除" onclick="clearForm()" tabindex="4" class="form-control btn btn-login" style="margin-top: 10px">
											</div>
										</div>
									</div>
											</div>
										</div>
									</div>
								</form>
								<form id="login-form" action="<c:url value="/voyage/insert.controller" />" method="post" role="form" style="display: none;">
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="立即註冊">
												
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
$("#modify-submit").click(function(){
	var form = $("#modify-form").serialize();
	$.ajax({
		url:"/Travel/secure/updatemeberInfo",
		data: form,
		dataType:"json",
		
	}).success(function(){
		alert("修改成功")
		window.location.href="/Travel/voyage/index.jsp"
	})
	
})

</script>
	<jsp:include page="/voyage/foo.jsp" />
	<script src="<c:url value='/voyage/js/jquery.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery-migrate-3.0.1.min.js' />"></script>
	<script src="<c:url value='/voyage/js/popper.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.easing.1.3.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.waypoints.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.stellar.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.magnific-popup.min.js' />"></script>
	<script src="<c:url value='/voyage/js/aos.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.animateNumber.min.js' />"></script>
	<script src="<c:url value='/voyage/js/main.js' />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>