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
	font-weight:900;
}
</style>

<script>
var params = {};

$(document).ready(function() {
		ticketSearch1()
})
	function ticketSearch1(){

	$.ajax({
		url : '/Travel/bindex03_021/User.controller',
		contentType : 'application/json; charset=UTF-8',
		type : 'get',
		dataType : 'json',
		data :params,
		}).done(
			function(JData) {
					console.log(JData);
					$("#searchuser").html("")
					$("#searchuser").append(
					'<table><th style="width:148px">票券名稱</th>'+
						   '<th style="width:148px">票券國家</th>'+
		   				   '<th style="width:148px">票券類型</th>'+
						   '<th style="width:148px">票券價格</th>'+
						   '<th style="width:148px">進貨數量</th>'+
						   '<th style="width:148px">銷售數量</th>'+
						   '<th style="width:50px"><input type="submit" name="prodaction" value="刷新" onclick="ticketSearch1()")></th></table><br>'
					)
				$.each(JData, function(index, value) {
					$("#searchuser").append(
							'<div>'+
					'<table><tr id="tr'+value.ticketNo+'"><th style="width:150px">'+value.ticketName+'</th>'+
							'<th style="width:150px">'+value.country+'</th>'+
							'<th style="width:150px">'+value.ticketDescription+'</th>'+
						    '<th style="width:150px">'+value.adultTicketPrice+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSellQ+'</th>'+
						    '<th style="width:150px">'+value.adultTicketSelledQ+'</th>'+
						    '<th style="width:50px">'+
						    '<input type="button" name="prodaction" value="Delete" data-toggle="modal" id="exampleModal'+value.ticketNo+'" onclick=Delete('+value.ticketNo+')></th></tr></table>'+
						    '</div>'
//================================================================================================================================================					    	
					);
					})
					})};	
//連結票券資訊
	    	function Delete(ticketNo){ 
// 	    		  alert(ticketNo);
	    		  var x = parseInt((Math.random()*50+1))
	    		  var y = parseInt((Math.random()*50+1))
	    		  var a = parseInt((Math.random()*50+1))
	    		  var b = parseInt((Math.random()*50+1))
// 	    		  alert(x);
// 	    		  alert(y);
	    		  var txt;
	    		  var person = prompt("你知道你正要移除"+ticketNo+"號訂單嗎？\n"+x+"+"+y+"=? 請作答","");
	    		  if(person == (x+y)){
	    			  alert("正確")
	    			  	$.ajax({
		            type: "GET", //傳送方式
		            url: "/Travel/bindex03_031/User.controller", 
		            dataType: "json", 
		            data: {'ticketNo':ticketNo}})
		              	alert("刪除成功")
	    		  }else{
	    			  alert("你是金手指嗎?")
// 	    			  var txt;
		    		  var person1 = prompt("你知道你正要移除"+ticketNo+"號訂單嗎？，再給你一次機會\n"+a+"+"+b+"=? 請作答","");
		    		  if(person1 == (a+b)){
		    			  alert("正確")
		    			  	$.ajax({
		            type: "GET", //傳送方式
		            url: "/Travel/bindex03_031/User.controller", 
		            dataType: "json", 
		            data: {'ticketNo':ticketNo}})
		              	alert("刪除成功")
		    		  }else{ 
		    				 alert("別來亂了，問問老闆是否真的要刪除"+ticketNo+"號訂單")
		    			 }
		    		  }
	    		  }
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
                  <h4 class="card-title" style="font-family: Noto Sans TC; text-align: center;">下架票券</h4>
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-prepend" style="margin: auto">

                      </div>
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