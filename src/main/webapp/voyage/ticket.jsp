<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html lang="tw-zh">
<link rel="stylesheet" href="css/main_styles.css">
<head>
<title>Time To Travel</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<!--	https://hk.saowen.com/a/3bb2d62596486787bb77995a447207f180a828af15cddf5912c0aceaad24caf0 -->
		<script>
			var params = {};
			
			$(document).ready(function() {
				ticketSearch1();
				
			});

		

				function ticketSearch1(){
						params.country = $('#country').val();
					$.ajax({
						url : '/Travel/voyage/ticket.controller',
 						contentType : 'application/json; charset=UTF-8',
						type : 'get',
						dataType : 'json',
						data :params,
					}).done(
							function(JData) {
									$("#div_ticket_search").html("")
								$.each(JData, function(index, value) {
									console.log(value);
									$("#div_ticket_search").append(
//動態生成票券選項
// ------------------------------------------------------------------------------------------------------------------------------------------------------
'<div class="col-md-6 col-lg-3">'+
'<div class="blog-entry">'+
	'<a class="block-20" style="background-image: url('+value.ticketPicture+');"> </a>'+
	'<div class="text p-4">'+
		'<div class="meta" style="margin-left: 45px;">'+
			'<div>'+ value.ticketName +'</div>'+
			'<div>€'+ value.adultTicketPrice +'</div>'+
		'</div>'+
		'<br>'+
		'<div class="d-flex flex-lg-row flex-column align-items-start justify-content-start" style="margin-left: 58px;">'+
			'<input type="image" src="images/MIN.png" id="QLess" width="15%"> '+
			'<input type="text" value="0" readonly="readonly" id="text_box" style="text-align: center; height: 20px; width: 40px; margin: 0; border: 0px;">'+
			'<input type="image" src="images/PL.png" id="QAdd"  width="15%">'+
		'</div>'+
		'<br>'+
		'<p class="clearfix">'+
			'<a	href="'+ value.traffic_information +'" class="float-left">Read more</a> <input type="image"	src="images/CK.png" onClick="document.form1.submit()" width="13%" style="float: right;">'+
		'</p>'+
	'</div>'+
'</div>'+
'</div>'					 
												);
									});
							})
// 					});
				 $(function() {  
		                $("#QAdd").click(function() {  
		                	alert("ggg")
		                    var t = $(this).parent().find('input[id*=text_box]');  
		                    if(t.val()==""||undefined||null){  
		                        t.val(0);  
		                    }  
		                    t.val(parseInt(t.val()) + 1)  
		                    setTotal();  
		                })  
		                $("#QLess").click(function() {  
		                	alert("ggg")
		                    var t = $(this).parent().find('input[id*=text_box]');  
		                    if(t.val()==""||undefined||null){  
		                        t.val(0);  
		                    }  
		                    t.val(parseInt(t.val()) - 1)  
		                    if(parseInt(t.val()) < 0) {  
		                        t.val(0);  
		                    }  
		                    setTotal();  
		                })  
		                $("#text_box").keyup(function(){  
		                    var t = $(this).parent().find('input[id*=text_box]');  
		                    if(parseInt(t.val())==""||undefined||null || isNaN(t.val())) {  
		                        t.val(0);  
		                    }  
		                    setTotal();  
		                })  
		               
		            })  
			}

	</script>
</head>

<body>

	<!-- END nav -->
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('images/bg_1.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row slider-text align-items-center">
					<div class="col-md-7 col-sm-12 ftco-animate">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="index.jsp">Home</a></span> <span>ticket</span>
						</p>
						<h1 class="mb-3">Ticket</h1>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">旅遊票券</div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form"
								method="get">
								<div
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input type="text" class="search_input search_input_1" id="country"
										style="width: 24%" placeholder="請輸入國家" name="country">
									<input type="text" class="search_input search_input_2"
										style="width: 24%" placeholder="類型 - (門票、交通、餐券)" name="">
									<input type="text" class="search_input search_input_3"
										style="width: 24%" placeholder="關鍵字" name="">
									<input	type="button" id='ticketsh' onclick="ticketSearch1()" class="home_search_button" value="搜尋">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- END slider -->
	<section class="ftco-section bg-light">


		<div class="container">
			<div class="row" id="div_ticket_search">
<!--   --------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   --------------------------------------------------------------------------------------------------------------------------------------- -->
		</div>
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="/voyage/foo.jsp" />
	
	
</body>
</html>