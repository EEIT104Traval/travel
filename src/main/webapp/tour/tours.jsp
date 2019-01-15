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
	<link rel="stylesheet" href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/owl.carousel.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/owl.theme.default.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/magnific-popup.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/ionicons.min.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/bootstrap-datepicker.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/jquery.timepicker.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />">
    <link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">
    <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css">
</head>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<body>
<jsp:include page="../voyage/nav.jsp"></jsp:include>
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
			<p id= "idd"></p>
				<div class="col-lg-8">				
					<div id="box" class="row">
<%-- 					<c:forEach items="${tags}"  var="tag">	 --%>
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
<%-- 					</c:forEach>			 --%>
					</div>
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul id="nav">
<!-- 									<li><a href="#">&lt;</a></li> -->
<!-- 									<li class="active"><span>1</span></li> -->
<!-- 									<li><a href="#">2</a></li> -->
<!-- 									<li><a href="#">3</a></li> -->
<!-- 									<li><a href="#">4</a></li> -->
<!-- 									<li><a href="#">5</a></li> -->
<!-- 									<li><a href="#">&gt;</a></li> -->
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
							<h3 style="font-weight:bold;">旅遊資訊</h3>
							<li><a href="<c:url value='toursDetail.jsp'/>">各國旅遊資訊</a></li>
							<li><a href="#">Hotels <span>(22)</span></a></li>
							<li><a href="#">Cruises <span>(37)</span></a></li>
							<li><a href="#">Restaurant <span>(42)</span></a></li>
							<li><a href="#">Destination <span>(14)</span></a></li>
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3 style="font-weight:bold;">主題控</h3>
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
   		$('#tagcloud').on("mouseover","a",function(){
   			$(this).css('color','purple').css('background','yellow');
   		})
   		$('#tagcloud').on("mouseout","a",function(){
   			$(this).css('color','gray').css('background','#00FFFF');
   		})
//    		mouseover(over).mouseout(out);		
		
// 		function over(evt){
// 			 $(this).css('color','purple').css('background','yellow');
// 		 }
// 		 function out(evt){
// 			 $(this).css('color','orange').css('background','white');
// 		 }
		 
		 $.getJSON( "/Travel/groupTour", function( data ) {
			 var contents ="";
			 var tagcontents ="";
// 			 console.log(data.result);
//              console.log(data.result[0].TourTagsBean);
// 			 console.log(data.result[0].TourTagsBean[0].tag);
			 $.each(data.result, function(idx,val){
// 				 console.log(data.result[idx].TourTagsBean[0].tag);
				 //所有行程
				contents +="<div id=\"tourpage\" class=\"col-md-6 col-lg-6 mb-4\">"
					+"<a href=\"<c:url value='/tour/Display2/travel.jsp?tourNo="+val.tourNo+"'/>\" class=\"block-5\" style=\"background-image: url('/Travel/tour/Display/images/"+val.TourPictureBean[0].pic +"');\">"						
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
				//形成標籤
				tagcontents +='<a href="#idd" id="'+data.result[idx].TourTagsBean[0].tag
				            +'" class="tag-cloud-link">'+data.result[idx].TourTagsBean[0].tag
				            +'</button>';
					 
			 })
			 $("#box").html(contents);
			 $("#tagcloud").html(tagcontents);
			 
/* -----------------------分頁-------------------------------------------------------   */	 			 
			 var rowsShown=6;                             //每頁顯示的行
		     var rowsTotal=data.count;         //獲取總共的行
		     var numPages=Math.ceil(rowsTotal/rowsShown); //計算出有多少頁
// 		     alert(data.count);
		     //顯示頁碼
		      for(var i=0;i<numPages;i++){
		          var pageNum=i+1;
		         $('#nav').append( '<li><a href="#idd" rel="'+i+'" ><span>'+pageNum+'</span></a></li>');
		     }                     //'<a href="#" rel="'+i+'">'+pageNum+'</a>&nbsp;'
		    
		     $('#box > #tourpage').hide(); // 先將全部行隱藏
		     $('#box > #tourpage').slice(0,rowsShown).show();// 再顯示第一頁應該顯示的行數(
		     $('#nav li:first').addClass('active');//為第一個頁碼加一個值為active的class屬性，方便加樣式
		     
		     //頁碼點擊事件
		     $('#nav').on("click", "a", function(){
		         $('#nav li ').removeClass('active');    //移除所有頁碼的active類
		         $(this).parent("li").addClass('active');//為當前頁碼加入active類
		         var currPage=$(this).attr('rel');     //取出頁碼上的值
		         var startItem=currPage*rowsShown;     //行數的開始=頁碼*每頁顯示的行
		         var endItem=startItem+rowsShown;      //行數的結束=開始+每頁顯示的行
		         $('#box > #tourpage').hide();                 //全部行都隱藏
		         //顯示從開始到結束的行
		         $('#box > #tourpage').slice(startItem,endItem).show();//.css('display','table-row')
		     });
/*----------------------分頁------------------------------------------------------------   */
		 });
/*行程標籤分類葉面-------------------------------------------------------------------------------*/		     
		 $('#tagcloud').on("click", "a", function(){
			 var tag = $(this).attr("id");
			 var len = 0;
// 			 alert(tag);
			 $.ajax({	
			    	method:"POST",
			     	url:"/Travel/tourTags",
			     	dataType: "json", 
			     	data:{"tag":tag}
			        
			     }).done(function(data){	
			    	 len = data.length;
			    	 console.log("len = "+len);
// 			    	 alert(data[0].TourTagsBean[0].tag)
					 var contents =""; 
			    	 $.each(data,function(idx,val){
// 			    		 alert(val.tourName);
			    		 
			    		 contents +="<div id=\"tourpage\" class=\"col-md-6 col-lg-6 mb-4\">"
								+"<a href=\"<c:url value='/tour/Display2/travel.jsp?tourNo="+val.tourNo+"'/>\" class=\"block-5\" style=\"background-image: url('/Travel/tour/Display/images/"+val.TourPictureBean[0].pic +"');\">"						
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
			    	 
/* -----------------------分頁-------------------------------------------------------   */	 			 
					 var rowsShown=6;                             //每頁顯示的行
				     var rowsTotal=len;  
					 console.log("==>"+rowsTotal)//獲取總共的行
				     var numPages=Math.ceil(rowsTotal/rowsShown); //計算出有多少頁
				     var page = "";
//		 		     alert(data.count);
				     //顯示頁碼
				      for(var i=0;i<numPages;i++){
				          var pageNum=i+1;
				          page+='<li><a href="#idd" rel="'+i+'" ><span>'+pageNum+'</span></a></li>'	          
// 				         $('#nav').append( '<li><a href="#idd" rel="'+i+'" ><span>'+pageNum+'</span></a></li>');
				     }                     //'<a href="#" rel="'+i+'">'+pageNum+'</a>&nbsp;'
				     $('#nav').html(page);
				     
				     $('#box > #tourpage').hide(); // 先將全部行隱藏
				     $('#box > #tourpage').slice(0,rowsShown).show();// 再顯示第一頁應該顯示的行數(
				     $('#nav li:first').addClass('active');//為第一個頁碼加一個值為active的class屬性，方便加樣式
				     
				     //頁碼點擊事件
				     $('#nav').on("click", "a", function(){
				         $('#nav li ').removeClass('active');    //移除所有頁碼的active類
				         $(this).parent("li").addClass('active');//為當前頁碼加入active類
				         var currPage=$(this).attr('rel');     //取出頁碼上的值
				         var startItem=currPage*rowsShown;     //行數的開始=頁碼*每頁顯示的行
				         var endItem=startItem+rowsShown;      //行數的結束=開始+每頁顯示的行
				         $('#box > #tourpage').hide();                 //全部行都隱藏
				         //顯示從開始到結束的行
				         $('#box > #tourpage').slice(startItem,endItem).show();//.css('display','table-row')
				     });
/*----------------------分頁------------------------------------------------------------   */
			     });
/*行程標籤分類葉面-------------------------------------------------------------------------------*/	
	     });
	
		    
			
// 		 $.getJSON( "/Travel/tourTags", function( data ) {
// 			 var contents ="";
// 			 var contentss ="";
// // 			 console.log(data);
// 			 $.each(data, function(idx,val){
// // 				 console.log(val);
// 				contents +='<a href="" class="tag-cloud-link">'+val+'</a>'; 
					 
// 			 })
// 			 $("#tagcloud").html(contents);
// 		 });
		 
		}) 

  
   </script>
  
 	<script src="<c:url value='/voyage/js/jquery.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery-migrate-3.0.1.min.js' />"></script>
	<script src="<c:url value='/voyage/js/popper.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.easing.1.3.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.waypoints.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.stellar.min.js' />"></script>
	<script src="<c:url value='/voyage/js/owl.carousel.min.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.magnific-popup.min.js' />"></script>
	<script src="<c:url value='/voyage/js/aos.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.animateNumber.min.js' />"></script>
	<script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script>
	<script src="<c:url value='/voyage/js/jquery.timepicker.min.js' />"></script>
	<script src="<c:url value='/voyage/js/main.js' />"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<jsp:include page="/voyage/foo.jsp"></jsp:include>

</body>
</html>