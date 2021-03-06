<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Time To Travel - 團體旅遊</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="<c:url value='/voyage/favicon.ico' />">
	
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
    <link rel="stylesheet" href="<c:url value='/voyage/css/main_styles_sherry.css' />">
	<link rel="stylesheet" href="<c:url value='/voyage/css/about.css' />">
    
    
 <style>
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+TC&subset=chinese-traditional');

 body {
        font-family: 'Noto Sans TC', sans-serif;
      }
</style>
    
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
			<div class="container"></div>
		</div>

		</div>
	</section>
	<!-- END slider -->


	<div class="home_search" style="margin-top: -150px">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title" style="font-family: Noto Sans TC">出團拉~~</div>
						<div class="home_search_content">
							<form action="<c:url value="/searchTour" />"
								class="home_search_form" id="home_search_form" method="post">
								<div 
									class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
									<input name="tours" type="text" class="search_input" style="font-family: Noto Sans TC; width: 25%"
										placeholder="想去哪裡玩?" id="tourS">
									<input name="checkin_date" type="text" class="search_input" style="font-family: Noto Sans TC; width: 25%"
										id="checkin_date" >
									<input name="checkout_date" type="text" class="search_input" style="font-family: Noto Sans TC; width: 25%"
										id="checkout_date" >
									
									<input id="search" type="submit" class="home_search_button" style="font-family: Noto Sans TC" value="搜尋" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="bg-light">
	
	</section>
	<section class="ftco-section" style="margin-top:100px">
	<p id= "idd"></p>
		<div class="container">
		
<!-- 		 <div id="hot" class="row justify-content-center mb-5" style="width:70%;background-color:#ff5f5f;"> -->
		 	<div class="col-md-7 text-center heading-section ftco-animate fadeInUp ftco-animated" style="width:115.5%;font-family: Noto Sans TC; ">
		 		
		 		<div style="border:3px solid #ff5f5f;width: 113%;    border-radius: 12px;">
		 		<span  style="padding-left:;"><img style="padding-left:;width:8%;height:8%"src="<c:url value='/tour/HOT.gif' />" /></span>
		 		<span id="hotT"style="  font-size: 30px;color:red;font-family:DFKai-sb">熱搜行程 </span>		 		
		 		</div>
		 		
		 		
		 	</div>
<!-- 		 </div> -->
		
			<div class="row" style="margin-top:4%">
			
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
<!-- 					<div class="sidebar-box ftco-animate"> -->
<!-- 						<div class="search-tours bg-light p-4"> -->
<!-- 							<h3>Find your tour</h3> -->
<!-- 							<form action="" method="post"> -->
<!-- 								<div class="fields"> -->
<!-- 									<div class="row flex-column"> -->

<!-- 										<div class="textfield-search col-sm-12 group mb-3"> -->
<!-- 											<input type="text" class="form-control" -->
<!-- 												placeholder="Search Location"> -->
<!-- 										</div> -->

<!-- 										<div class="check-in col-sm-12 group mb-3"> -->
<!-- 											<input type="text" id="checkin_date" class="form-control" -->
<!-- 												placeholder="Check-in date"> -->
<!-- 										</div> -->

<!-- 										<div class="check-out col-sm-12 group mb-3"> -->
<!-- 											<input type="text" id="checkout_date" class="form-control" -->
<!-- 												placeholder="Check-out date"> -->
<!-- 										</div> -->
<!-- 										<div class="select-wrap col-sm-12 group mb-3"> -->
<!-- <!-- 											<div class="icon"> --> 
<!-- <!-- 												<span class="ion-ios-arrow-down"></span> --> 
<!-- <!-- 											</div> --> 
<!-- 										</div> -->
<!-- 										<div class="col-sm-12 group mb-3"> -->
<!-- 											<input type="submit" class="search-submit btn btn-primary" -->
<!-- 												value="Find Tours"> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</form> -->
<!-- 						</div> -->
<!-- 					</div> -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script>
	function buy(){
		if('${accountName}'){
		window.location.href="/Travel/tour/Display2/order3.jsp"
		}else{
			swal({
				  title: "請先登入會員查看明細",
				  icon: "warning",
				})
		}
	}	
	</script>

					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h3 style="font-weight:bold;">旅遊資訊</h3>
							<li><a onclick="buy()" style="color:red" href="##">查看訂單明細</a></li>
							<li><a style="color:red" href="<c:url value='/tour/toursDetail.jsp'/>">各國旅遊資訊</a></li>
							<li><a style="color:red"href="#">熱門飯店資訊 </a></li>
							<li><a style="color:red"href="#">熱搜門票資訊</a></li>
							<li><a style="color:red"href="#">機票價格資訊 </a></li>							
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3 style="font-weight:bold;">主題控</h3>
						<div id="tagcloud" class="tagcloud">
						
							<a href="#" class="tag-cloud-link">Life</a> 

						</div>
					</div>

					<div  class="sidebar-box ftco-animate">
						<h3>Time To Travel</h3>
						<p>每次出國玩點一點各大旅遊網站是否覺得“琳瑯滿目”，一頁至少200個按鈕到底要按哪一個！我們的初衷是簡化用戶界面，讓用戶更快速的找到自己想要的功能，從眼花繚亂到一目了然！
本網站針對國內旅客提供行程、飯店、機票、門票、景點及匯率查詢和訂購服務，並可利用第三方驗證快速登錄。針對選擇困難癥侯群，我們提供主題旅遊資訊。
後台部分提供給管理者以圖表方式、更簡潔的界面方便管理產品及會員信息，以免胖手指的情況產生 。</p>
<%-- 						<img  src="<c:url value='/tour/Display2/images/1_0.jpg' />" /> --%>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	    <script>
	  
   	// 閃爍	
// 	   	  var colorFlag = 0;
// 	   	  function changeColor(){ 
// 	   	         if (!colorFlag)
// 	   	         {
// 	   	        	 $("#hotT").css("color","#ff5f5f");
// 	   	        	 colorFlag = 1;
// 	   	         }else{
// 	   	        	 $("#hotT").css("color","white");
// 	   	        	 colorFlag = 0;
// 	   	         }
// 	   	     }
// 	   	  setInterval('changeColor()',150);
   	$(document).ready(function() {  
   		
//    		$('#hotT').animate({"padding-left":"500px"},1500,rowBack);
// 		function rowBack(){		
// 			if($('#hotT').css("padding-left")=="500px")	{	
// 				$('#hotT').css("padding-left","-500px");
// // 				$('#move').css("opacity","1");
// 			}
// 			else if($('#hotT').css("padding-left")=="-500px")	{		
// 				$('#hotT').css("padding-left","500px");
// // 				$('#move').css("opacity","0");
// 			}
// 			$('#hotT').animate({"padding-left":"500px"},1500,rowBack);	
// 			}
		
   		var dt = new Date();
   		$('#checkin_date').val(dt.getFullYear()+"/"+dt.getMonth()+1+"/"+dt.getDate());
   		$('#checkout_date').val(dt.getFullYear()+"/"+dt.getMonth()+1+"/"+dt.getDate());
   		$('#search').click(function(){
   			if($('#tourS').val()==""){
   				alert("想去哪裡玩??");
   			    return false;
   			    }
   			else
   				return true;
   		});
   			
   		$('#tagcloud').on("mouseover","a",function(){
   			$(this).css('color','#ff5f5f').css('background-color','white');
   		})
   		$('#tagcloud').on("mouseout","a",function(){
   			$(this).css('color','white').css('background-color','#ff5f5f');
   		})
//    		mouseover(over).mouseout(out);	
		
// 		function over(evt){
// 			 $(this).css('color','purple').css('background','yellow');
// 		 }
// 		 function out(evt){
// 			 $(this).css('color','orange').css('background','white');
// 		 }
		 
		 $.getJSON( "/Travel/groupTourClick", function( data ) {
			 var contents ="";
			
			 var lens = data.length;
// 			 console.log(data);
// 			 console.log(data.result);
//              console.log(data.result[0].TourTagsBean);
// 			 console.log(data.result[0].TourTagsBean[0].tag);
			 $.each(data, function(idx,val){
// 				 console.log("X=>"+val.tourBatchBean[0].price_adult);
				 //所有行程
				contents +="<div id=\"tourpage\" class=\"col-md-6 col-lg-6 mb-4\">"
					+"<a href=\"<c:url value='/tour/Display2/travel.jsp?tourNo="+val.tourNo+"'/>\" class=\"block-5\" style=\"background-image: url('/Travel/tour/Display2/images/"+val.TourPictureBean[0].pic +"');\">"						
					+	"<div class=\"text\">"  
					+		"<span class=\"price\" style=\" font-family:fantasy;font-size:2.5em ; font-style:italic;color:red ; font-weight:bloder\"><b><u>$"+val.tourBatchBean[0].price_adult+"</u></b></span>"
					+		"<h3 class=\"heading\">"+val.tourName+"</h3>"
					+		"<div class=\"post-meta\">"
					+			"<span>"+val.content+"</span>"
					+		"</div>"
					+		"<p  class=\"star-rate\">"                           //<span class=\"icon-star-half-full\"></span>
					+			"<span style=\"color:#ffc107\" class=\"icon-star\"></span><span style=\"color:#ffc107\" class=\"icon-star\"></span><span style=\"color:#ffc107\" class=\"icon-star\"></span><span style=\"color:#ffc107\" class=\"icon-star\"></span><span  style=\"color:#ffc107\"class=\"icon-star\"></span> <span  style=\"color:#ffc107\">999+ reviews</span>"							
					+		"</p>"
					+	"</div>"
					+"</a>"
				+"</div>"
				//形成標籤
// 				tagcontents +=' <a href="#idd" id="'+data.TourTagsBean[0].tag
// 				            +'" class="tag-cloud-link">'+data.TourTagsBean[0].tag
// 				            +'</button>';
					 
			 })
			 $("#box").html(contents);
	
			 
/* -----------------------分頁-------------------------------------------------------   */	 			 
			 var rowsShown=6;                             //每頁顯示的行
		     var rowsTotal=lens;         //獲取總共的行
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

/*--抓TAGS------------------------------------*/
		 });
		     
		 $.getJSON( "/Travel/allTourTags", function( data ) {
			 var tagcontents ="";
			 console.log("tags=>"+data);
			 $.each(data, function(idx,val){
	 				tagcontents +='<a href="#idd" style="border: 1px solid #ff5f5f; background-color:#ff5f5f;color:white;" id="'+val
		            +'" class="tag-cloud-link  ">'+val
		            +'</button>';
			 })
			 $("#tagcloud").html(tagcontents);			 
			 
		 });
/*--TAGS------------------------------------*/
		     
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
								+"<a href=\"<c:url value='/tour/Display2/travel.jsp?tourNo="+val.tourNo+"'/>\" class=\"block-5\" style=\"background-image: url('/Travel/tour/Display2/images/"+val.TourPictureBean[0].pic +"');\">"						
								+	"<div class=\"text\">"  
								+		"<span class=\"price\" style= \" font-family:fantasy;font-size:2.5em ; font-style:italic; color:red ; font-weight:bold\"><b><u>$"+val.tourBatchBean[0].price_adult+"</u></b></span>"
// 								+"<span class=\"price-uni\">$</span>"
								+		"<h3 class=\"heading\">"+val.tourName+"</h3>"
								+		"<div class=\"post-meta\">"
								+			"<span>"+val.content+"</span>"
								+		"</div>"
								+		"<p class=\"star-rate\">"
								+			"<span style=\"color:#ffc107\" class=\"icon-star\"></span><span style=\"color:#ffc107\" class=\"icon-star\"></span><span style=\"color:#ffc107\" class=\"icon-star\"></span><span style=\"color:#ffc107\" class=\"icon-star\"></span><span  style=\"color:#ffc107\"class=\"icon-star\"></span> <span  style=\"color:#ffc107\">999+ reviews</span>"					
								+		"</p>"
								+	"</div>"
								+"</a>"
							+"</div>"			    		 
			    	 })
			    	 $("#box").html(contents);
			    	 
/* -----------------------分頁-------------------------------------------------------   */	 			 
					 var rowsShown=6;                             //每頁顯示的行
				     var rowsTotal=len;  
// 					 console.log("==>"+rowsTotal)//獲取總共的行
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
				         $('#nav li ').removeClass('active');    //移除所有頁碼的active類別
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
			 
/*--搜尋形成----------------------------------*/			 
// 		 $('#search').click(function(){
// 			 var tours = $("#tourS").val();
// 			 var checkin_date = $('#checkin_date').val();
// 			 var checkout_date = $('#checkout_date').val();
// 			 alert("tours="+tours+"checkin_date="+checkin_date+"checkout_date="+checkout_date);
		 		
// 			 $.ajax({	
// 		    	method:"POST",
// 		     	url:"/Travel/searchTour",
// 		     	dataType: "json", 
// 		     	data:{"tours":tours,
// 		     		  "checkin_date":checkin_date,
// 		     		  "checkout_date":checkout_date		     		
// 		     	     }
		        
// 		     }).done(function(data){
// 		    	 console.log(data)
// 		     })
			 
			 
// 		 }) 
		
/*--搜尋形成----------------------------------*/


	     
	
		    
			
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