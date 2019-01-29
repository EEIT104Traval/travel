<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Language" content="zh-TW"/>
<meta name="google-site-verification" content="galaxy" />
<title>機票</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="keywords" content="">
<meta name="description" content=""/>
<!-- <meta property="og:site_name" content="" /> -->
<!-- <meta property="og:description" content="" /> -->
<meta name="copyright" content="" />
<link rel="icon" href="<c:url value='/voyage/favicon.ico' />">
<link rel="stylesheet" type="text/css"  href="<c:url value='/flight/xianqi/css/bootstrap.min.css?sv=1'/>"/>

<link rel="stylesheet" type="text/css" href="<c:url value='/flight/xianqi/css/style.css?sv=1'/>"/>
<link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/filterizr/1.3.4/jquery.filterizr.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/voyage/styles/main_styles.css'/>">
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/skyscanner.css'/>" />
<!-- 	<link rel="stylesheet" type="text/css" -->
<%-- 	href="<c:url value='/flight/xianqi/css/skyscanner1.css'/>" /> --%>

<link rel="stylesheet"
	href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/owl.carousel.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/owl.theme.default.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/magnific-popup.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/ionicons.min.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/bootstrap-datepicker.css' />">
<link rel="stylesheet"
	href="<c:url value='/voyage/css/jquery.timepicker.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />">
<link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />">
<link href="<c:url value='/voyage/css/jquery-ui.css' />"
	rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet"
	href="<c:url value='/flight/彈窗/custom-popup/custom.popup-v1.3.1.css'/>">
<link rel="stylesheet"
 href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
 integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
 crossorigin="anonymous">	
 <title>Time To Travel - 飯店搜尋</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+TC&subset=chinese-traditional');

 body {
        font-family: 'Noto Sans TC', sans-serif;
      }
.filtertime{
	display: table;
    background: #fff;
    float: left;
    text-align: center;
    width: 25%;
    font-size: 14px;
    line-height: 1;
    cursor: pointer;"

}
.filtertime :hover{
    background:#ABCDF7;
}
.c-filter-table__label{
	border: 1px solid #ccdef0;
   	border-right-color: #fff;
 	position: relative;
	padding-top: 5px;
	padding-bottom: 5px;
}

.card_line{width: 12px;
   		   height: 100%;
   		   display: table-cell;}
#gotop {
    position:fixed;
    z-index:90;
    right:30px;
    bottom:31px;
    display:none;
    width:50px;
    height:50px;
    color:#fff;
    background:#33b5e5;
    line-height:50px;
    border-radius:50%;
    transition:all 0.5s;
    text-align: center;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16), 0 2px 10px 0 rgba(0,0,0,0.12);
}
#gotop :hover{
    background:#0099CC;
}

</style>
<script type="text/javascript">
$(function() {
    /* 按下GoTop按鈕時的事件 */
    $('#gotop').click(function(){
        $('html,body').animate({ scrollTop: 0 }, 'slow');   /* 返回到最頂上 */
        return false;
    });
     
    /* 偵測卷軸滑動時，往下滑超過400px就讓GoTop按鈕出現 */
    $(window).scroll(function() {
        if ( $(this).scrollTop() > 400){
            $('#gotop').fadeIn();
        } else {
            $('#gotop').fadeOut();
        }
    });
});

</script>




<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
<a href="https://www.blogger.com/blogger.g?blogID=2031514508322140995#" id="gotop">
   <i class="fa fa-angle-up" style="width:40px"></i>
</a>
	<script type="text/javascript">
	
	
	
	
	
var result = ${result}
var test = ${test}

// $(function(){
	
// 	$('#gofirst').filterizr();
	
// })


// console.log(result)

// var resultFilter = result.filter(function(item){
// 	return item.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Company == "中華航空";
// })


// console.log(test)
// console.log(result.OTA_AirLowFareSearchRS)
// console.log(result.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime)
// console.log(result.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary+"測試亂碼專用")
// console.log('${flightCompany.CX}')
week = new Array("日","一","二","三","四","五","六");
serialNum = 0;

$(document).ready(function() {
	 $('#cd-checkbox-s1').prop("checked",true)
	$('#cd-checkbox-s2').click(function(){
		console.log($('#gofirst > div').val());
	    if($('#cd-checkbox-s2').prop("checked")){
	    $('#cd-checkbox-s1').prop("checked",false)
	     $('#gofirst > div').fadeOut("slow");
	     $('#gofirst > div[class="CICI"]').fadeIn("slow");
	    }else{
	    	$('#gofirst > div').fadeIn("slow");
	    	$('#cd-checkbox-s2').prop("checked")
	    	$('#cd-checkbox-s1').prop("checked",true)
	    	}
	   });
	
	 $('#cd-checkbox-s1').click(function(){
		 
		 if($('#cd-checkbox-s1').prop("checked")){
		 
			 $('#cd-checkbox-s2').prop("checked",false)
			 $('#gofirst > div').fadeIn("slow");
			 
		 }
	 })
	
$.each(result.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary, function(index, value) {
	//去程迴圈
	serialNum = serialNum+1;
// 	console.log(value.SequenceNumber)
	var DepartureDateTime = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime
	var Ddate = DepartureDateTime.substr(0,10);
	var DsetTime = new Date(Ddate);
	var Ddateweek = week[DsetTime.getDay()];
	var Dtime = DepartureDateTime.substring(11,16);
	var ArrivalDateTime = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime
	var Adate = ArrivalDateTime.substr(0,10);
	var AsetTime = new Date(Adate);
	var Adateweek = week[AsetTime.getDay()];
	var Atime = ArrivalDateTime.substring(11,16);
	var totalgotime = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].ElapsedTime;
	var totalbacktime = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].ElapsedTime;
	
	var gotimehour = Math.floor(totalgotime/60);
	var gotimemin = totalgotime%60;
	var backtimehour = Math.floor(totalbacktime/60);
	var backtimemin = totalbacktime%60;
	
	
// 	if(serialNum==1){
// 		$('#gofirst').append(
// 				'<div class="romde_box act">')
// 	}else{
// 		$('#gofirst').append(
// 		'<div class="romde_box">')
// 	}
	var code = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Code;
	var code2 = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Code
	$('#gofirst').append(
			'<div class="'+code+code2+'">'
			+'<div class="romde_box">'
			+'<form action="<c:url value='/FlightInfoSecound' />" method="post">'
	         +'<div class="border" style=" border-style: outset;border-color: ghostwhite;" id="redborder'+value.SequenceNumber+'">' 
// 	              <!--第1段-->
	              +'<div class="num-tag">'+serialNum+'</div>'
					+'<div class="flybox row" >'
				  	  +"<div class='col-xs-10 text-center fly-leftbox'>"
                        +"<div class='col-xs-3 fl-namebox text-center'>"
                        	+"<input type='text' class='fl-name' style='border:none;text-align: center;width:100px' readonly='value' name='goCompany' value="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Company+">"
//               			  +"<div class='fl-name' name='goCompany'>"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Company+"</div>"
                          +"<input  class='fl-num' name='goCode'  style='border:none;text-align: center;width:100px' readonly='value' data-category='"+code+"' value="+code+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.FlightNumber+">"
//                           +"<div class='fl-num'>"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Code+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.FlightNumber+"</div>"
            +"</div>"
            + "<div class='col-xs-3 fl-timebox text-right'>"
            +"<input name='goDay' class='fl-time' style='border:none;text-align: center;width:82px' readonly='value' value="+Ddate+'('+Ddateweek+')'+">"
//             +'<div class="fl-time">'+Ddate+"("+Ddateweek+")"+'</div>'
            +"<input class='fl-place' name='goDePlace' style='border:none;text-align: center;width:82px' readonly='value' value="+Dtime+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode+">"
//             +'<div class="fl-place">'+Dtime+'<span>'+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode+'</span></div>'
          +'</div>'
         +'<div class=" col-xs-3 fl-durationbox text-center">'
         +"<input class='fl-dutime' name='homi' style='border:none;text-align: center;width:82px' readonly='value' value="+gotimehour+"小時"+gotimemin+"分>"
//          +'<div class="fl-dutime"> <span>'+gotimehour+'</span>小時<span>'+gotimemin+'</span>分 </div>'
         +'<div class="t-line" ></div>'
         +'<div class="fl-flyname" style="color:green" id="fl-flyname'+value.SequenceNumber+'">直飛</div>'
         +' </div>'
         +'<div class="col-xs-3 fl-timebox text-left">'
         +"<input class='fl-time' style='border:none;text-align: center;width:82px;margin-left:0px;' readonly='value' name='goDay2' id="+'fl-time'+value.SequenceNumber+" value="+Adate+'('+Adateweek+')'+">"
//          +'<div class="fl-time" id="fl-time'+value.SequenceNumber+'">'+Adate+'('+Adateweek+')</div>'
         +"<input class='fl-place' style='border:none;text-align: center;width:82px' readonly='value' name='goArPlace' id="+'fl-place'+value.SequenceNumber+" value="+Atime+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalAirport.LocationCode+">"
//          +'<div class="fl-place" id="fl-place'+value.SequenceNumber+'">'+Atime+'<span>'+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalAirport.LocationCode+'</span></div>'
         +' </div>'
         +' </div>'
         +' <div class="col-xs-2 fly-info">'
         +' <div class="fltool">'
         +"<input class='icon_fl1' name='goAirEquipType' style='border:none;text-align: center;width=68px' value="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].Equipment[0].AirEquipType+">"
//          +' <li class="icon_fl1" name="goAirEquipType">'+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].Equipment[0].AirEquipType+'</li>'
         +' <li class="icon_fl2">'+'經濟艙 V'+'</li>'
         +' <li class="icon_fl3">'+'30kg/人'+'</li>'
//          +'</div>'
         +'</div>'
         +'</div>'
	)
		var s = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment
// 	console.log(s.length)
	if (s.length==2){
		var ArrivalDateTime = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].ArrivalDateTime
		var Adate = ArrivalDateTime.substr(0,10);
		var AsetTime = new Date(Adate);
		var Adateweek = week[AsetTime.getDay()];
		var Atime = ArrivalDateTime.substring(11,16);
	$('#fl-flyname'+value.SequenceNumber).html(
			'<div class="fl-flyname" id="fl-flyname'+value.SequenceNumber+'">轉機一次1</div>'
			)
		$('#fl-time'+value.SequenceNumber).html(
				'<div class="fl-time" id="fl-time'+value.SequenceNumber+'">'+Adate+"("+Adateweek+")"+'</div>'
				)
		$('#fl-place'+value.SequenceNumber).html(
		        '<div class="fl-place" id="fl-place'+value.SequenceNumber+'">'+Atime+'<span>'+'BoK'+'</span></div>'
		
		)
		
	}else if(s.length==3){
		$('#fl-flyname'+value.SequenceNumber).html(
		'<div class="fl-flyname" id="fl-flyname'+value.SequenceNumber+'">轉機兩次</div>'
	)}
	
	
	//回程迴圈
	var DepartureDateTime2 = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureDateTime
	var ArrivalDateTime2 = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalDateTime
	var Ddate2 = DepartureDateTime2.substr(0,10)
	var DsetTime2 = new Date(Ddate2);
	var Ddateweek2 = week[DsetTime2.getDay()]
	var Dtime2 = DepartureDateTime2.substring(11,16);
	var Adate2 = ArrivalDateTime2.substr(0,10)
	var AsetTime2 = new Date(Adate2);
	var Adateweek2 = week[AsetTime2.getDay()]
	var Atime2 = ArrivalDateTime2.substring(11,16);
	
	$('#redborder'+value.SequenceNumber).append(
			'<div class="flybox row border-top">'
			+" <div class='col-xs-10 text-center fly-leftbox'>"
		    +" <div class='col-xs-3 fl-namebox text-center'>"
// 		    +'<img alt="" width="16px" style="vertical-align:middle" src="<c:url value='/resource/flight/airlines_logo 56_50/0B.gif'/>"'
			+"<input type='text' class='fl-name' style='border:none;text-align: center;width:100px ' readonly='value' name='backCompany' value="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Company+">"
// 		      +'<div class="fl-name">'+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Company+'</div>'
		      +"<input  class='fl-num' name='backCode'  style='border:none;text-align: center;width:100px' readonly='value' value="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Code+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.FlightNumber+">"
// 		      +" <div class='fl-num'>"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Code+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.FlightNumber+"</div>"
		    +"</div>"
		    + "<div class='col-xs-3 fl-timebox text-right'>"
		    +"<input name='backDay' class='fl-time' style='border:none;text-align: center;width:82px' readonly='value' value="+Ddate2+'('+Ddateweek2+')'+">"
// 		    +'<div class="fl-time">'+Ddate2+"("+Ddateweek2+")"+'</div>'
			+"<input class='fl-place' name='backDePlace' style='border:none;text-align: center;width:82px' readonly='value' value="+Dtime2+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureAirport.LocationCode+">"
// 		    +'<div class="fl-place">'+Dtime2+'<span>'+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureAirport.LocationCode+'</span></div>'
		  +'</div>'
		 +'<div class=" col-xs-3 fl-durationbox text-center">'
		 +"<input class='fl-dutime' name='homi2' style='border:none;text-align: center;width:82px' readonly='value' value="+backtimehour+"小時"+backtimemin+"分>"
// 		 +'<div class="fl-dutime"> <span>'+backtimehour+'</span>小時<span>'+backtimemin+'</span>分 </div>'
		 +'<div class="t-line" ></div>'
		 +'<div class="fl-flyname" style="color:green" id="fl-flyname1'+value.SequenceNumber+'">直飛</div>'
		 +' </div>'
		 +'<div class=" col-xs-3 fl-timebox text-left">'
		 +"<input class='fl-time' style='border:none;text-align: center;width:82px;margin-left:0px;' readonly='value' name='backDay2' id="+'fl-timeoo'+value.SequenceNumber+" value="+Adate2+'('+Adateweek2+')'+">"
// 		 +'<div class="fl-time" id="fl-timeoo'+value.SequenceNumber+'">'+Adate2+"("+Adateweek2+")"+'</div>'
		 +"<input class='fl-place' name='backArPlace' style='border:none;text-align: center;width:82px' readonly='value' id="+'fl-placeoo'+value.SequenceNumber+" value="+Atime2+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalAirport.LocationCode+">"
// 		 +'<div class="fl-place" id="fl-placeoo'+value.SequenceNumber+'">'+Atime2+'<span>'+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalAirport.LocationCode+'</span></div>'
		 +' </div>'
		 +' </div>'
		 +' <div class="col-xs-2 fly-info">'
		 +' <div class="fltool">'
		 +"<input class='icon_fl1' name='backAirEquipType' style='border:none;text-align: center;width=68px' value="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].Equipment[0].AirEquipType+">"
// 		 +' <li class="icon_fl1">'+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].Equipment[0].AirEquipType+'</li>'
		 +' <li class="icon_fl2">'+'經濟艙 V'+'</li>'
		 +' <li class="icon_fl3">'+'30kg/人'+'</li>'
		 +'</div>'
		 +'</div>'
		 +'</div>'
		 +'</div>'
		 +'</div>'
		 
	
	)
		var back2 = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment
		if (back2.length==2){
			var ArrivalDateTime2 = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].ArrivalDateTime
			var Adate2 = ArrivalDateTime2.substr(0,10);
			var AsetTime2 = new Date(Adate2);
			var Adateweek2 = week[AsetTime2.getDay()];
			
			var Atime2 = ArrivalDateTime2.substring(11,16);
			$('#fl-flynameoo'+value.SequenceNumber).html(
					'<div class="fl-flyname" id="fl-flynameoo'+value.SequenceNumber+'">轉機一次</div>')
			
			$('#fl-timeoo'+value.SequenceNumber).html(
				'<div class="fl-time" id="fl-timeoo'+value.SequenceNumber+'">'+Adate2+"("+Adateweek2+")"+'</div>')
			$('#fl-placeoo'+value.SequenceNumber).html(
		        '<div class="fl-place" id="fl-placeoo'+value.SequenceNumber+'">'+Atime2+'<span>'+'FucK'+'</span></div>')
		
		}else if(s.length==3){
			
				$('#fl-flyname1'+value.SequenceNumber).html(
				'<div class="fl-flyname" id="fl-flyname1'+value.SequenceNumber+'">轉機兩次</div>'
			)}
	
	$('#redborder'+value.SequenceNumber).append(
	 '<div class="row">'
     +'<div class="tickbox ">'
     +'<div class="col-xs-6  btn-tickbox">'
     +'<div class="btn-tick-pr btn" data-toggle="modal" data-target="#pop_fdetail"style="border-radius: 20px;line-height: 2;background-color:#ABCDF7"> 票價規則 </div>'
     +'<div class="btn-tick-ba btn" data-toggle="modal" data-target="#pop_fdetail"style="border-radius: 20px;line-height: 2;background-color:#ABCDF7"> 行李說明 </div>'
     +'</div>'
     +'<div class="col-xs-6 fpric text-right"> <span class="list_pricet">'
//      +'<div class="price">NT$<span class="fontb">'+value.AirItineraryPricingInfo[0].ItinTotalFare.TotalFare.Amount+'</span></div>'
	 +"<input name='taxAmount' style='display:none;' value="+value.AirItineraryPricingInfo[0].ItinTotalFare.Taxes.Tax[0].Amount+">"
	 +"<input name='ticketAmount' style='display:none;' value="+value.AirItineraryPricingInfo[0].ItinTotalFare.BaseFare.Amount+">"
	 +"<input name='peopleCount' style='display:none;' value="+value.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerTypeQuantity.Quantity+">"

     +"<input class='price' name='totalAmount' readonly='value' style='background-color: transparent;;border:none;font-weight: 600;font-size: 1.8rem;text-align: right;width=68px;' value="+'NT$'+value.AirItineraryPricingInfo[0].ItinTotalFare.TotalFare.Amount+">"
     +'<div class="price_de">每成人含稅</div>'
     +'</span> <span class="check">'
     +'<button type="submit" class="btn btn_check" style="background-color: #c00017;border-radius: 20%;" >訂 位</button>'
     +'</span> </div>'
     +'</div>'
     +'</div>'
	)
			
	$('#gofirst').append(
		'</div>'
		+'</div>'
		+'</div>'
		+'</form>'
	
	)
	})
})

//  function  doSubmitForm(){
// 	var form = $('form1');
// 	var da = $('#checkin_date').val();
// 	console.log(da)
// 	console.log(124)
// 	var da1 = new Date(da)
// 	var to= today.setDate(da1.getDate()-2);
// 	var today1 = new Date(to);
// 	var month1 = today1.getMonth()+1
// 	var todayvalue = today1.getFullYear()+'/'+month1+'/'+today1.getDate()
// 	console.log(todayvalue)
// 	$('#checkin_date').val(todayvalue);
// 	form.submit();
// }
// function minDay(e){
// 	var da = $('#' + e).val();
// 	var da1 = new Date(da)
// 	var to= today.setDate(da1.getDate()-1);
// 	var today1 = new Date(to);
// 	var month1 = today1.getMonth()+1
// 	var todayvalue = today1.getFullYear()+'/'+month1+'/'+today1.getDate()
// 	alert(da)
// 	$('#' + e).val(todayvalue);
// }



function minDay(e){
	var form = $('form1');
	var da = $('#'+e).val();
	var da1 = new Date(da)
	var to= da1.setDate(da1.getDate()-1);
	var today1 = new Date(to);
	var month1 = today1.getMonth()+1
	var todayvalue = today1.getFullYear()+'/'+month1+'/'+today1.getDate()
// 	alert(todayvalue)
	$('#'+e).val(todayvalue);
	form.submit();
}
// function minDay(){
// 	var da = $('#checkin_date').val();
// 	var da1 = new Date(da)
// 	var to= da1.setDate(da1.getDate()-1);
// 	var today1 = new Date(to);
// 	var month1 = today1.getMonth()+1
// 	var todayvalue = today1.getFullYear()+'/'+month1+'/'+today1.getDate()
// // 	alert(todayvalue)
// 	$('#checkin_date').val(todayvalue);
// }


function addDay(e){
	var form = $('form1');
	var da = $('#'+e).val();
	var da1 = new Date(da)
	var to= da1.setDate(da1.getDate()+1);
	var today1 = new Date(to);
	var month1 = today1.getMonth()+1
	var todayvalue = today1.getFullYear()+'/'+month1+'/'+today1.getDate()
// 	alert(todayvalue)
	$('#'+e).val(todayvalue);
	form.submit();
}
 </script>
 	 <!--重新search--> 
 	 <form action="<c:url value="/FlightInfoNew" />" method="POST" id="form1">
 	 <div class="search-head" style="height: 250px;;background-image: url('<c:url value='/voyage/images/whitebluesky1.jpg'/>')">
 			 <div class="container" style="background-color: transparent;padding-top: 50px;">
<!-- class="home_search_contentsecound" -->
				<div class="d-flex flex-lg-row flex-column align-items-start justify-content-lg-between justify-content-start">
					<div  style="width: 250px">
						<span class="form-label" style="display:block;">出發地</span> <input id="demo2" name="takeOffPlace" type="text" class="search_input_1secound" style="width: 250px" placeholder="請輸入機場/城市中英文或代碼" value="${indexValue.takeOffPlace}">
						<!-- 											required="required" -->
					</div>
					<div style="width: 30px;">
					<img alt="" src="/Travel/voyage/images/changeTwoPlace.png" width="25px" style="padding-top: 42px;float: left;">
					</div>
					<div  style="width: 250px;">
						<span class="form-label"style="display:block;">目的地</span> <input id="demo1" name="landingPlace" type="text" class="search_input_1secound" style="width: 250px" placeholder="請輸入機場/城市中英文或代碼" value="${indexValue.landingPlace}"> 
					</div>
					<div style="display: inline-block; padding-right: 30px;float: left">
					<span class="form-label"style="display:block;padding-left: 40px;">出發日期</span>
							<input type="image" style="width:30px;" onClick="minDay('checkin_date')" src=" <c:url value='/flight/xianqi/img/前一天.png'/>">
							<input type="text"  class="search_input_1secound" id="checkin_date" placeholder="yyyy/MM/dd" name="takeoff_date" value="${indexValue.takeoff_date}">
							<input type="image" style="width:30px;" onClick="addDay('checkin_date')" src=" <c:url value='/flight/xianqi/img/下一天.png'/>">
					</div>
				<div style="display: inline-block; padding-right: 30px;">
					<span class="form-label" style="display:block;padding-left: 40px;">回程日期</span>
					<input type="image" style="width:30px;" onClick="minDay('checkout_date')" src=" <c:url value='/flight/xianqi/img/前一天.png'/>">
					 <input type="text"  class="search_input_1secound" placeholder="yyyy/MM/dd" name="flyback_date" id="checkout_date"value="${indexValue.flyback_date}">
					<input type="image" style="width:30px;" onClick="addDay('checkout_date')" src=" <c:url value='/flight/xianqi/img/下一天.png'/>">
				</div>
				</div>
				
				<div>
				<input  id="peopleType" autocomplete="off" value="${indexValue.peopleType} | 經濟艙" name="peopleType"  style=" margin-top: 10px;font-size:12px;margin-left:5px;  text-align: left;border:none;background: none;padding-right: 5px;">
				<button class="home_search_button" id="home_search_button" style="margin-top: 10px;background-color: #c00017; float: right;height: 30px;width: 100px;margin-right: 30px;padding-bottom: 20px;" type="submit">重新搜尋</button>
			</div>
		</div>
	</div>
	</form>
  <!--重新search_結束-->
  <div class="container"> 
  <div class="list_flight">
    <div class="flirow"> 
      
      <!--左側欄-->
      <form action="<c:url value='/FlightInfoNew1' />" >
      <div class="panel-group  flyst" id="accordion">
        <div class="panel panel-info">
          <div id="mo_accordion" class="panel-collapse contbg  main_left martb" role="tabpanel" aria-labelledby="headingOne" style="margin-top: 14px;">
            <div class="modal-header visible-xs visible-sm">
              <button type="button" class="close" data-toggle="collapse" data-parent="#accordion" href="#mo_accordion" ><span aria-hidden="true">×</span></button>
              <h4 class="modal-title" id="pop_protickLabel">航班篩選</h4>
            </div>
            <ul class="filters">
               <li>
                <h4 style="padding-left: 20px;" >轉機次數 </h4>
                <ul class="are_nav airpn">
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="zj-checkbox-s1" checked="checked">
                      <label for="zj-checkbox-s1"></label>
                    </div>
                    <p > <span  >直飛 </span></p>
                  </li>
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="zj-checkbox-s2">
                      <label for="zj-checkbox-s2"></label>
                    </div>
                    <p><span>轉機1次</span></p>
                  </li>
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="zj-checkbox-s3">
                      <label for="zj-checkbox-s3"></label>
                    </div>
                    <p><span>轉機兩次 </span></p>
					                   
                  </li>
                </ul>
              </li>
              
              <!--航空公司-->
              
              <li style="border-bottom: 1px dashed #ccc;">
                <h4 style="padding-left: 20px;" >航空公司 </h4>
                <ul class="are_nav airpn">
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="cd-checkbox-s1" data-filter="all">
                      <label for="cd-checkbox-s1"></label>
                    </div>
                    <p > <span>全部</span><span class="price"></span></p>
                  </li>
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="cd-checkbox-s2" data-filter="CI">
                      <label for="cd-checkbox-s2"></label>
                    </div>
                    <p><span>中華航空</span></p>
                  </li>
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="cd-checkbox-s3">
                      <label for="cd-checkbox-s3"></label>
                    </div>
                    <p><span>長榮航空 </span></p>
                  </li>
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="cd-checkbox-s4">
                      <label for="cd-checkbox-s4"></label>
                    </div>
                    <p><span>濟州航空</span></p>
                  </li>
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="cd-checkbox-s5">
                      <label for="cd-checkbox-s5"></label>
                    </div>
                    <p><span>大韓航空 </span></p>
                  </li>
                  <li style="padding-left: 20px;" >
                    <div class="cdst">
                      <input type="checkbox" id="cd-checkbox-s6">
                      <label for="cd-checkbox-s6"></label>
                    </div>
                    <p><span>釜山航空 </span></p>
                  </li>
                  <li style="padding-left: 20px;">
                    <div class="cdst">
                      <input type="checkbox" id="cd-checkbox-s7">
                      <label for="cd-checkbox-s7"></label>
                    </div>
                    <p><span>國泰航空</span>
<!--                      <span class="price">$<b>39,172</b></span> -->
                    </p>
                  </li>
                </ul>
              </li>
               </ul>
              <!--航空公司_結束-->
              <div class="filters">
              <h4 style="padding-left: 20px;">時間篩選</h4>
              <dl>
	              <dt style="font-size: 10px;font-weight: 100;margin-bottom: 5px">出發時間 </dt>
		              <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" >0:00 <p>-</p> 6: 00</div>
		              </dd>
		               <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" >6:00 <p>-</p> 12: 00</div>
		              </dd> <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" >12:00 <p>-</p> 18: 00</div>
		              </dd> <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" style="border-right: 1px solid #ccdef0;">18:00 <p>-</p> 24: 00</div>
		              </dd>
		              <dt style="font-size: 10px;font-weight: 100;margin-bottom: 5px">到達時間</dt>
		              <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" >0:00 <p>-</p> 6: 00</div>
		              </dd>
		               <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" >6:00 <p>-</p> 12: 00</div>
		              </dd> <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" >12:00 <p>-</p> 18: 00</div>
		              </dd> <dd  class="filtertime" style="width:25%;">
		              <div class="c-filter-table__label" style="border-right: 1px solid #ccdef0;">18:00 <p>-</p> 24: 00</div>
		              </dd>
               </dl>
               <input type="submit" value="建资料" style="opacity: 0"> 
            </div>
            <div class="fix-button text-center">關閉</div>
          </div>
        </div>
      </div>
      </form>
      <!--左側欄_結束--> 
      
      <!--右側欄-->
      
      <div class="main_right">
<!--         <h3 class="title">可選航班共<span>10</span>組 </h3> -->
        <div class=" flylist"id="gofirst"> 
              
<!--               票價_結束  -->
              
            </div>
          </div>
          
          <!--航班n_結束-->
          
<!--           <div class="load_cont"> <i></i> 載入更多航班 </div> -->
        </div>
        </form>
        <!--彈跳航班資訊-->
        <div class="modal fade" id="pop_fdetail" tabindex="-1" role="dialog" aria-labelledby="pop_protickLabel">
          <div class="modal-dialog pop_box pop_med" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="pop_protickLabel">航班資訊</h4>
              </div>
              <div class="modal-body pop_flid">
                <ul class="nav fli_tab" role="tablist">
                  <li class="tick-pr" role="presentation"><a href="#pricebox" aria-controls="pricebox" role="tab" data-toggle="tab">票價規則</a></li>
                  <li  class="tick-ba" role="presentation"><a href="#bagnote" aria-controls="bagnote" role="tab" data-toggle="tab">行李資訊</a></li>
                </ul>
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane " id="pricebox">
                    <h5 class="fli_gtitle"><span>票價明細</span></h5>
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="tick_price ">
                      <tbody>
                        <tr>
                          <th width="15%" align="center" valign="middle">票別</th>
                          <th width="30%" align="center" valign="middle">票價</th>
                          <th width="20%" align="center" valign="middle">稅金</th>
                          <th width="15%" align="center" valign="middle">人數</th>
                          <th width="20%" align="center" valign="middle">合計</th>
                        </tr>
                        <tr>
                          <td width="15%" align="center" valign="middle">成人票</td>
                          <td width="30%" align="center" valign="middle" class="p-curr"><span>TWD<b>31,256</b></span><span>USD<b>81.86</b></span></td>
                          <td width="20%" align="center" valign="middle">3,000</td>
                          <td width="15%" align="center" valign="middle">1</td>
                          <td width="20%" align="center" valign="middle">34,256</td>
                        </tr>
                        <tr>
                          <td width="15%" align="center" valign="middle">兒童票</td>
                          <td width="30%" align="center" valign="middle" class="p-curr"><span>TWD<b>31,256</b></span><span>USD<b>81.86</b></span></td>
                          <td width="20%" align="center" valign="middle">2,000</td>
                          <td width="15%" align="center" valign="middle">1</td>
                          <td width="20%" align="center" valign="middle">32,000</td>
                        </tr>
                        <!--<tr>
                <td width="20%" align="center" valign="middle">嬰兒票</td>
                <td width="20%" align="center" valign="middle">5,000</td>
                <td width="20%" align="center" valign="middle">1,000</td>
                <td width="20%" align="center" valign="middle">1</td>
                <td width="20%" align="center" valign="middle">6,000</td>
              </tr>-->
                        <tr class="ttprc">
                          <td width="15%" align="center" valign="middle">&nbsp;</td>
                          <td width="30%" align="center" valign="middle">&nbsp;</td>
                          <td width="20%" align="center" valign="middle">&nbsp;</td>
                          <td width="15%" align="center" valign="middle" class="pri_t">總計</td>
                          <td width="20%" align="center" valign="middle" class="price fontm">72,256</td>
                        </tr>
                      </tbody>
                    </table>
                    <h5 class="fli_gtitle"><span>票價規則</span></h5>
                    <div class="flnot">
                      <div><span class="title ">機票效期 </span> <span class="cont">效期 1 個月</span> </div>
                      <div><span class="title ">出發日期</span> <span class="cont">機票必須在 2018年05月27日(含) 前使用完畢。</span> </div>
                      <div><span class="title ">改票說明</span> <span class="cont">
                        <ol>
                          <li>出發前可更改皆須改票，所有更改須符合原購票之票價相關規定及限制，亦有可能不可更改；出發後欲可更改，須另洽詢開票之旅行社，亦有可能不可更改；若未如期搭乘航空公司將收取NO-SHOW罰金。</li>
                          <li>所有更改及改票動作，必須於機票有效期限內進行，且需於【出發前24小時】完成。 (逢假日則提前至前二個工作日)。</li>
                          <li>機票開立後，不可轉讓其它航空公司、不可轉讓他人使用、不可更改航程、艙等及延長效期。(*請注意: 如為更改行程、艙等或其他機票內容，請洽客服人員；同一城市更改不同機場亦視為更改不同行程!)</li>
                          <li>因國際機票使用規定繁多，如有任何疑問請洽詢各航空公司。</li>
                        </ol>
                        </span></div>
                      <div><span class="title ">退票說明</span> <span class="cont">不可退票</span> </div>
                      <div class="tnote">註：票價規則繁多，詳情需以訂位及開票當下資訊為準。如對票價規則有疑慮，請洽詢各航空公司。</div>
                    </div>
                  </div>
                  <div role="tabpanel" class="tab-pane " id="bagnote">
                    <h5 class="fli_gtitle"><span>行李資訊</span></h5>
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="tick_price tick_bag">
                      <tbody>
                        <tr>
                          <th width="51%" align="center" valign="middle">航段</th>
                          <th width="29%" align="center" valign="middle">航班</th>
                          <th width="29%" align="center" valign="middle">托運行李</th>
                        </tr>
                        <tr>
                          <td width="51%" align="center" valign="middle" class="text-left">台灣桃園國際機場 TPE - 廣州白雲國際機場 CAN</td>
                          <td width="29%" align="center" valign="middle">CZ3098</td>
                          <td width="29%" align="center" valign="middle">20Kg/每人 <i class="glyphicon glyphicon-info-sign icon-bag popint" rel="popover" data-content="長度、寬度和高度的最大總測量值不超過62英寸(15公分)" data-original-title="長度、寬度和高度的最大總測量值不超過62英寸(15公分)"></i></td>
                        </tr>
                        <tr>
                          <td width="51%" align="center" valign="middle" class="text-left">廣州白雲國際機場 CAN - 巴黎戴高樂機場 CDG</td>
                          <td width="29%" align="center" valign="middle">CZ3098</td>
                          <td width="29%" align="center" valign="middle">2件/每人 <i class="glyphicon glyphicon-info-sign icon-bag popint" rel="popover" data-content="每件行李不得超過50磅(23公斤)，長度、寬度和高度的最大總測量值不超過62英寸(15公分)" data-original-title="每件行李不得超過50磅(23公斤)，長度、寬度和高度的最大總測量值不超過62英寸(15公分)"></i></td>
                        </tr>
                        <tr>
                          <td width="51%" align="center" valign="middle" class="text-left">巴黎戴高樂機場 CDG - 維也納國際機場 VIE</td>
                          <td width="29%" align="center" valign="middle">CZ3098</td>
                          <td width="29%" align="center" valign="middle">2件/每人 <i class="glyphicon glyphicon-info-sign icon-bag popint" rel="popover" data-content="每件行李不得超過50磅(23公斤)，長度、寬度和高度的最大總測量值不超過62英寸(15公分)" data-original-title="每件行李不得超過50磅(23公斤)，長度、寬度和高度的最大總測量值不超過62英寸(15公分)"></i></td>
                        </tr>
                        <tr class="ttprc">
                          <td width="51%" align="center" valign="middle" class="text-left">維也納國際機場 VIE - 台灣桃園國際機場 TPE</td>
                          <td width="29%" align="center" valign="middle">CZ3098</td>
                          <td width="29%" align="center" valign="middle">2件/每人 <i class="glyphicon glyphicon-info-sign icon-bag popint" rel="popover" data-content="每件行李不得超過50磅(23公斤)，長度、寬度和高度的最大總測量值不超過62英寸(15公分)" data-original-title="每件行李不得超過50磅(23公斤)，長度、寬度和高度的最大總測量值不超過62英寸(15公分)"></i></td>
                        </tr>
                      </tbody>
                    </table>
                    <ol class="lugnote">
                      <li>托運行李以件數計算，經濟艙每件不得超過23公斤、商務艙每件不得超過32公斤, 詳細規範請點擊<i class="glyphicon glyphicon-info-sign icon-bag popint" ></i>。</li>
                      <li>託運行李資訊是根據航空公司於訂位系統中的票價規則進行自動分析而取得，依實際開票時之確認為準。</li>
                    </ol>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--彈跳航班資訊_結束--> 
      </div>
    </div>
    
    <!--右側欄_結束--> 
    
  </div>
</div>

<!--內容_結束--> 

<script src="<c:url value='/flight/xianqi/js/jquery-1.11.2.min.js?sv=1'/>"></script> 

<script type="text/javascript" src="<c:url value='/flight/xianqi/js/bootstrap.min.js?sv=1'/>" ></script> 
<script type="text/javascript" src="<c:url value='/flight/xianqi/js/bootstrap-tooltip.js?sv=1'/>"></script> 
<script type="text/javascript" src="<c:url value='/flight/xianqi/js/bootstrap-popover.js?sv=1'/>"></script> 
<script>
$(".closepop").on("click",function(){$("#pop_protick").modal("hide")});$(".pop_res .dropdown-menu  .close").on("click",function(){$(".pop_res .dropdown-menu").modal("hide")});
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
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> -->
<!-- 	<script src="js/jquery.filterizr.js"></script> -->
<%-- 	<script src=" <c:url value='/flight/mohu/demo/js/demo.js'/>" --%>
<!-- 		type="text/javascript"></script> -->
<%-- 	<script src=" <c:url value='/flight/xianqi/js/jquery.filterizr.js'/>"></script> --%>
<%-- 	<script src=" <c:url value='/flight/xianqi/js/jquery.min.js'/>"></script> --%>
<%-- 	<script src=" <c:url value='/flight/xianqi/js/jquery-3.1.1.min.js'/>"></script> --%>
<!-- 	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> -->
<!-- 	<script src="https://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script> -->
	<%-- 	<link href=" <c:url value='/flight/mohu/demo/css/prettify.css'/>" rel="stylesheet" /> --%>
	<!--     <link href="css/bootstrap.css" rel="stylesheet"> -->
	<%--     <link href=" <c:url value='/flight/mohu/demo/css/demo.css'/>" rel="stylesheet"> --%>
<%-- 	<script src=" <c:url value='/flight/mohu/demo/js/prettify.js'/>" --%>
<!-- 		type="text/javascript"></script> -->
<%-- 	<script src=" <c:url value='/flight/mohu/demo/js/mockjax.js'/>" --%>
<!-- 		type="text/javascript"></script> -->
<%-- 	<script src=" <c:url value='/flight/mohu/js/bootstrap-typeahead.js'/>" --%>
<!-- 		type="text/javascript"></script> -->
<!-- 	<script -->
<%-- 		src="<c:url value='/flight/彈窗/custom-popup/jquery.custom.popup-v1.3.1.js'/>"></script> --%>
<%-- 	<jsp:include page="/voyage/foo.jsp" /> --%>
<!--票規與行李開關--> 
<script>
$(document).ready(function(){
	$(".btn-tick-pr").click(function(){$(".tick-ba,#bagnote").removeClass("active");
	$(".tick-pr,#pricebox").addClass("active")});
	$(".btn-tick-ba").click(function(){$(".tick-pr,#pricebox").removeClass("active");
	$(".tick-ba,#bagnote").addClass("active")})});
	$(".popint,.popint img")
// 	.popover({placement:"top"});
</script>

</body>
</html>