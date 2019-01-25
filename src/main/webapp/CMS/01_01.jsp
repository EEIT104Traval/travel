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
/* border:1px solid black; */
}

table td{ 
 	width:125px;
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
								date = new Date(value.birth)
 						$("#searchuser").append(
		
		
  							'<table><tr><td>帳號</td><td>姓</td>'+
  							'<td>名</td><td>identityNo</td><td>email</td></tr>'+
  							'<tr><td>'+value.accountName +'</td>'
	  						   +'<td>'+value.lastname +'</td>'
	  						   +'<td>'+value.firstname +'</td>'
	  						   +'<td>'+value.identityNo +'</td>'
	  						   +'<td>'+value.email +'</td>'
  							+'</tr><tr><td>性別</td><td>電話號碼</td><td>出生年月日</td><td colspan="2">地址</td></tr>'+
  							'<tr><td>'+value.sex +'</td>'
  							   +'<td>'+value.phone +'</td>'
  							   +'<td>'+date.getFullYear()+'/'+parseInt(date.getMonth()+1)+'/'+date.getDate()+'</td>'
  							   +'<td colspan="2">'+value.address +'</td></tr></table><hr><br>'			
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