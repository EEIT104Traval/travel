<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>會員登入/註冊</title>
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<link rel="stylesheet" href="./css/loginin.css">
<link href="./css/login.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="./js/login.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
var params={}
$(document).ready(function() {
// 	var login = '${login}';
// 	console.log(login);

});
function login(){
	params.name=$('#username').val()
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



function registered(){
	params.accountName=$('#accountName').val()
	params.password=$('#password').val()
	params.firstname=$('#firstname').val()
	params.lastname=$('#lastname').val()
	params.identityNo=$('#identityNo').val()
	params.email=$('#email').val()
	params.birth=$('#birth').val()
	params.phone=$('#phone').val()
	params.address=$('#address').val()
	$.ajax({
			url : '/Travel/voyage/registered.controller',
			contentType : 'application/json; charset=UTF-8',
			type : 'get',
			dataType : 'json',
			data:params,
	}).success(function(JData) {
		if(JData.failed==='註冊失敗'){
			alert('註冊失敗');
		}else{
			alert("註冊成功，點擊轉跳頁面");
	  	    location.reload();
		}
	});
}

  $( function() {
    var dialog, form,
       // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
      emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
      name = $( "#name" ),
      email = $( "#email" ),
      password = $( "#password" ),
      allFields = $( [] ).add( name ).add( email ).add( password ),
      tips = $( ".validateTips" );
 
    function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
      setTimeout(function() {
        tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    }
 
    function checkLength( o, n, min, max ) {
      if ( o.val().length > max || o.val().length < min ) {
        o.addClass( "ui-state-error" );
        updateTips( "Length of " + n + " must be between " +
          min + " and " + max + "." );
        return false;
      } else {
        return true;
      }
    }
    
    function logout(){
    	alert('登出成功!!!!');
		document.getElementById("create-user").innerHTML = '<span id="loginin">會員註冊/登入</span>';
    }
 
    function showLogin(){
        console.log("showLoing start");
        dialog = $( "#dialog-form" ).dialog({
             autoOpen: false,
             height: 500,
             width: 350,
             modal: true,

             close: function() {
               form[ 0 ].reset();
               allFields.removeClass( "ui-state-error" );
             }
           });
        dialog.dialog( "open" );
    }
    function checkRegexp( o, regexp, n ) {
      if ( !( regexp.test( o.val() ) ) ) {
        o.addClass( "ui-state-error" );
        updateTips( n );
        return false;
      } else {
        return true;
      }
    }
 
    function addUser() {
      var valid = true;
      allFields.removeClass( "ui-state-error" );
 
      valid = valid && checkLength( name, "username", 3, 16 );
      valid = valid && checkLength( email, "email", 6, 80 );
      valid = valid && checkLength( password, "password", 5, 16 );
 
      valid = valid && checkRegexp( name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter." );
      valid = valid && checkRegexp( email, emailRegex, "eg. ui@jquery.com" );
      valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
 
      if ( valid ) {
        $( "#users tbody" ).append( "<tr>" +
          "<td>" + name.val() + "</td>" +
          "<td>" + email.val() + "</td>" +
          "<td>" + password.val() + "</td>" +
        "</tr>" );
        dialog.dialog( "close" );
      }
      return valid;
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 550,
      width: 400,
      modal: true,

      close: function() {
        form[ 0 ].reset();
        allFields.removeClass( "ui-state-error" );
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
//       event.preventDefault();
//       addUser();
    });
 
    $( "#loginin" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  } );
  </script>
</head>
<body>

<div id="dialog-form" title="歡迎Time to Travel">
<div class="container">
    	<div class="row"  style="width:700px">
			<div class="col-md-6 col-md-offset-3"  style="margin:0px;padding: 0">
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
							<div class="col-lg-12" >
								<form id="login-form" action="<c:url value="/voyage/login.controller" />" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="帳號" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="密碼">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember" style="margin-left:100px; margin-bottom: -18px ">
										<label for="remember"> 記住我的帳密</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="button" value="登入" onclick="login()" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
<!-- 												<div class="text-center"> -->
<!-- 													<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">忘記密碼</a> -->
<!-- 												</div> -->
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
<%-- 								<c:url value="/voyage/insert.controller" /> --%>
								<form id="register-form" action="##" method="post" role="form" style="display: none;">
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
										<input type="text" name="firstname" id="firstname" tabindex="2" class="form-control" placeholder="姓名">
									</div>
									<div class="form-group">
										<input type="text" name="lastname" id="lastname" tabindex="2" class="form-control" placeholder="暱稱">
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
												<input type="button" value="立即註冊" onclick="registered()" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" >
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

		
<!-- 			<span class="error" id="loginerror">　</span> -->
<!-- 			<input type="button" value="Login" onclick="login()"> -->
<!-- 		</form> -->


		<script>
        //應用程式編號，進入 https://developers.facebook.com/apps/ 即可看到
        let FB_appID = "967663670095757";

        //FB Login 官方文件：https://developers.facebook.com/docs/facebook-login/web

        // Load the Facebook Javascript SDK asynchronously
        ( function (d, s, id) {
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

                    alert("Facebook登入OK");
                    window.location="http://localhost:8080/Travel/voyage/index.jsp";
                } else {
                // user FB取消授權
                    alert("Facebook帳號無法登入");
                }
            }, { scope: 'public_profile,email' });

        }
    </script>



		<!--Google登入-->
		<script async defer src="https://apis.google.com/js/api.js"
			onload="this.onload=function(){};HandleGoogleApiLibrary()"
			onreadystatechange="if (this.readyState === 'complete') this.onload()"></script>
		<script>
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
                    document.getElementById("create-user").innerHTML='<span onclick="this.innerHTML=\'會員註冊/登入\'; alert(\'登出成功!!!\')" >登出</span>';
                	$.ajax({
                		method: "GET",
                		url:"/Travel/secure/gorfbLogin?loginId="+Google_ID,
                		dataType: "json",
                		success: function(json) {
                			alert("Google登入成功!! Welcome: "+json.lastname);
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
		<script>
        
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
    
}
     </script>

		<!--      類似上面Delete FB App的效果，呼叫此function後，下次使用者想再Google登入你的網站就必須重新選擇帳號 -->
	<script>
   
     //參考：https://developers.google.com/identity/sign-in/web/disconnect

    function Google_disconnect() {
    	var auth2 = gapi.auth2.getAuthInstance();
    	auth2.disconnect().then(function () {
        console.log('User disconnect.'); 
    	});
    }

    </script>

</div>



	<span id="create-user" style="color:#fff"><span id="loginin">會員註冊/登入</span></span>



</body>
</html>