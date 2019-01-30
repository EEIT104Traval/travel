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

var params = {}


	$(document).ready(function() {
	});
	function one(){
		$('#ticketName').val('東京迪士尼');
		$('#category').val('門票');
		$('#adultTicketPrice').val('2000');
		$('#adultTicketSellQ').val('30');
		$('#adultTicketSelledQ').val('0');
		$('#country').val('japan');
		$('#validity').val('1');
		$('#ticketDescription').val('陸地門票');
		$('#ticketPicture').val('images/image_9.jpg');
		$('#special_restrictions').val('限非居民');
	}
	function chack(){
		params.ticketName = $('#ticketName').val();
		params.category = $('#category').val();
		params.adultTicketPrice = $('#adultTicketPrice').val();
		params.adultTicketSellQ = $('#adultTicketSellQ').val();
		params.adultTicketSelledQ = $('#adultTicketSelledQ').val();
		params.country = $('#country').val();
		params.validity = $('#validity').val();
		params.ticketDescription = $('#ticketDescription').val();
		params.ticketPicture = $('#ticketPicture').val();
		params.special_restrictions = $('#special_restrictions').val();
	
		$.ajax({
            type: "GET", //傳送方式
            url: "/Travel/bindex03_011/User.controller", 
            dataType: "json", 
            data: params,
            done: function(data) {			
 				console.log(data);
 				
            } 	
		})
 			window.location.href='/Travel/CMS/03_01.jsp';
	}	
//-------------------------------查詢全部票券↓↓↓↓↓↓↓↓↓↓↓↓↓---------------------------	
	function show(){
	$("#searchuser").html("")
	$.ajax({
			url : '/Travel/bindex03_012/User.controller',
			contentType : 'application/json; charset=UTF-8',
			type : 'get',
			dataType : 'json',
		   }).done(function(JData) {
			  $("#searchuser").append(
					'<div style="text-align: center;"><h2>票券庫存查詢系統</h2></div>'+
					'<br>'+
			'<table><thead><tr><td>票券號碼</td><td>票券國家</td><td>票券名稱</td><td>票券價格</td><td>庫存數量</td><td>銷售數量</td></tr></thead><tbody id="searchuser1">'
								);		  
			   console.log(JData)
			   console.log(JData.length)  
			for(var i = 0;i<JData.length;i++){
						$("#searchuser1").append(
							'<tr><td>'+JData[i].ticketNo+'</td>'+
							    '<td>'+JData[i].country+'</td>'+
								'<td>'+JData[i].ticketName+'</td>'+
								'<td>'+JData[i].adultTicketPrice+'</td>'+
								'<td>'+(JData[i].adultTicketSellQ-JData[i].adultTicketSelledQ)+'</td>'+
								'<td>'+JData[i].adultTicketSelledQ+'</td></tr>'
											)
											
			}})};	
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
                  <h4 class="card-title" style="font-family: Noto Sans TC; text-align: center;">新增票券</h4>
                  <input type="button" value="一鍵" onclick="one()">
                  <div class="form-group">
<!--                     <div class="input-group"> -->
                      <div class="input-group-prepend">
                      <table>
						<thead><tr><td>票券名稱</td><td>票券類型</td><td>票券價格</td><td>庫存數量</td><td>國家</td></tr><thead>
						<tbody><tr><td><input style="width:125px" type="text" id="ticketName"></td>
							       <td><input style="width:125px" type="text" id="category"></td>
							       <td><input style="width:125px" type="text" id="adultTicketPrice"></td>
							       <td><input style="width:125px" type="text" id="adultTicketSellQ"></td>
							       <td><input style="width:125px" type="text" id="country"></td></tr></tbody>
						<thead><tr><td>使用期限</td><td>票券資訊</td><td>票券限制</td><td>銷售數量</td><td>
						<input type="text" id="ticketPicture" style="display:none"></td></tr></thead>
						<tbody><tr><td><input style="width:125px" type="text" id="validity"></td>
							       <td><input style="width:125px" type="text" id="ticketDescription"></td>
							       <td><input style="width:125px" type="text" id="special_restrictions"></td>
							       <td><input style="width:125px" type="text" id="adultTicketSelledQ"></td>
							       <td style="text-align: center"><input type="button" id='membersh' onclick="chack()" value="確認新增">
								   <input type="button" id='membersh' onclick="show()" value="查看資訊"></td></tr></tbody></table>
                      </div>
<!--                      </div> -->
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