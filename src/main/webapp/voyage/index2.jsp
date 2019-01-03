<!--
                           _oo0oo_
                          o8888888o
                          88" . "88
                          (| -_- |)
                          0\  =  /0
                        ___/`---'\___
                      .' \\|     |// '.
                     / \\|||  :  |||// \
                    / _||||| -:- |||||- \
                   |   | \\\  -  /// |   |
                   | \_|  ''\---/''  |_/ |
                   \  .-\__  '-'  ___/-. /
                 ___'. .'  /--.--\  `. .'___
              ."" '<  `.___\_<|>_/___.' >' "".
             | | :  `- \`.;`\ _ /`;.`/ - ` : | |
             \  \ `_.   \_ __\ /__ _/   .-` /  /
         =====`-.____`.___ \_____/___.-`___.-'=====
                           `=---='
  ~~~~~~~~~~~~~~~~~~~~~ 佛祖保佑        永無bug~~~~~~~~~~~~~~~~~~~~~~
                  
    -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="tw-zh">
  <head>
    <title>Voyage - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
     <script>
  $( function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
      setTimeout(function() {
        tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    
 
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
 
    function checkRegexp( o, regexp, n ) {
      if ( !( regexp.test( o.val() ) ) ) {
        o.addClass( "ui-state-error" );
        updateTips( n );
        return false;
      } else {
        return true;
      }
    }

 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 400,
      width: 350,
      modal: true,

      close: function() {
        form[ 0 ].reset();
        allFields.removeClass( "ui-state-error" );
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addUser();
    });
 
    $( "#create-user" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  } 
  );
  </script>
  <script type="text/javascript">
        let FB_appID = "967663670095757";

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
                    //導到驗證傳兩個值userID gorfb
                    //資料庫查userID有無存在 再導回index
                   window.location="http://localhost:8080/Travel/voyage/index.jsp";
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
                    window.location="http://localhost:8080/Travel/%E5%BE%8C%E5%8F%B0%E7%AE%A1%E7%90%86/bindex.jsp";
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
function showLogin(){
    	 console.log("showLoing start");
    	 dialog = $( "#dialog-form" ).dialog({
    	      autoOpen: false,
    	      height: 400,
    	      width: 350,
    	      modal: true,

    	      close: function() {
    	        form[ 0 ].reset();
    	        allFields.removeClass( "ui-state-error" );
    	      }
    	    });
    	 dialog.dialog( "open" );
    	 //$("#dialog-form").attr("style","display: block");
     }
     
     function Google_disconnect() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.disconnect().then(function () {
        console.log('User disconnect.'); 
    });
     
     }

    </script> 
    
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
      	<img alt="" src="./images/TTT.png" width="250px" height: auto;>
<!--         <a class="navbar-brand" href="index.html">Voyage</a> -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="tours.jsp" class="nav-link">Tours</a></li>
            <li class="nav-item"><a href="hotels.jsp" class="nav-link">飯店</a></li>
            <li class="nav-item"><a href="services.html" class="nav-link">Flight</a></li>
            <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
            <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
            <li class="nav-item"><a href="#" id="create-user" onclick="showLogin()" class="nav-link">會員註冊/登入</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
  
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Voyage Fellow Tourist</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Book Now</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Flight</a></li>
                <li><a href="#" class="py-2 d-block">Hotels</a></li>
                <li><a href="#" class="py-2 d-block">Tour</a></li>
                <li><a href="#" class="py-2 d-block">Car Rent</a></li>
                <li><a href="#" class="py-2 d-block">Beach &amp; Resorts</a></li>
                <li><a href="#" class="py-2 d-block">Mountains</a></li>
                <li><a href="#" class="py-2 d-block">Cruises</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Top Deals</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Luxe Hotel</a></li>
                <li><a href="#" class="py-2 d-block">Venice Tours</a></li>
                <li><a href="#" class="py-2 d-block">Deluxe Hotels</a></li>
                <li><a href="#" class="py-2 d-block">Boracay Beach &amp; Resorts</a></li>
                <li><a href="#" class="py-2 d-block">Beach &amp; Resorts</a></li>
                <li><a href="#" class="py-2 d-block">Fuente Villa</a></li>
                <li><a href="#" class="py-2 d-block">Japan Tours</a></li>
                <li><a href="#" class="py-2 d-block">Philippines Tours</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Contact Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">198 West 21th Street, Suite 721 New York NY 10016</a></li>
                <li><a href="#" class="py-2 d-block">+ 1235 2355 98</a></li>
                <li><a href="#" class="py-2 d-block">info@yoursite.com</a></li>
                <li><a href="#" class="py-2 d-block">email@email.com</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <ul class="ftco-footer-social list-unstyled float-md-right float-lft">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
    <div id="dialog-form" title="會員登入" style="display: none">
 
   <form>
<!--     <fieldset> -->
      <label for="name">帳號:</label>
      <input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all"><br>
      <label for="password">密碼:</label>
      <input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all">

<!--     </fieldset> -->
  </form>

 
    <div>
<!--         Facebook登入：<input type="button"  value="Facebook登入" onclick="FBLogin();" /> -->
    </div>
    <div>
<!--         Google登入：<input type="button"  value="Google登入" onclick="GoogleLogin();" /><br> -->
		<button style="background-color: blue;color: white;margin-top: 5px">登入</button>	
	
		<p>快速登入</p>
        <img src="./images/facebook.png" onclick="FBLogin();">
        <img src="./images/google01.png" onclick="GoogleLogin();">
        <button style="background-color: blue;color: white;margin-left: 80px">新會員註冊</button>	
    </div>
</div>

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
<!--   <script src="js/google-map.js"></script> -->
  <script src="js/main.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
  </body>
</html>