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
					$("#searchuser").append(
					'<table><tr><td>票券名稱</td>'+
						   '<td>票券國家</td>'+
		   				   '<td>票券類型</td>'+
						   '<td>票券價格</td>'+
						   '<td>進貨數量</td>'+
						   '<td>銷售數量</td>'+
						   '<td></td><td></td></tr></table><br>'
					)

				$.each(JData, function(index, value) {
// 					$("#searchuser").html("")
					$("#searchuser").append(
					'<table><tr id="tr'+value.ticketNo+'"><td>'+value.ticketName+'</td>'+
							'<td>'+value.country+'</td>'+
							'<td>'+value.ticketDescription+'</td>'+
						    '<td>'+value.adultTicketPrice+'</td>'+
						    '<td>'+value.adultTicketSellQ+'</td>'+
						    '<td>'+value.adultTicketSelledQ+'</td>'+
						    '<td><input type="submit" name="prodaction" value="Update" onclick=ticketchange('+value.ticketNo+')></td>'+
						    '<td><input type="submit" name="prodaction" value="Check" onclick=check('+value.ticketNo+')></td></tr></table>'

											)
							})
				})}	
//連結票券資訊
	    	function ticketchange(ticketNo){ 
				
	    		var ticketName=$("#tr"+ticketNo+">td:nth-child(1)").text()
				var country=$("#tr"+ticketNo+">td:nth-child(2)").text()
				var ticketDescription=$("#tr"+ticketNo+">td:nth-child(3)").text()
				var adultTicketPrice=$("#tr"+ticketNo+">td:nth-child(4)").text()
				var adultTicketSellQ=$("#tr"+ticketNo+">td:nth-child(5)").text()
				var adultTicketSelledQ=$("#tr"+ticketNo+">td:nth-child(6)").text()
				
				$("#tr"+ticketNo+">td:nth-child(1)").prop("outerHTML","<td>"+"<input type='text' style='width:100%' id='ticketName' value='"+ticketName+"' />"+"</td>");
				$("#tr"+ticketNo+">td:nth-child(2)").prop("outerHTML","<td>"+"<input type='text' style='width:101%' id='country' value='"+country+"' />"+"</td>");
				$("#tr"+ticketNo+">td:nth-child(3)").prop("outerHTML","<td>"+"<input type='text' style='width:101%' id='ticketDescription' value='"+ticketDescription+"' />"+"</td>");
				$("#tr"+ticketNo+">td:nth-child(4)").prop("outerHTML","<td>"+"<input type='text' style='width:101%' id='adultTicketPrice' value='"+adultTicketPrice+"' />"+"</td>");
				$("#tr"+ticketNo+">td:nth-child(5)").prop("outerHTML","<td>"+"<input type='text' style='width:101%' id='adultTicketSellQ' value='"+adultTicketSellQ+"' />"+"</td>");
				$("#tr"+ticketNo+">td:nth-child(6)").prop("outerHTML","<td>"+"<input type='text' style='width:101%' id='adultTicketSelledQ' value='"+adultTicketSelledQ+"' />"+"</td>");	
					
}
	    	function check(ticketNo){ 
	    		var ticketName=$("#ticketName").val()
				var country=$("#country").val()
				var ticketDescription=$("#ticketDescription").val()
				var adultTicketPrice=$("#adultTicketPrice").val()
				var adultTicketSellQ=$("#adultTicketSellQ").val()
				var adultTicketSelledQ=$("#adultTicketSelledQ").val()
				console.log('ticketName'+ticketName)
				$.ajax({
		            type: "GET", //傳送方式
		            url: "/Travel/bindex03_022/User.controller", 
		            dataType: "json", 
		            data: {'ticketNo':ticketNo,'ticketName':ticketName,'country':country,'ticketDescription':ticketDescription,'adultTicketPrice':adultTicketPrice,'adultTicketSellQ':adultTicketSellQ,'adultTicketSelledQ':adultTicketSelledQ
		            },
		            done: function(data) {
		 				console.log(data);
		            }
	       		 });
				$("#tr"+ticketNo+">td:nth-child(1)").prop("outerHTML","<td style='width:150px'>"+ticketName+"</td>");
				$("#tr"+ticketNo+">td:nth-child(2)").prop("outerHTML","<td style='width:150px'>"+country+"</td>");
				$("#tr"+ticketNo+">td:nth-child(3)").prop("outerHTML","<td style='width:150px'>"+ticketDescription+"</td>");
				$("#tr"+ticketNo+">td:nth-child(4)").prop("outerHTML","<td style='width:150px'>"+adultTicketPrice+"</td>");
				$("#tr"+ticketNo+">td:nth-child(5)").prop("outerHTML","<td style='width:150px'>"+adultTicketSellQ+"</td>");
				$("#tr"+ticketNo+">td:nth-child(6)").prop("outerHTML","<td style='width:150px'>"+adultTicketSelledQ+"</td>");		
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
                  <h4 class="card-title" style="font-family: Noto Sans TC; text-align: center;">修改票券</h4>
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