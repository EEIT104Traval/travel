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
var number
var user
var params = {}
	$(document).ready(function() {
		$('#select1').change(function() {
			params.number = $('#select1').val()
		})
	});
  			function fundmember(){
 			params.user = $('#user').val();
			$("#searchuser").html("")
 			$.ajax({
 					url : '/Travel/bindex01_01/User.controller',
 					contentType : 'application/json; charset=UTF-8',
 					type : 'get',
 					dataType : 'json',
 					data:params,
 				   }).done(function(JData) {
 					   console.log(JData)
							$.each(JData, function(index, value) {
								console.log(value.accountName)
								
 						$("#searchuser").append(
		
		
		
		
  							'<table><th style="width:150px">帳號</th><th style="width:150px">姓</th>'+
  							'<th style="width:150px">名</th><th style="width:150px">identityNo</th><th style="width:150px">email</th><tr>'
  							+'<th>'+value.accountName +'</th>'
  							+'<th>'+value.firstname +'</th>'
  							+'<th>'+value.lastname +'</th>'
  							+'<th>'+value.identityNo +'</th>'
  							+'<th>'+value.email +'</th>'
  							+'</tr><th>性別</th><th>電話號碼</th><th>出生年月日</th><th colspan="2">地址</th><tr>'
  							+'<th>'+value.sex +'</th>'
  							+'<th>'+value.phone +'</th>'
  							+'<th>'+value.birth +'</th>'
  							+'<th colspan="2">'+value.address +'</th></tr></table><br>'			
 							)})
 							document.getElementById("user").value="";
 						})};
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
                  <h4 class="card-title" style="font-family: Noto Sans TC; text-align: center;">會員資料查詢</h4>
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">

						<select id="select1" class="form-controller" style="border: white" aria-label="Text input with dropdown button" >
					       	<option value="zero"></option>
							<option value="one">會員帳號</option>
							<option value="two">會員電話</option>
							<option value="three">全部會員</option>
						</select>
						
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