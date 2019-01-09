<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<body>


	<div id='div_apend2'>
	</div>	
	
	<div id='div_apend'>
	</div>
	
	
<script>

		var params ={}

		    params.tourNo = 2

		
		$(document).ready(
				function() {
					$.ajax({
						url : '/Travel/tour/display',
						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
						data:params,
					}).done(
							function(JData) {
								$("#div_apend2").append(
										"<h1>"+JData.tourName+"</h1>"	
								)
								$.each(JData.TourPictureBean, function(index, value) {
									console.log(value)
									if(index==0){
										$("#div_apend2").append(
											"<div class='row'>"+
											"<div class='col-lg-5'><img src="+value.pic+" width='775px'></div><div class='col-lg-7'><p>2121133456</p></div></div>"+
											"<h2>"+value.pictitle+"</h2>"+
											"<div>"+value.picDetail+"</div>"
										)
									}else{
										$("#div_apend").append(
													+ value.tpicNo
													+ +value.pic
													+ value.picDetail
													+ value.pictitle
										);
									}
								});
							})

				});
	</script>
</body>
</html>