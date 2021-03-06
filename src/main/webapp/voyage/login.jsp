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
<style>
label, input {
	display: block;
}

input.text {
	margin-bottom: 1px;
	width: 95%;
	padding: .1em;
}

fieldset {
	padding: 0;
	border: 0;
	margin-top: 5px;
}

h1 {
	font-size: 1.2em;
	margin: .6em 0;
}

div#users-contain {
	width: 350px;
	margin: 10px 0;
}

div#users-contain table {
	margin: 1em 0;
	border-collapse: collapse;
	width: 100%;
}

div#users-contain table td, div#users-contain table th {
	border: 1px solid #eee;
	padding: .6em 10px;
	text-align: left;
}

.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}


</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
			$('#loginerror').html('登入失敗');
		}else{
			if(JData.xxx1.authority=='A001'){
  	      		location.reload();
			}else{
				window.location="/Travel/CMS/01_01.jsp"
			}
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
      height: 450,
      width: 350,
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
    $( "#hotel-login" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
    
  } );
  </script>
</head>
<body>

	<div id="dialog-form" title="會員登入" style="margin-top: 20px">
<%-- 		<form action="<c:url value="/secure/login.controller" />" method="get"> --%>
		<form action="">
			<!--     <fieldset> -->
			<label for="name">帳號:</label> <input type="text" name="name" id="name"
				class="text ui-widget-content ui-corner-all" style="margin-bottom: -20px"><br>
			<label for="password">密碼:</label> <input type="password" id="password"
				name="password" value=""
				class="text ui-widget-content ui-corner-all">

			<!--     </fieldset> -->

		<div>
			<!--         Google登入：<input type="button"  value="Google登入" onclick="GoogleLogin();" /><br> -->
			<span class="error" id="loginerror" style="color:red">　</span>

			
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-6">
							<input type="button" value="登入" onclick="login()" style="margin-bottom: 30px">
							</div>
							<div class="col-md-6">
							<input type="button" value="新會員註冊" onclick="register()" style="margin-left: 27px">
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<img src="<c:url value='/login/images/facebook.jpg' />" onclick="FBLogin();" width="32%" height="32%"> 
			<img src="<c:url value='/login/images/google01.jpg' />" onclick="GoogleLogin();" width="32%" height="32%"> 
			<img src="<c:url value='/login/images/line.jpg' />" onclick="GoogleLogin();" width="32%" height="32%">
<!-- 			<button	style="background-color: blue; color: white; margin-left: 100px; margin-top: 20px">新會員註冊</button> -->
			
			
		</div>
</form>
		<script>
		function register(){
			window.location.href="../login/newMemberRegister.jsp"
		}
		
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

//                     alert("Facebook登入OK");
//                     window.location="http://localhost:8080/Travel/voyage/index.jsp";
                	$.ajax({
                		method: "GET",
                		url:"/Travel/secure/fbLogin?loginId="+FB_ID,
                		
//                			url:"/Travel/tour/display?tourNo=1",
                		dataType: "json",
                		success: function(json) {
                			alert("Facebook登入成功!! Welcome: "+json.lastname);
//                 			console.log(json);
//                 			location.reload();
                			if(json.authority=='A001'){
                				location.reload();
                			}else{
                				window.location="/Travel/CMS/01_01.jsp"
                			}
                		}
                		
                	});
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
//         let Google_appId = "152249642386-p0k54s40jac75e2gre5f6mqih80veto6.apps.googleusercontent.com";
//         let Google_appId = "988008409378-1kv77jacmp1j9hq2o0ed5luvtna2al3g.apps.googleusercontent.com";
        let Google_appId = "551242079087-5iilcg2vt19r483ssbahu0jhn86vbsin.apps.googleusercontent.com";


        
        
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
                	
                	document.getElementById("create-user").innerHTML='<span onclick="this.innerHTML=\'會員註冊/登入\'; alert(\'登出成功\')" >登出</span>';
                	$.ajax({
                		method: "GET",
                		url:"/Travel/secure/gorfbLogin?loginId="+Google_ID,
                		
//                			url:"/Travel/tour/display?tourNo=1",
                		dataType: "json",
                		success: function(json) {
                			alert("Google登入成功!! Welcome: "+json.lastname);
//                 			console.log(json);
//                 			location.reload();
                			if(json.authority=='A001'){
                				location.reload();
                			}else{
                				window.location="/Travel/CMS/01_01.jsp"
                			}
                		}
                		
                	});
//                 	 window.location="http://localhost:8080/Travel/voyage/index.jsp";
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
	
	
	<span id="create-user" style="color:#fff;"><span id="loginin" style="background:transparent; border: 0px;">會員註冊/登入</span></span>

<%-- <li class="nav-item" style="list-style-type: none;color:white"><a href="<c:url value='/login/register1.jsp'/>" >會員註冊/登入</a></li> --%>

</body>
</html>