<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員登入/註冊</title>
<script>

function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}

function index(){
	window.location.href="../voyage/index.jsp"
}

// $( function() {
//     $( "#datepicker" ).datepicker({dateFormat:'yy-MM-dd',changeYear: true});
//   } );
  </script>
  



</head>
<!-- <body style="background-image:url(/Travel/tour/Display2/images/Sbanner.jpg); height:background-repeat: no-repeat; background-position: center"> -->
<body style="background-image:url(/Travel/login/images/pic007.jpg); height:background-repeat: no-repeat; background-position: center">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="./css/registered.css" rel="stylesheet">
<script src="./js/registered.js"></script>

<!------ Include the above in your HEAD tag ---------->

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link" style="color:#00BBFF;margin-left: -120px">註冊會員資料</a>
							</div>

						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="<c:url value="/voyage/insert.controller" />" method="post" role="form" style="display: block;">

									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
											<div class="form-group">
										<input type="text" name="accountName" id="accountName" tabindex="1" class="form-control" placeholder="帳號" value="">
									</div>
									<div class="form-group">
										<input type="text" name="email" id="email" tabindex="1" class="form-control" placeholder="Email信箱" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="密碼">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="確認密碼">
									</div>
									<div class="form-group">
										<input type="text" name="firstname" id="firstname" tabindex="2" class="form-control" placeholder="英文姓">
									</div>
									<div class="form-group">
										<input type="text" name="lastname" id="lastname" tabindex="2" class="form-control" placeholder="英文名">
									</div>
									<div class="form-group">
										<input type="text" name="identityNo" id="identityNo" tabindex="2" class="form-control" placeholder="身分證字號">
									</div>
									<div class="form-group">
										<input type="text" name="birth" id="birth" tabindex="2" class="form-control" placeholder="生日">
									</div>
									<div class="form-group">
										<input type="text" name="phone" id="phone" tabindex="2" class="form-control" placeholder="行動電話 ">
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="2" class="form-control" placeholder="地址" value="${param.address}">
									</div>
																		<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="註冊">
												<input type="button" value="清除" onclick="clearForm()" tabindex="4" class="form-control btn btn-login" style="margin-top: 10px">
												<input type="button" value="回上一頁" onclick="index()" tabindex="4" class="form-control btn btn-login" style="margin-top: 10px">
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

</body>
</html>