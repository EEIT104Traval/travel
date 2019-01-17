<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- http://mirlab.org/jang/books/javascript/dynamicSelect.asp?title=7-3%20%B0%CA%BAA%A4U%A9%D4%A6%A1%BF%EF%B3%E6 -->
<!-- http://kevintsengtw.blogspot.com/2012/05/jquery_29.html -->
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
<!--     下拉式選單 -->

<link type="text/css" rel="stylesheet" 
href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
<link type="text/css" rel="stylesheet" 
href="http://gregfranko.com/jquery.selectBoxIt.js/css/jquery.selectBoxIt.css" />
<link type="text/css" rel="stylesheet" 
href="http://gregfranko.com/jquery.selectBoxIt.js/css/jquery.selectBoxIt.css" />
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
						<h1 class="mb-3">各國旅遊資訊 </h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END slider -->
	    <div class="ftco-section-search">
      <div class="container">
        <div class="row">
          <div class="col-md-12 tabulation-search">
            <div class="element-animate">
              <div class="nav nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
<!--              	<a class="nav-link p-3 active" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false" ><span> 01</span> 請搜尋 : </a> -->
               <a class="nav-link p-3 " id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false" style="opacity:0;border-top-left-radius:12px;border-top-right-radius:12px;"><span></span> 請搜尋 : </a>
              </div>
            </div>
              
            <div class="tab-content py-5" id="v-pills-tabContent">
              <div class="tab-pane fade show active" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                <div class="block-17">
                  <form action="" method="post" class="d-block d-lg-flex">
                    <div class="fields d-block d-lg-flex">
<!-- -------------------------------下拉式--------------------------------------------------------------------  -->
					  <div class="select-wrap one-third one-third-1" >
                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                        <select name="" id="SelectCategory" class="form-control" style="border-radius:12px;">
                         
                        </select>
                      </div>

					  <div class="select-wrap one-third one-third-1">
                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                        <select name="" id="SelectSubCategory" class="form-control" style="border-radius:12px;">
                         
                        </select>
                      </div>
                      <div class="select-wrap one-third one-third-1">
                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                        <select name="" id="SelectViewpoint" class="form-control" style="border-radius:12px;">
                         
                        </select>
                      </div>
<!-- -------------------------------下拉式--------------------------------------------------------------------  -->
                      
                    </div>
                    <input type="submit" class="search-submit btn btn-primary"  style="border-radius:12px;" value="Find    !!">  
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
	<!-- Search -->



	<!-- END Search -->

	<section class="ftco-section">
		<div class="container">
		
			
		<h1></h1>
			<div class="row">
				
			
			<p id= "idd"></p>
				<div class="col-lg-8">				
					<div id="box" class="row">

<table class="table table-hover">
  <thead style="background-color:#ff5f5f">
    <tr>
      <th scope="col" style="color:white">#</th>
      <th scope="col" style="color:white">地點</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"></th>
      <td>美國</td>
      <td></td>
      <td></td>
    </tr>   
  </tbody>
   <thead style="background-color:#ff5f5f">
    <tr>
      <th scope="col" style="color:white">#</th>
      <th scope="col" style="color:white">電壓</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
    <tbody>
    <tr style="background-color:#dee2e6">
      <th scope="row"></th>  
      <td>電壓</td>
      <td>周波數</td>
      <td>插座別</td>
    </tr>   
  </tbody>
  <tbody>
    <tr>      <th scope="row"></th>    
      <td>120V</td>
      <td>60</td>
      <td>	<img src="https://www.liontravel.com/Info/socketImg/socket_A.gif">   </td>
    </tr>   
  </tbody>
  <thead style="background-color:#ff5f5f">
    <tr>
      <th scope="col" style="color:white">#</th>
      <th scope="col" style="color:white">匯率</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"></th>
      <td colspan="3">美國幣別：USD美金 即時匯率</td>
  
    </tr>   
  </tbody>
  <thead style="background-color:#ff5f5f">
    <tr>
      <th scope="col" style="color:white">#</th>
      <th scope="col" style="color:white">時差</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
    <tbody>
    <tr>
      <th scope="row"></th>  
      <td colspan="3">時差(美國 ALBANY-紐約州 距台灣)查詢</td>
  
    </tr>   
  </tbody>
<tbody>
    <tr style="background-color:#dee2e6">
      <th scope="row"></th>  
      <td>與台灣時差</td>
      <td colspan="2">與GMT時差(台灣與GMT時差為+8)</td>
    </tr>   
  </tbody>
    <tbody>
    <tr>
      <th scope="row"></th>  
      <td>-12小時</td>
      <td>-4小時</td>
    </tr>   
  </tbody>
  <thead style="background-color:#ff5f5f">
    <tr>
      <th scope="col" style="color:white">#</th>
      <th scope="col" style="color:white">氣象</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
    <tbody>
    <tr>
      <th scope="row"></th>  
      <td colspan="3">ALBANY-紐約州月平均溫度(攝氏)</td>  
    </tr>   
  </tbody>

</table>
<table class="table table-hover">
<thead></thead>
	<tbody>
    <tr style="background-color:#dee2e6">
      <th scope="row"></th>  
      <td>1月</td>
      <td>2月</td>
      <td>3月</td>
      <td>4月</td>
      <td>5月</td>
      <td>6月</td>
      <td>7月</td>
      <td>8月</td>
      <td>9月</td>
      <td>10月</td>
      <td>11月</td>
      <td>12月</td>      
    </tr>   
  </tbody>
  <tbody>
    <tr>
      <th scope="row"></th>  
      <td>-6.3</td>
      <td>-4.7</td>
      <td>1.2</td>
      <td>7.9</td>
      <td>14.1</td>
      <td>19.3</td>
      <td>22.1</td>
      <td>20.8</td>
      <td>16.3</td>
      <td>10.1</td>
      <td>4.3</td>
      <td>-3.1</td>      
    </tr>   
  </tbody>

    <thead style="background-color:#ff5f5f">
    <tr>
      <th scope="col" style="color:white">#</th>
      <th scope="col" style="color:white">國碼</th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  	<tr>
      <th scope="row"></th>  
      <td colspan="13">
     	<p>各國家、地區國碼/國際冠碼表</p><br />
		<p>◎從 ALBANY-紐約州 撥回台灣   該國國際冠碼+台灣國碼(886)+區域號碼(去零)+用戶電話號碼</p>
  	    <p>例如從 ALBANY-紐約州 撥回台北市： 011 + 886 + 2 + 2737-XXXX</p>
  	    <p> 行動電話時，去掉第一個零即可： 011 + 886 + 921-999-XXX</p>
      </td>
            
    </tr>   
  </tbody>
</table>
						 
						        <div id="DropDownList">
<!-- 						            請選擇：<select id="SelectCategory"></select>  -->
<!-- 						            <select id="SelectSubCategory"></select>  -->
<!-- 						            <select id="SelectViewpoint"></select>  -->
						        </div>
						 
						 
						        <div id="map" style="width:800px; height:600px"></div>


					</div>
					
				</div>
				<!-- END -->

			

				</div>
			</div>
	</section>
	
	
	    <script>   		
   		var jsonScenery = [];
        var jsonHotel = [];    


        $(document).ready(function()        		
        {
            Page_Init();    
//             $("select").selectBoxIt({});
            
        });
        
        function Page_Init()
        {
			$.getJSON('data/State.txt',function(data){
				console.log("data = "+data);
                $('#SelectCategory').empty().append($('<option style="background:#ff5f5f"></option>').val('').text('五大洋州'));
 
                $.each(data, function (i, item)
                {
                    $('#SelectCategory').append($('<option style="background:#ff5f5f"></option>').val(item.categoryId).text(item.categoryName));
                });  
			});


            $('#SelectSubCategory').empty().append($('<option style="background:#ff5f5f"></option>').val('').text('搜尋國家'));
            $('#SelectViewpoint').empty().append($('<option style="background:#ff5f5f"></option>').val('').text('搜尋城市'));    
//             $('#LabelViewpoint').text('景點'); //

            $('#SelectCategory').change(function(){
                ChangeCategory();
            });

            $('#SelectSubCategory').change(function(){
                ChangeSubCategory();
            });                


           
        }


        function ChangeCategory()
        {
            //變動第一個下拉選單

            $('#SelectSubCategory').empty().append($('<option style="background:#ff5f5f"></option>').val('').text('---------------------------------------------'));
            $('#SelectViewpoint').empty().append($('<option style="background:#ff5f5f"></option>').val('').text('---------------------------------------------'));            

            var categoryId = $.trim($('#SelectCategory option:selected').val());            
            
            if(categoryId == '1')
            {
             $.getJSON('data/EU_Contry.txt',function(data){            	 
            	 $.each(data, function(i, item){
                     $('#SelectSubCategory').append($('<option style="background:#ff5f5f"></option>').val(item.subCategoryId).text(item.subCategoryName));
                 });
             })   
            }
            else if(categoryId == '2')
            {
            $.getJSON('data/AM_Contry.txt',function(data){            	 
              	 $.each(data, function(i, item){
                       $('#SelectSubCategory').append($('<option style="background:#ff5f5f"></option>').val(item.subCategoryId).text(item.subCategoryName));
                   });
               })            
            }
            
            
            if(categoryId.length != 0)
            {
                $.each(jsonData , function(i, item){
                    $('#SelectSubCategory').append($('<option style="background:#ff5f5f"></option>').val(item.subCategoryId).text(item.subCategoryName));
                });


//                 if(categoryId == '1') //
//                 {
//                     $('#LabelViewpoint').text("景點");
//                 }
//                 else
//                 {
//                     $('#LabelViewpoint').text("旅館");
//                 }                    
            }
        }

        function ChangeSubCategory()
        {
            //變動第二個下拉選單

            $('#SelectViewpoint').empty().append($('<option style="background:#ff5f5f"></option>').val('').text('---------------------------------------------'));

            var categoryId = $.trim($('#SelectCategory option:selected').val());
            var categoryName = $.trim($('#SelectCategory option:selected').text());
            var subCategoryName = $.trim($('#SelectSubCategory option:selected').text());
            
            if(categoryId == '1')
            {
               if(subCategoryName == '法國') {
            	   $.getJSON('data/FR.txt',function(data){            	 
                    	 $.each(data, function(i, item){
                             $('#SelectViewpoint').append($('<option style="background:#ff5f5f"></option>').val(item.subCategoryId).text(item.subCategoryName));
                         });
                     })         
               } 
            }
            else if(categoryId == '2')
            {
            	if(subCategoryName == '美國') {
             	   $.getJSON('data/USA.txt',function(data){            	 
                     	 $.each(data, function(i, item){
                              $('#SelectViewpoint').append($('<option style="background:#ff5f5f"></option>').val(item.subCategoryId).text(item.subCategoryName));
                          });
                      })         
                }
            }
        };
    
		 
        
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
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<script src="http://gregfranko.com/jquery.selectBoxIt.js/js/jquery.selectBoxIt.min.js"></script>
	<jsp:include page="/voyage/foo.jsp"></jsp:include>

</body>
</html>