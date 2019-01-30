<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>Places &mdash; Free HTML5 Bootstrap 4 Theme by ProBootstrap.com</title>
		<meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
		<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<!-- 	<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css"> -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/select2.css">
    <link rel="stylesheet" href="assets/css/helpers.css">
    <link rel="stylesheet" href="assets/css/style.css">
<style>
.navbar-dark .navbar-nav .nav-link {
   color: rgba(255,255,255);
}
#gotop {
    position:fixed;
    z-index:90;
    right:30px;
    bottom:31px;
    display:none;
    width:50px;
    height:50px;
    color:#fff;
    background:#33b5e5;
    line-height:50px;
    border-radius:50%;
    transition:all 0.5s;
    text-align: center;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16), 0 2px 10px 0 rgba(0,0,0,0.12);
}
#gotop :hover{
    background:#0099CC;
}
.modal-dialog {
    max-width: 360px;
    margin: 1.75rem auto;
}
</style>
	</head>
	<script
  	src="https://code.jquery.com/jquery-3.3.1.js"
  	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  	crossorigin="anonymous"></script>
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
		var url = location.href;
		var ary = {}
		var params ={}
		var tour = {}
		var Data
		if(url.indexOf('?')!=-1){
		        ary = {}
		    	ary = url.split('tourNo=');
		    	params.tourNo = ary[1]
		}
		function buy(serialNo){
			if('${accountName}'){
			window.location.href="/Travel/tour/Display2/buy?serialNo="+serialNo+"&tourNo="+params.tourNo+"&tourName="+Data.tourName+"&tourDays="+Data.tourDays+"&accountName="+'${accountName}'+""
			}else{
				swal({
					  title: "請先登入會員",
					  icon: "warning",
					});
// 				$('#modal').modal(options)
			}
		}
		$(document).ready(function() {
			$.ajax({
					url : '/Travel/tour/display',
					contentType : 'application/json; charset=UTF-8',
					type : 'get',
					dataType : 'json',
					data:params,
			}).done(function(JData) {
					console.log(JData);
					Data=JData
					$("#tbodyinfo").html("");
					$.each(JData.tourBatchBean, function(index, value) {						
						var count = '已滿團'
						if(JData.fullPeopleCount>value.peopleCount){
							count = '快來購買'
						}
						var d = new Date(value.departureDate);
						d = d.setDate(d.getDate()+1)
						var n = new Date(d).toISOString();
						var date = n.split("T")[0];
						$("#tbodyinfo").append(
							"<tr id='buy"+index+"'>"
								+"<td style='padding-top:24px;color:#007bff'>"+date+"</td>"
								+"<td style='padding-top:24px;color:fuchsia;'>"+count+"</td>"
								+"<td style='padding-top:24px'>"+value.content+"/<a href='##'>航班</a></td>"
								+"<td style='padding-top:24px;text-align:right;color:red;'>"+value.price_adult+"</td>"
							+"</tr>"
						)
						if(count==='快來購買'){
							$("#buy"+index+"").append(
								"<td style='padding-top:5px;text-align:right'><button type='button' class='btn btn-danger' onclick='buy("+value.serialNo+")'>立即購買</button></td>"
							)
						}else{
							$("#buy"+index+"").append(
								"<td style='padding-top:5px;text-align:right'><button type='button' class='btn btn-success'onclick='buy("+value.serialNo+")'>　候補　</button></td>"
							)
						}
					})
					$("#img").html("<img src=images/"+JData.TourPictureBean[0].pic+" alt=/ height='500px'>");
					$("#section-contact>div>div>div>p").html("<h2 style='font-weight:700!important;color:mediumslateblue;text-align:center;'>"+JData.tourName+"</h2>");
					$("#section-two>div>p").html("<p>"+JData.TourPictureBean[0].picDetail+"</p>");
					$.each(JData.TourPictureBean, function(index, value) {
						if(index!=0){
							if(index % 2 != 0){
								$("#travel").append(	
										"<section class='probootstrap-section-half d-md-flex' id='section-about'>"
									      +"<div class='probootstrap-image probootstrap-animate fadeIn probootstrap-animated' data-animate-effect='fadeIn' style='background-image: url(images/"+value.pic+");height:548px'></div>"
									      +"<div class='probootstrap-text'>"
									        +"<div class='probootstrap-inner probootstrap-animate fadeInRight probootstrap-animated' data-animate-effect='fadeInRight'>"
											  +"<h3>第"+index+"天</h3><br/>"
									          +"<h4>"+value.pictitle+"</h4>"
									          +"<p>"+value.picDetail+"</p>"
									        +"</div></div></section>"
										);
							}else{
								$("#travel").append(
										"<section class='probootstrap-section-half d-md-flex'>"
									      +"<div class='probootstrap-image order-2 probootstrap-animate fadeIn probootstrap-animated' data-animate-effect='fadeIn' style='background-image: url(images/"+value.pic+");height:548px'></div>"
									      +"<div class='probootstrap-text order-1'>"
									        +"<div class='probootstrap-inner probootstrap-animate fadeInLeft probootstrap-animated' data-animate-effect='fadeInLeft'>"
											  +"<h3>第"+index+"天</h3><br/>"
									          +"<h4>"+value.pictitle+"</h4>"
									          +"<p>"+value.picDetail+"</p>"
									        +"</div></div></section>"
										);
							}
						}
					});
			})

		});
		
		$(function() {
		    /* 按下GoTop按鈕時的事件 */
		    $('#gotop').click(function(){
		        $('html,body').animate({ scrollTop: 500 }, 'slow');   /* 返回到最頂上 */
		        return false;
		    });
		     
		    /* 偵測卷軸滑動時，往下滑超過400px就讓GoTop按鈕出現 */
		    $(window).scroll(function() {
		        if ( $(this).scrollTop() > 400){
		            $('#gotop').fadeIn();
		        } else {
		            $('#gotop').fadeOut();
		        }
		    });
		});
</script>	
  	
	<body>
    <jsp:include page="nav.jsp"/>
<a href="https://www.blogger.com/blogger.g?blogID=2031514508322140995#" id="gotop">
   <i class="fa fa-angle-up"></i>
</a>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">會員登入</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <label for="name" style="margin-bottom:20px">帳號:</label> 
        <input type="text" name="name" id="name"class="text ui-widget-content ui-corner-all" style="margin-bottom: -20px"><br>
		<label for="password" style="margin-bottom:20px">密碼:</label> 
		<input type="password" id="password"name="password" value=""class="text ui-widget-content ui-corner-all">
		<div><span class="error" id="loginerror" style="color:red">　</span></div>
      </div>
      <div>
				<input class="btn btn-secondary active" type="button" value="登入" onclick="login()" style="margin:30px;margin-top:0px;">
				<input class="btn btn-secondary active" type="button" value="新會員註冊" onclick="register()" style="float:right;margin:30px;margin-top:0px;">
      </div>
      <div>
   			<img style="margin: 20px;" src="<c:url value='/login/images/facebook.jpg' />" onclick="FBLogin();" width="23%" height="23%"> 
			<img style="margin: 10px;" src="<c:url value='/login/images/google01.jpg' />" onclick="GoogleLogin();" width="23%" height="23%"> 
			<img style="margin: 20px;" src="<c:url value='/login/images/line.jpg' />" onclick="GoogleLogin();" width="23%" height="23%">
	  </div>
    </div>
  </div>
</div>

<script>
var user={}
function login(){
	user.name=$('#name').val()
	user.password=$('#password').val()
	$.ajax({
			url : '/Travel/voyage/login.controller',
			contentType : 'application/json; charset=UTF-8',
			type : 'get',
			dataType : 'json',
			data:user,
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
	
</script>

<!--     <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar"> -->
<!--       <div class="container"> -->
<%--         <img alt="" src="<c:url value='/voyage/images/TTT.png' />" width="250px"> --%>
<!--         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--           <span><i class="ion-navicon"></i></span> -->
<!--         </button> -->
<!--         <div class="collapse navbar-collapse" id="probootstrap-menu"> -->
<!--           <ul class="navbar-nav ml-auto" style="margin:auto;"> -->
<%--             <li class="nav-item"><a href="<c:url value='/voyage/index.jsp'/>" class="nav-link">首頁</a></li> --%>
<%--             <li class="nav-item"><a href="<c:url value='/tour/tours.jsp'/>" class="nav-link">團體旅遊</a></li> --%>
<%--             <li class="nav-item"><a href="<c:url value='/voyage/hotel/hotels.jsp'/>" class="nav-link">飯店</a></li> --%>
<%--             <li class="nav-item"><a href="<c:url value='/flight/FlightNew.jsp'/>" class="nav-link">機票</a></li> --%>
<%--             <li class="nav-item"><a href="<c:url value='/voyage/ticket.jsp'/>" class="nav-link">門票</a></li> --%>
<%--             <li class="nav-item"><a href="<c:url value='/rate/rateindex2.jsp'/>" class="nav-link">查詢匯率</a></li> --%>
<!--           </ul> -->
<!--         </div> -->
<!--       </div> -->
<!--     </nav> -->
    

    <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value='/voyage/images/bg_2.jpg'/>');" data-stellar-background-ratio="0.5" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center text-center">
          <div class="col-md">
            <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Travel With Us</h2>
            <p class="lead mb-5 probootstrap-animate">
          </div> 
        </div>
      </div>
    
    </section>
    <!-- END section -->
    
    <section class="probootstrap_section bg-light" id="section-contact">
      <div class="container" style="max-width:1400px">
        <div class="row">
          <div class="col-md-6 probootstrap-animate fadeInUp probootstrap-animated">
            <p class="mb-5">tour Detail 0</p>
            <div class="row">
              <div class="col-md-12" style="text-align:center;">
				<img alt="##" src="<c:url value='/tour/Display2/images/girl.png'/>">
              </div>
            </div>
          </div>
          <div class="col-md-6 probootstrap-animate fadeInUp probootstrap-animated" id="img">
				照片丟這裡           		
          </div>
        </div>
      </div>
    </section>

	<section class="probootstrap_section bg-light" id="section-contact">
      <div class="container" style="max-width:1400px">
        <div class="panel-group why-choose-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne" class="title"> 所有出發清單 <span class="fa fa-minus-square"></span>
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<table class="table">
						<thead>
							<tr>
								<th>出發日期</th>
								<th>報名資訊</th>
								<th>當團資訊</th>
								<th style="text-align:right">成人單價</th>
								<th></th>
							</tr>
						</thead>
						<tbody id="tbodyinfo">
							<tr>
								<td style="padding-top:24px">二月 12, 2019</td>
								<td style="padding-top:24px">快來購買or已滿團</td>
								<td style="padding-top:24px">PA1LL190212A 搭長榮航空/<a href="##">航班</a></td>
								<td style="padding-top:24px;text-align:right">41900</td>
								<td style="padding-top:5px;text-align:right"><button type="button" class="btn btn-danger">立即購買</button></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
      </div>
    </section>
    
    <section class="probootstrap_section bg-light" id="section-two">
      <div class="container" style="max-width:1400px">
        <p></p>
      </div>
    </section>

    <section id="travel"></section>
<!--     END section -->
    
<!--     <section> -->
<!--     	<table id="tavel"> -->
<!--     		<tr> -->
<!--     			<td>1</td> -->
<!--     			<td>2</td> -->
<!--     		</tr> -->
<!--     	</table> -->
<!--     </section> -->


    <section class="probootstrap_section">
      <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
          <div class="col-md-12">
            <h2 class="display-4 border-bottom probootstrap-section-heading">Popular Landmarks</h2>
          </div>
        </div>
        
        <div class="row probootstrap-animate">
          <div class="col-md-12">
            <div class="owl-carousel js-owl-carousel">
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-teatro-de-la-caridad"></span>
                <em>Teatro de la Caridad</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-royal-museum-of-the-armed-forces"></span>
                <em>Royal Museum of the Armed Forces</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-parthenon"></span>
                <em>Parthenon</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-marina-bay-sands"></span>
                <em>Marina Bay Sands</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-samarra-minaret"></span>
                <em>Samarra Minaret</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-chiang-kai-shek-memorial"></span>
                <em>Chiang Kai Shek Memorial</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-heuvelse-kerk-tilburg"></span>
                <em>Heuvelse Kerk Tilburg</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-cathedral-of-cordoba"></span>
                <em>Cathedral of Cordoba</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-london-bridge"></span>
                <em>London Bridge</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-taj-mahal"></span>
                <em>Taj Mahal</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-leaning-tower-of-pisa"></span>
                <em>Leaning Tower of Pisa</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-burj-al-arab"></span>
                <em>Burj al Arab</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-gate-of-india"></span>
                <em>Gate of India</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-osaka-castle"></span>
                <em>Osaka Castle</em>
              </a>
              <a class="probootstrap-slide" href="#">
                <span class="flaticon-statue-of-liberty"></span>
                <em>Statue of Liberty</em>
              </a>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->



    <footer class="probootstrap_section probootstrap-border-top">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="https://free-template.co" target="_blank">Home</a></li>
              <li><a href="https://free-template.co" target="_blank">About</a></li>
              <li><a href="https://free-template.co" target="_blank">Services</a></li>
              <li><a href="https://free-template.co" target="_blank">Contact</a></li>
            </ul>
          </div>
        </div>
        <div class="row pt-5">
          <div class="col-md-12 text-center">
            <p class="probootstrap_font-14">&copy; 2017. All Rights Reserved. <br> Designed &amp; Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap</a><small> (Don't remove credit link on this footer. See <a href="https://probootstrap.com/license/">license</a>)</small></p>
            <p class="probootstrap_font-14">Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></p>
          </div>
        </div>
      </div>
    </footer>

    
    <script src="assets/js/jquery.min.js"></script>  
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/jquery.easing.1.3.js"></script>
    <script src="assets/js/select2.min.js"></script>
    <script src="assets/js/main.js"></script>
    
	<script src="<c:url value='/voyage/js/jquery-migrate-3.0.1.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.stellar.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.magnific-popup.min.js' />"></script>
	<script src="<c:url value='/voyage/js/aos.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.animateNumber.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.timepicker.min.js' />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%--     <jsp:include page="../../voyage/foo.jsp"></jsp:include> --%>
	</body>
</html>