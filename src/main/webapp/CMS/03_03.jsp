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
var params = {};
var x ;
$(document).ready(function() {
		ticketSearch1()
})
	function ticketSearch1(){

	$.ajax({
		url : '/Travel/bindex03_012/User.controller',
		contentType : 'application/json; charset=UTF-8',
		type : 'get',
		dataType : 'json',
		data :params,
		}).done(
			function(JData) {
					console.log(JData);
					$("#searchuser").html("")
					$("#searchuser").append(
					'<table><thead><tr><td>票券名稱</td>'+
						  			  '<td>票券國家</td>'+
					   			      '<td>票券類型</td>'+
								      '<td>票券價格</td>'+
								      '<td>進貨數量</td>'+
								      '<td></td>'+
								      '<td></td></tr></thead><tbody id="searchuser1">'
					)
				$.each(JData, function(index, value) {
					if(value.updown == 0){
						x = '上架中'
					}else{
						x = '下架中'
					}
					
					$("#searchuser1").append(
							
						'<tr id="tr'+value.ticketNo+'"><td>'+value.ticketName+'</td>'+
							'<td>'+value.country+'</td>'+
							'<td>'+value.ticketDescription+'</td>'+
						    '<td>'+value.adultTicketPrice+'</td>'+
						    '<td>'+x+'</td>'+
						    '<td><input type="button" name="prodaction" value="下架商品" data-toggle="modal" id="exampleModal'+value.ticketNo+'" onclick=Delete('+value.ticketNo+')></td>'+
						    '<td><input type="button" name="prodaction" value="上架商品" data-toggle="modal" id="exampleModal'+value.ticketNo+'" onclick=Up('+value.ticketNo+')></td></tr>'
						  
//================================================================================================================================================					    	
					);
					})
					})};	
//連結票券資訊
			function Up(ticketNo){ 
				$.ajax({
		            type: "GET", //傳送方式
		            url: "/Travel/bindex03_03up/User.controller", 
		            dataType: "json", 
		            data: {'ticketNo':ticketNo}})
		            alert("上架成功")
		            window.location="/Travel/CMS/03_03.jsp"
			}

	    	function Delete(ticketNo){ 
	    		  var x = parseInt((Math.random()*50+1))
	    		  var y = parseInt((Math.random()*50+1))
	    		  var a = parseInt((Math.random()*50+1))
	    		  var b = parseInt((Math.random()*50+1))
	    		  var txt;
	    		  var person = prompt("你知道你正要移除"+ticketNo+"號訂單嗎？\n"+x+"+"+y+"=? 請作答","");
	    		  if(person == (x+y)){
	    			  alert("正確")
	    			  	$.ajax({
		            type: "GET", //傳送方式
		            url: "/Travel/bindex03_03down/User.controller", 
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
		            url: "/Travel/bindex03_03down/User.controller", 
		            dataType: "json", 
		            data: {'ticketNo':ticketNo}})
		              	alert("刪除成功")
		    		  }else{ 
		    				 alert("別來亂了，問問老闆是否真的要刪除"+ticketNo+"號訂單")
		    			 }
		    		  }
	    		  window.location="/Travel/CMS/03_03.jsp";
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
                  <h4 class="card-title" style="font-family: Noto Sans TC; text-align: center;">上下架票券</h4>
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
</tbody></table>
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