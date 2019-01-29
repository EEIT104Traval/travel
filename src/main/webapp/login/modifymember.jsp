<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員登入/註冊</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link href="/Travel/login/css/registered.css" rel="stylesheet">
<!-- <script src="./js/registered.js"></script> 轉跳頁面會讓樣式跑不出來-->
<script src="/Travel/login/js/registered.js"></script>

<script>
$(document).ready(function(){  
	var id =$('#identity').val();
	var toSecure = id.substring(4,8);
	id = id.replace(toSecure,'xxxx');
	$('#identity').val(id);
	
	var id =$('#email').val();
	var toSecure = id.substring(3,11);
	id = id.replace(toSecure,'xxxxxxxxx');
	$('#email').val(id);
	
	var id =$('#birth').val();
	var toSecure = id.substring(2,10);
	id = id.replace(toSecure,'xx-xx-xx');
	$('#birth').val(id);
	
	var id =$('#phone').val();
	var toSecure = id.substring(3,8);
	id = id.replace(toSecure,'xxxxx');
	$('#phone').val(id);
	
	var id =$('#address').val();
	var toSecure = id.substring(3,8);
	id = id.replace(toSecure,'xxxxxxxxxxxxxx');
	$('#address').val(id);
	
	var id =$('#firstname').val(); 
	var toSecure = id.substring(2,8);
	id = id.replace(toSecure,'xxxxx');
	$('#firstname').val(id);
	
	var id =$('#lastname').val(); lastname
	var toSecure = id.substring(2,8);
	id = id.replace(toSecure,'xxxxx');
	$('#lastname').val(id);
	
})

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
<body style="background-image:url(/Travel/login/images/pic004.jpg); height:background-repeat: no-repeat; background-position: center">


<!------ Include the above in your HEAD tag ---------->

<div class="container">
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
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="修改密碼" value="">
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
										<input type="text" name="identityNo" id="identity" tabindex="2" class="form-control" placeholder="身分證字號" value="${accountNameBean.identityNo}">
									</div>
									<div class="form-group">
										<fmt:formatDate value="${accountNameBean.birth}" pattern="yyyy-MM-dd" var="birth"/>
										<input type="text" name="birth" id="birth" tabindex="2" class="form-control" placeholder="生日" value="${birth}">
									</div>
									<div class="form-group">
										<input type="text" name="phone" id="phone" tabindex="2" class="form-control" placeholder="行動電話 " value="${accountNameBean.phone}">
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="2" class="form-control" placeholder="地址" value="${accountNameBean.address}">
									</div>
<!-- 									<div class="form-group"> -->
<%-- 										<fmt:formatDate value="${accountNameBean.registerDate}" pattern="yyyy-MM-dd" var="registerDate"/> --%>
<%-- 										<input type="text" name="registerDate" id="registerDate" tabindex="2" class="form-control" placeholder="登入時間" value="${registerDate}"> --%>
<!-- 									</div> -->
									
										<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="button"  id="modify-submit" tabindex="4" class="form-control btn btn-login" value="資料修改">
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
</body>
</html>