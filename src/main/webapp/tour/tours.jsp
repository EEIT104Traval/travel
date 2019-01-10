<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Voyage - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>

<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<body>


<%-- 	<jsp:include page="nav.jsp"></jsp:include> --%>

	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('<c:url value='/voyage/images/bg_2.jpg'/>');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row slider-text align-items-center">
					<div class="col-md-7 col-sm-12 ftco-animate">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="index.jsp">Home</a></span> <span>Tour</span>
						</p>
						<h1 class="mb-3">Tours </h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END slider -->

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div id="box" class="row">
					
					<p>1231346513164313</p>
					
					
						
					
<!-- 						<div class="col-md-6 col-lg-6 mb-4 ftco-animate"> -->
<!-- 							<a href="#" class="block-5" -->
<!-- 								style="background-image: url('images/tour-1.jpg');"> -->
<!-- 								<div class="text"> -->
<!-- 									<span class="price">$399</span> -->
<!-- 									<h3 class="heading">Group Tour in Maldives</h3> -->
<!-- 									<div class="post-meta"> -->
<!-- 										<span>Ameeru Ahmed Magu Male’, Maldives</span> -->
<!-- 									</div> -->
<!-- 									<p class="star-rate"> -->
<!-- 										<span class="icon-star"></span><span class="icon-star"></span><span -->
<!-- 											class="icon-star"></span><span class="icon-star"></span><span -->
<!-- 											class="icon-star-half-full"></span> <span>500 reviews</span> -->
<!-- 									</p> -->
<!-- 								</div> -->
<!-- 							</a> -->
<!-- 						</div> -->
						
					</div>
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- END -->

				<div class="col-lg-4 sidebar">
					<div class="sidebar-box ftco-animate">
						<div class="search-tours bg-light p-4">
							<h3>Find your tour</h3>
							<form action="" method="post">
								<div class="fields">
									<div class="row flex-column">

										<div class="textfield-search col-sm-12 group mb-3">
											<input type="text" class="form-control"
												placeholder="Search Location">
										</div>

										<div class="check-in col-sm-12 group mb-3">
											<input type="text" id="checkin_date" class="form-control"
												placeholder="Check-in date">
										</div>

										<div class="check-out col-sm-12 group mb-3">
											<input type="text" id="checkout_date" class="form-control"
												placeholder="Check-out date">
										</div>
										<div class="select-wrap col-sm-12 group mb-3">
											<div class="icon">
												<span class="ion-ios-arrow-down"></span>
											</div>
											<select name="" id="" class="form-control">
												<option value="">Guest</option>
												<option value="">1</option>
												<option value="">2</option>
												<option value="">3</option>
												<option value="">4+</option>
											</select>
										</div>
										<div class="col-sm-12 group mb-3">
											<input type="submit" class="search-submit btn btn-primary"
												value="Find Flights">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h3>Categories</h3>
							<li><a href="#">Tours <span>(12)</span></a></li>
							<li><a href="#">Hotels <span>(22)</span></a></li>
							<li><a href="#">Cruises <span>(37)</span></a></li>
							<li><a href="#">Restaurant <span>(42)</span></a></li>
							<li><a href="#">Destination <span>(14)</span></a></li>
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3>Tag Cloud</h3>
						<div id="tagcloud" class="tagcloud">
						
							<a href="#" class="tag-cloud-link">Life</a> 

						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3>Paragraph</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ducimus itaque, autem necessitatibus voluptate quod mollitia
							delectus aut, sunt placeat nam vero culpa sapiente consectetur
							similique, inventore eos fugit cupiditate numquam!</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	    <script>
   	$(document).ready(function() {
//    		$('.tag-cloud-link').mouseover(over).mouseout(out);		
		
// 		function over(evt){
// 			 $(this).css('color','purple').css('background','yellow');
// 		 }
// 		 function out(evt){
// 			 $(this).css('color','orange').css('background','white');
// 		 }

		 $.getJSON( "/Travel/groupTour", function( data ) {
			 var contents ="";
			 var contentss ="";
			 console.log(data);
<<<<<<< HEAD
			 $.each(data.result, function(idx,val){
				 console.log(data.count);
// 				 console.log(idx+",  "+val.tourName+","+val.content); 
=======
			 $.each(data, function(idx,val){
// 				 console.log(idx+",  "+val.tourName+","+val.content);
>>>>>>> branch 'master' of https://github.com/EEIT104Traval/travel.git
// 					 console.log(data[idx].tourBatchBean[0].price_adult);
// 				 console.log(data[idx].TourPictureBean[0].pic);
// 					                                            ftco-animate  "+val.TourPictureBean[0].pic +"
				contents +="<div class=\"col-md-6 col-lg-6 mb-4              \">"
					+"<a href=\"<c:url value='tourDisplay.jsp?tourNo="+val.tourNo+"'/>\" class=\"block-5\" style=\"background-image: url('"+val.TourPictureBean[0].pic +"');\">"						
					+	"<div class=\"text\">"  
					+		"<span class=\"price\" style=\"color:red ; font-weight:bold\"><b><u>$"+val.tourBatchBean[0].price_adult+"</u></b></span>"
					+		"<h3 class=\"heading\">"+val.tourName+"</h3>"
					+		"<div class=\"post-meta\">"
					+			"<span>"+val.content+"</span>"
					+		"</div>"
					+		"<p class=\"star-rate\">"
					+			"<span class=\"icon-star\"></span><span class=\"icon-star\"></span><span class=\"icon-star\"></span><span class=\"icon-star\"></span><span class=\"icon-star-half-full\"></span> <span>500 reviews</span>"							
					+		"</p>"
					+	"</div>"
					+"</a>"
				+"</div>"
					 
			 })
			 $("#box").html(contents);
		 });
	
			
		 $.getJSON( "/Travel/tourTags", function( data ) {
			 var contents ="";
			 var contentss ="";
			 console.log(data);
			 $.each(data, function(idx,val){
				 console.log(val);
				contents +='<a href="#" class="tag-cloud-link">'+val+'</a>'; 
					 
			 })
			 $("#tagcloud").html(contents);
		 });
		 
		}) 

		
   </script>
  

	<jsp:include page="/voyage/foo.jsp"></jsp:include>

</body>
</html>