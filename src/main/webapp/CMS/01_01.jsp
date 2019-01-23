<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" -->
<!-- 	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" -->
<!-- 	crossorigin="anonymous"></script> -->
<!DOCTYPE html>
<html>
 <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>後台管理系統</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<%--   <link rel="stylesheet" href="<c:url value='/vendors/iconfonts/mdi/css/materialdesignicons.min.css' />"> --%>
<%--   <link rel="stylesheet" href="<c:url value='/vendors/css/vendor.bundle.base.css' />"> --%>
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
<%--   <link rel="stylesheet" href="<c:url value='/css/style.css' />"> --%>
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
<%--   <link rel="stylesheet" href="<c:url value='/images/favicon.png' />"> --%>
</head>

<jsp:include page="/CMS/blank-page.jsp" />

<title>後台管理者介面</title>

<style>
.table th{ 
	width:400px
}
</style>

<script>
var number
var user
var params = {}
	$(document).ready(function() {
		$('#select1').change(function() {
			params.number = $('#select1').val()
// 			alert(params.number)
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
// 								console.log(value)
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
                <div class="card-body">
                  <h4 class="card-title" style="font-family: Noto Sans TC">會員資料查詢</h4>
                  <div class="form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" style="font-family: Noto Sans TC"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">查詢方式</button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="#">會員帳號</a>
                          <a class="dropdown-item" href="#">會員電話</a>
                          <a class="dropdown-item" href="#">查詢全部</a>
                        </div>
                      </div>
                      <input type="text" class="form-control" aria-label="Text input with dropdown button" style="font-family: Noto Sans TC" placeholder="請輸入會員資訊">
                      <button class="btn btn-sm btn-gradient-primary" type="button" style="font-family: Noto Sans TC">搜尋</button>
                    </div>
                  </div>
                  <!-- END 會員資料查詢 -->
                 
                 	<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<table class="table table-bordered" border="1" width="400">
										<thead>
										<tr>
											<th>內容</th>
											<th>資訊</th>
										</tr>
										</thead>
<!-- 										分頁 -->
<!-- 										<tfoot> -->
<!-- 										<tr> -->
<!-- 											<td colspan="2"> -->
<!-- 											<div class="links"><a href="#">&laquo;</a> <a class="active" href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">&raquo;</a></div> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 										</tfoot> -->
										<tbody>
											<tr>
												<td>帳號</td><td>mciky</td>
											</tr>
											<tr>
												<td>姓</td><td>weiwei</td>
											</tr>
											<tr>
												<td>名</td><td>zhu</td>
											</tr>
											<tr>
												<td>identity</td><td>A123456789</td>
											</tr>
											<tr>
												<td>email</td><td>alex@lab.com</td>
											</tr>
											<tr>
												<td>性別</td><td>M</td>
											</tr>
											<tr>
												<td>電話</td><td>09123457689</td>
											</tr>
											<tr>
												<td>出生年月日</td><td>Jul 20,2001 12:00:00 AM</td>
											</tr>
											<tr>
												<td>地址</td><td>新北市板橋</td>
											</tr>
										</tbody>
										</table>
									
									
								</div>
							</div>
						</div>

                  </div>
                </div>
              </div>
            </div>
        
    
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
       <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <p class="text-muted text-center text-sm-left d-block d-sm-inline-block" style="font-family: Noto Sans TC; margin:0px">Copyright © 2017 Bootstrap Dash. All rights reserved.</p>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends 最外層-->
     
     
     
     
    </div> <!-- 不能刪(include裡面的結束) -->
    <!-- page-body-wrapper ends -->
  </div> <!-- 不能刪(include裡面的結束) -->
  <!-- container-scroller -->
 



<!-- 	<div class="boxmsg"> -->
<!-- 			<br> -->
<!--             <br> -->
<!-- 	 　　　　　　　　　　　　　　　　　　　　　　　　　　　會員資料查詢　　　　　　　　　　　　　　　　　　　　　　 -->
<!--             <br> -->
<!--             <br> -->
<!--             <br> -->

<!-- 		<div> -->
<!--    	 <label class="title">選擇查詢方法</label> -->
<!-- 		<select id="select1"> -->
<!-- 	       	<option value="zero"></option> -->
<!-- 			<option value="one">會員帳號</option> -->
<!-- 			<option value="two">會員電話</option> -->
<!-- 			<option value="three">全部會員</option> -->
<!-- 		</select> -->
<!--             <input type="text" id="user"size="40" placeholder="請輸入會員資訊" maxlength="10"> -->
<!--  			<input type="button" id='membersh' onclick="fundmember()" value="搜尋">　　 -->
<!--  		</div>　　　　　　           -->
<!-- 	</div> -->
<!-- 	<div class="boxmsg" id="searchuser"> -->
<!-- 	----------------------加東西--------------------- -->
<!-- 	 <label class="title">查詢結果</label> -->
		
<!-- 	</div> -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
<%--   <script src="<c:url value='/vendors/js/vendor.bundle.base.js' />"></script> --%>
<%--   <script src="<c:url value='/vendors/js/vendor.bundle.addons.js' />"></script> --%>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <script src="js/dashboard.js"></script>
<%--   <script src="<c:url value='/js/off-canvas.js' />"></script> --%>
<%--   <script src="<c:url value='/js/misc.js' />"></script> --%>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->

</body>
</html>