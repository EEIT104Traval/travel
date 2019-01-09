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

		<div class="container" style='width:1360px'>
		
			<div id='div_apend2'>
			</div>	
			<br/><br/>
			<div id='div_apend'>
			</div>
			
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
										"<h1>"+JData.tourName+"</h1><br/>"	
								)
								$.each(JData.TourPictureBean, function(index, value) {
									console.log(value)
									if(index==0){
										$("#div_apend2").append(
											"<div class='row'>"+
											"<div class='col-lg-8'><img src="+value.pic+" width='500px'></div><div class='col-lg-4'><p>2121133456</p></div></div>"+
// 											"<h2>"+value.pictitle+"</h2>"+
											"<h2 class=\"tit-lg tit-lg-line text-center\" style=\"font-family: Arial, &quot;Microsoft JhengHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-weight: 700; color: rgb(45, 124, 209); margin-top: 0px; margin-bottom: 0px; font-size: 3.2rem; padding: 30px 0px; position: relative;\"><div style=\"position: relative; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; display: inline-block; padding: 0px 17px;\"><span class=\"fa fa-bookmark\" aria-hidden=\"true\" style=\"display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 18px; line-height: 29px; font-family: FontAwesome; text-rendering: auto; -webkit-font-smoothing: antialiased; width: 33px; height: 33px; color: rgb(251, 185, 73); border-radius: 100%; border: 2px solid rgb(251, 185, 73); vertical-align: middle; margin-right: 10px;\"></span></div><span style=\"font-size: 3.2rem; vertical-align: middle;\">商品說明</span></h2>"
// 											+"<div>"+value.picDetail+"</div>"
										)
									}else{
										$("#div_apend").append(
											 "<img style='float:right;' src="+value.pic+">"+
											 "<h1 style='color:blue'>第"+value.tpicNo+"天</h1>"+
											 "<h4>"+value.pictitle+"</h4>"+
											 "<br/><br/>"+
											 "<p>"+value.picDetail+"</p><br/>"
										);
									}
								});
							})

				});
	</script>
</body>
</html>