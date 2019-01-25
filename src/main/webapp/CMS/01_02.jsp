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
.table th{ 
	width:400px;
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
							'<table ><th style="width:200px">類型</th><th style="width:600px">名稱</th>'+
							'<th style="width:200px">數量</th><th style="width:350px">購買日期</th><th style="width:350px">總價格</th></table>'+
							'<br>'		       );
			
							console.log("-------------------------------------");
							console.log(JData);
		    if(JData.TourOrderInfoBean != null){
					for(var i = 0 ; i<JData.TourOrderInfoBean.length ; i++){
 							$("#searchuser").append(		
 							'<table ><th style="width:200px">旅遊行程</th>'+
 							'<th style="width:600px">'+ JData.TourOrderInfoBean[i].tourName +'</th>'+
 							'<th style="width:200px">'+ JData.TourOrderInfoBean[i].quantity +'</th>'+
 							'<th style="width:350px">'+ JData.TourOrderInfoBean[i].orderTime +'</th>'+
 						    '<th style="width:350px">'+ JData.TourOrderInfoBean[i].total +'</th></table>'								
													)
											}
						   		  }else{$("#searchuser").append('<table ><th style="width:816px">尚無旅遊行程</th></table>')}
 			if(JData.TicketOrderInfoBean != null){
					for(var i = 0;i<JData.TicketOrderInfoBean.length;i++){
							$("#searchuser").append(		
							'<table ><th style="width:200px">門票</th>'+
							'<th style="width:600px">'+ JData.TicketOrderInfoBean[i].ticketName +'</th>'+
					        '<th style="width:200px">'+ JData.TicketOrderInfoBean[i].adultTicketCount +'</th>'+
					        '<th style="width:350px">'+ JData.TicketOrderInfoBean[i].orderDate +'</th>'+
					        '<th style="width:350px">'+ JData.TicketOrderInfoBean[i].totalPrice +'</th></table>'								
													)	
											}
								  }else{$("#HotelOrderDetailsBean").append('<table ><th style="width:816px">尚無門票訂單</th></table>')}				 			
			if(JData.HotelOrderDetailsBean != null){
					for(var i = 0;i<JData.HotelOrderDetailsBean.length;i++){
							$("#searchuser").append(		
							'<table ><th style="width:200px">飯店</th>'+
							'<th style="width:600px">'+ JData.HotelOrderDetailsBean[i].hotelName +'</th>'+
					        '<th style="width:200px">'+ JData.HotelOrderDetailsBean[i].stayNights+'(天) </th>'+
					        '<th style="width:350px">'+ JData.HotelOrderDetailsBean[i].createDate +'</th>'+
					        '<th style="width:350px">'+ JData.HotelOrderDetailsBean[i].roomPrice +'</th></table>'								
													)
											}
						 	 	  }else{$("#searchuser").append('<table ><th style="width:816px">尚無飯店訂單</th></table>')}						
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