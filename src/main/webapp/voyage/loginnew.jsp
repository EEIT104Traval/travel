<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員登入/註冊</title>
<script>
var params={}
$(document).ready(function() {
// 	var login = '${login}';
// 	console.log(login);
});
function login(){
	params.name=$('#name').val()
	params.password=$('#password').val()
	$.ajax({
			url : '/Travel/voyage/login.controller',
			contentType : 'application/json; charset=UTF-8',
			type : 'get',
			dataType : 'json',
			data:params,
	}).success(function(JData) {
		console.log(JData);
		if(JData.xxx1==='Login failed'){
			$('#loginerror').html('Login failed');
		}else{
  	      location.reload();
		}
	});
}
function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}

$( function() {
    $( "#datepicker" ).datepicker({dateFormat:'yy-MM-dd',changeYear: true});
  } );
  </script>
  <script type="text/javascript">
        //應用程式編號，進入 https://developers.facebook.com/apps/ 即可看到
        let FB_appID = "967663670095757";

        //FB Login 官方文件：https://developers.facebook.com/docs/facebook-login/web

        // Load the Facebook Javascript SDK asynchronously
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
             if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        window.fbAsyncInit = function () {
            FB.init({
                appId: FB_appID,//FB appID
                cookie: true,  // enable cookies to allow the server to access the session
                
                xfbml: true,  // parse social plugins on this page
                version: 'v3.0' // use graph api version
            });

        };

        //使用自己客製化的按鈕來登入
        function FBLogin() {
            
            FB.login(function (response) {
                //debug用
                console.log(response);
                if (response.status === 'connected') {
                    //user已登入FB
                    //抓userID 
                    let FB_ID = response["authResponse"]["userID"];
                    console.log("userID:" + FB_ID);

                   
                } else {
                // user FB取消授權
                    alert("Facebook帳號無法登入");
                }
            }, { scope: 'public_profile,email' });

        }
    </script>



    <!--Google登入-->
    <script async defer src="https://apis.google.com/js/api.js" onload="this.onload=function(){};HandleGoogleApiLibrary()"
            onreadystatechange="if (this.readyState === 'complete') this.onload()"></script>
    <script type="text/javascript">
        //進入 https://console.developers.google.com/，找「憑證」頁籤(記得先選對專案)，即可找到用戶端ID
        let Google_appId = "152249642386-p0k54s40jac75e2gre5f6mqih80veto6.apps.googleusercontent.com";


        //參考文章：http://usefulangle.com/post/55/google-login-javascript-api 

        // Called when Google Javascript API Javascript is loaded
        function HandleGoogleApiLibrary() {
            // Load "client" & "auth2" libraries
            gapi.load('client:auth2', {
                callback: function () {
                    // Initialize client & auth libraries
                    gapi.client.init({
                        clientId: Google_appId,
                        scope: 'https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/plus.me'
                    }).then(
                        function (success) {
                            // Google Libraries are initialized successfully
                            // You can now make API calls 
                            console.log("Google Libraries are initialized successfully");
                        },
                        function (error) {
                            // Error occurred
                            console.log(error);// to find the reason 
                        }
                    );
                },
                onerror: function () {
                    // Failed to load libraries
                    console.log("Failed to load libraries");
                }
            });
        }



        function GoogleLogin() {
            // API call for Google login  
            gapi.auth2.getAuthInstance().signIn().then(
                function (success) {
                    // Login API call is successful 
                    console.log(success);
                    let Google_ID = success["El"];
                	alert("登入成功!! Welcome ChuChu");
                	$.ajax({
                		method: "GET",
                		url:"/Travel/secure/gorfbLogin?loginId="+Google_ID,
                		
//                			url:"/Travel/tour/display?tourNo=1",
                		dataType: "json",
                		success: function(json) {
                			console.log(json)
                		}
                		
                	});
                   
                    
                },
                function (error) {
                 // Error occurred
                    // console.log(error) to find the reason
                    console.log(error);
                }
            );

        }



    </script>

    <!--有些網站會做帳號和user FB帳號的綁定/解除綁定，或你想讓使用者刪除你的FB App，讓使用者下次可以切換不同FB帳號登入你的網站-->
    <!--下面程式碼派得上用場-->
     <script type="text/javascript">
        
//刪除使用者已授權你的FB App，好讓使用者下次重新授權你的FB App
//參考：https://stackoverflow.com/questions/6634212/remove-the-application-from-a-user-using-graph-api/7741978#7741978
function Del_FB_App() { 
    FB.getLoginStatus(function (response) {//取得目前user是否登入FB網站
        //debug用
        console.log(response);
        if (response.status === 'connected') {
            // Logged into Facebook.
            //抓userID
            FB.api("/me/permissions", "DELETE", function (response) {
                console.log("刪除結果");
                console.log(response); //gives true on app delete success 
            });
        } else {
            // FB取消授權
            console.log("無法刪除FB App");
        }
    });
     </script>

     <!--類似上面Delete FB App的效果，呼叫此function後，下次使用者想再Google登入你的網站就必須重新選擇帳號-->
     <script type="text/javascript">
   
     //參考：https://developers.google.com/identity/sign-in/web/disconnect

     function Google_disconnect() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.disconnect().then(function () {
        console.log('User disconnect.'); 
    });
     
     }
}
    </script>
 
</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="./css/login.css" rel="stylesheet">
<script src="./js/login.js"></script>

<!------ Include the above in your HEAD tag ---------->

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">會員登入</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">加入會員</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="<c:url value="/voyage/login.controller" />" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="帳號" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="密碼">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> 記住我的帳密</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="登入">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">忘記密碼</a>
												</div>
												<div>
												<p>快速登入</p>
													<img src="<c:url value='./images/facebook.png' />" onclick="FBLogin();" width="25%" height="25%"> 
													<img src="<c:url value='./images/google01.png' />" onclick="GoogleLogin();" width="25%" height="25%"> 
													<img src="<c:url value='./images/line.png' />" onclick="GoogleLogin();" width="25%" height="25%">
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="<c:url value="/voyage/insert.controller" />" method="post" role="form" style="display: none;">
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
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="立即註冊">
												<input type="button" value="清除" onclick="clearForm()" tabindex="4" class="form-control btn btn-register">
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