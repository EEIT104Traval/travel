<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>後台管理系統</title>
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="shortcut icon" href="images/favicon.png" />
</head>

<jsp:include page="/CMS/blank-page.jsp" />

<title>後台管理者介面</title>

<style>
table{ 
	width: 100%; 
}
table thead {
	font-weight:900;
}
table tbody {
	font-weight:500;
}
table td{
	border:1px solid black;
}
</style>

<script>
var number
var user
var params = {}
var tourOrderInfoBean ;
var ticketOrderInfoBean ;
var hotelOrderDetailsBean ;

	$(document).ready(function() {

	});
  			function fundmember(){
 			params.user = $('#user').val();
			$("#searchuser").html("")

 			$.ajax({
 					url : '/Travel//bindex01_02/User.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:params,
 				   }).done(function(JData) {
							$("#searchuser").append(
 							'<div style="text-align: center;"><h2>'+params.user +'</h2></div>'+
							'<br>'+
							'<table><thead><tr><td>類型</td><td>名稱</td><td>數量</td><td>購買日期</td><td>總價格</td></tr></thead><tbody id="searchuser1">'
									       );
			
							console.log("-------------------------------------");
							console.log(JData);
		    if(JData.TourOrderInfoBean != null){
					for(var i = 0 ; i<JData.TourOrderInfoBean.length ; i++){
 							$("#searchuser1").append(		
 							'<tr><td>旅遊行程</td>'+
 							'<td>'+ JData.TourOrderInfoBean[i].tourName +'</td>'+
 							'<td>'+ JData.TourOrderInfoBean[i].quantity +'</td>'+
 							'<td>'+ JData.TourOrderInfoBean[i].orderTime +'</td>'+
 						    '<td>'+ JData.TourOrderInfoBean[i].total +'</td></tr>'								
													)
											}
						   		  }else{$("#searchuser").append('<table><tr><td>尚無旅遊行程</td></tr></table>')}
 			if(JData.TicketOrderInfoBean != null){
					for(var i = 0;i<JData.TicketOrderInfoBean.length;i++){
							$("#searchuser1").append(		
							'<tr><td>門票</td>'+
							'<td>'+ JData.TicketOrderInfoBean[i].ticketName+'</td>'+
					        '<td>'+ JData.TicketOrderInfoBean[i].adultTicketCount+'</td>'+
					        '<td>'+ JData.TicketOrderInfoBean[i].orderDate+'</td>'+
					        '<td>'+ JData.TicketOrderInfoBean[i].totalPrice+'</td></tr>'								
													)	
											}
								  }else{$("#HotelOrderDetailsBean").append('<table><tr><td>尚無門票訂單</td></tr></table>')}				 			
			if(JData.HotelOrderDetailsBean != null){
					for(var i = 0;i<JData.HotelOrderDetailsBean.length;i++){
							$("#searchuser1").append(		
							'<tr><td>飯店</td>'+
							'<td>'+ JData.HotelOrderDetailsBean[i].hotelName +'</td>'+
					        '<td>'+ JData.HotelOrderDetailsBean[i].stayNights+'(天) </td>'+
					        '<td>'+ JData.HotelOrderDetailsBean[i].createDate +'</td>'+
					        '<td>'+ JData.HotelOrderDetailsBean[i].roomPrice +'</td></tr>'								
													)
											}
						 	 	  }else{$("#searchuser").append('<table><tr><td>尚無飯店訂單</td></tr></table>')}						
						})
				};		
</script>
</head>
<body>
	<!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="col-lg-12 grid-margin stretch-card">
			  <!-- 會員資料查詢 -->
              <div class="card">
                <div class="card-body" style="background: lavender">
                  <h4 class="card-title" style="font-family: Noto Sans TC; text-align: center;">會員訂單查詢</h4>
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
				
                      </div>
                      <input type="text" id="user" class="form-control" aria-label="Text input with dropdown button" style="font-family: Noto Sans TC" placeholder="請輸入會員資訊">
                      <input class="btn btn-sm btn-gradient-primary" id='membersh' type="button" onclick="fundmember()"  value="搜尋" >
                    </div>
                  </div>
                  <!-- END 會員資料查詢 -->
   
<!--                  開始table -->
                 	<div class="col-lg-12 grid-margin stretch-card" style="background: lavender">
							<div class="card">
								<div class="card-body" style="background: lavender">
									<div id="searchuser">
									
<!-- 	----------------------加東西--------------------- -->

<!-- 	----------------------加東西--------------------- -->
																					
								</div>
							</div>
						</div>
<!-- 						---- -->
                  </div>
                </div>
              </div>
            </div>
 		</div>
      <!-- main-panel ends 最外層-->
     
     
     
     
    </div> <!-- 不能刪(include裡面的結束) -->
    <!-- page-body-wrapper ends -->
  </div> <!-- 不能刪(include裡面的結束) -->
  <!-- container-scroller -->
 
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <script src="js/dashboard.js"></script>

</body>
</html>