<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModalCenter">會員註冊/登入</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">會員登入</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<!--     <fieldset> -->
						<label for="name">帳號:</label><br> 
						<input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all"><br> 
						<label for="password">密碼:</label><br> 
						<input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all">

						<!-- Allow form submission with keyboard without duplicating the dialog button -->
						<input type="submit" tabindex="-1" style="position: absolute; top: -1000px">
						<!--     </fieldset> -->
						<div>
						
<!-- 						<p style="margin-top: 20px">快速登入</p> -->
<!-- 							    <img src="images/facebook.png" onclick="FBLogin();" width="22%" height="22%">  -->
<!-- 							    <img src="images/google01.png" onclick="GoogleLogin();" width="22%" height="22%"> -->
<!-- 								<img src="images/line.png" onclick="GoogleLogin();" width="22%" height="22%"> -->
								<p>快速登入</p>
			<img src="<c:url value='/voyage/images/facebook.png' />" onclick="FBLogin();" width="32%" height="32%"> 
			<img src="<c:url value='/voyage/images/google01.png' />" onclick="GoogleLogin();" width="32%" height="32%"> 
			<img src="<c:url value='/voyage/images/line.png' />" onclick="GoogleLogin();" width="32%" height="32%">
						</div>

						<script async defer src="https://apis.google.com/js/api.js"
							onload="this.onload=function(){};HandleGoogleApiLibrary()"
							onreadystatechange="if (this.readyState === 'complete') this.onload()"></script>
						<script type="text/javascript">
							//應用程式編號，進入 https://developers.facebook.com/apps/ 即可看到
							let FB_appID = "967663670095757";

							//FB Login 官方文件：https://developers.facebook.com/docs/facebook-login/web

							// Load the Facebook Javascript SDK asynchronously
							(function(d, s, id) {
								var js, fjs = d.getElementsByTagName(s)[0];
								if (d.getElementById(id))
									return;
								js = d.createElement(s);
								js.id = id;
								js.src = "https://connect.facebook.net/en_US/sdk.js";
								fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));

							window.fbAsyncInit = function() {
								FB.init({
									appId : FB_appID,//FB appID
									cookie : true, // enable cookies to allow the server to access the session

									xfbml : true, // parse social plugins on this page
									version : 'v3.0' // use graph api version
								});

							};

							//使用自己客製化的按鈕來登入
							function FBLogin() {

								FB.login(function(response) {
													//debug用
													console.log(response);
													if (response.status === 'connected') {
														//user已登入FB
														//抓userID 
														let FB_ID = response["authResponse"]["userID"];
														console.log("userID:"
																+ FB_ID);
														window.location="http://localhost:8080/Travel/voyage/index.jsp";

													} else {
														// user FB取消授權
														alert("Facebook帳號無法登入");
													}
												},
												{
													scope : 'public_profile,email'
												});

							}
							<!--Google登入-->
							//進入 https://console.developers.google.com/，找「憑證」頁籤(記得先選對專案)，即可找到用戶端ID
							let Google_appId = "152249642386-p0k54s40jac75e2gre5f6mqih80veto6.apps.googleusercontent.com";

							//參考文章：http://usefulangle.com/post/55/google-login-javascript-api 

							// Called when Google Javascript API Javascript is loaded
							function HandleGoogleApiLibrary() {
								// Load "client" & "auth2" libraries
								gapi
										.load(
												'client:auth2',
												{
													callback : function() {
														// Initialize client & auth libraries
														gapi.client
																.init(
																		{
																			clientId : Google_appId,
																			scope : 'https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/plus.me'
																		})
																.then(
																		function(
																				success) {
																			// Google Libraries are initialized successfully
																			// You can now make API calls 
																			console
																					.log("Google Libraries are initialized successfully");
																		},
																		function(
																				error) {
																			// Error occurred
																			console
																					.log(error);// to find the reason 
																		});
													},
													onerror : function() {
														// Failed to load libraries
														console
																.log("Failed to load libraries");
													}
												});
							}

							function GoogleLogin() {
								// API call for Google login  
								gapi.auth2.getAuthInstance().signIn().then(
										function(success) {
											// Login API call is successful 
											console.log(success);
											let Google_ID = success["El"];
											window.location="http://localhost:8080/Travel/%E5%BE%8C%E5%8F%B0%E7%AE%A1%E7%90%86/bindex.jsp";

										}, function(error) {
											// Error occurred
											// console.log(error) to find the reason
											console.log(error);
										});

							}
							function Google_disconnect() {
							    var auth2 = gapi.auth2.getAuthInstance();
							    auth2.disconnect().then(function () {
							        console.log('User disconnect.'); 
							    });
							     
							     }
						</script>


					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">登入</button>
					<button type="button" class="btn btn-primary">註冊</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>