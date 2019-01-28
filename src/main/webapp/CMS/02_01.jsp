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
var month
var tprice
var params = {}
var sum = 0;

	$(document).ready(function() {
			$('#select1').change(function() {
			var sum = 0;
			params.month =  $('#select1').val()
// 			alert(params.month);
			$("#searchuser").html("")
 			$.ajax({
 					url : '/Travel/bindex02_01/User.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:params,
 				   }).done(function(JData) {  
 					  $("#searchuser").append(
 								'<div style="text-align: center;"><h2>'+Number($('#select1').val()) +'月份報表</h2></div>'+
 								'<br>'+
 								'<table><thead><tr><td>國家</td><td>名稱</td><td>數量</td><td>購買日期</td><td>價格</td></tr></thead><tbody id="searchuser1">'
 								);
						if(JData.length != 0){
  							for(var i = 0;i<JData.length;i++){
  								x = JData[i].total
	 							$("#searchuser1").append(		
	 							'<tr><td>'+ JData[i].country +'</td><td>'+ JData[i].tourName +'</td><td>'+ JData[i].quantity +'</td>'+
	 								       '<td>'+ JData[i].orderTime +'</td><td>'+ JData[i].total +'</td></tr>'
	 													)
	 													sum = sum + x
	 								 } $("#searchuser").append('<table><tr><td colspan="5" style="text-align:right; color:red">合計：'+sum+'</td></tr></table>')
								                       }else{
						$("#searchuser").append('<H1>業績差尚無訂單</H1>')
								                       }
											})
								})
					});
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
                  <h4 class="card-title" style="font-family: Noto Sans TC; text-align: center;">月份報表查詢</h4>
<form action=" <c:url value='/Travel/export.do'/>">
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
						<select id="select1" name="month" class="form-controller" style="border: white; width:100px;font-size: 18px;" aria-label="Text input with dropdown button"  >
					       	<option value="zero"></option>
							<option value="1">JAN</option>
							<option value="2">FEB</option>
							<option value="3">MAR</option>
							<option value="4">APR</option>
							<option value="5">MAY</option>
							<option value="6">JUN</option>
							<option value="7">JUL</option>
							<option value="8">AUG</option>
							<option value="9">SEP</option>
							<option value="10">OCT</option>
							<option value="11">NOV</option>
							<option value="12">DEC</option>　　　
						</select>
                      </div>
                      <input type="text" id="user" class="form-control" aria-label="Text input with dropdown button" style="font-family: Noto Sans TC" placeholder="請輸入會員資訊">
                      <input class="btn btn-sm btn-gradient-primary" id='membersh' type="button" onclick="fundmember()"  value="搜尋" >
<br>                      
<input type="submit" value="下載EXCEL檔">
	</form>						
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