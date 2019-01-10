<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/bg_2.jpg'/>');"data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row slider-text align-items-center">
					<div class="col-md-7 col-sm-12 ftco-animate">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="<c:url value='/voyage/index.jsp' />">Home</a></span> <span>Tour</span>
						</p>
						<h1 class="mb-3">Tours </h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END slider -->
	
		<div class="container">
		
			<div id='div_apend2'>
			</div>	
			
			<div id='div_apend'>
			</div>
			
		</div>

	<script>
		var url = location.href;
		var ary = {}
		var params ={}
		if(url.indexOf('?')!=-1)
		{
		    //在此直接將各自的參數資料切割放進ary中
		        ary = {}
		    	ary = url.split('tourNo=');
		    	params.tourNo = ary[1]
		    //此時ary的內容為：
			console.log(ary)
// 			alert(ary[1])
		}
		
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
	<jsp:include page="/voyage/foo.jsp"/>
</body>
</html>