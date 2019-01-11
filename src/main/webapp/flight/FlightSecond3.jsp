<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="tw-zh">
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<body>
<h1>車間哦和幾個垃圾扔進哦以日屆國際</h1>
	<script type="text/javascript">
var result = ${result}
// console.log(result.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime)
console.log(result.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary+"測試亂碼專用")

$(document).ready(function() {
$.each(result.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary, function(index, value) {
	$('#div_apend').append(
		"<div>1去程第1段DepartureDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime+"</div>"		
		+"<div>2去程第1段ArrivalDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime+"</div>"
		+"<div>3去程第1段ResBookDesigCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ResBookDesigCode+"</div>"
		+"<div>4去程第1段DLocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode+"</div>"
		+"<div>5去程第1段ALocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalAirport.LocationCode+"</div>"
		+"<div>6去程第1段Code="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Code+"</div>"
		+"<div>7去程第1段FlightNumber="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.FlightNumber+"</div>"
		+"<div>8去程第1段Equipment="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].Equipment[0].AirEquipType+"</div>"
		+"<div>9去程第1段Amount="+value.AirItineraryPricingInfo[0].ItinTotalFare.BaseFare.Amount+"</div>"
		+"<div>10去程第1段TAXAmount="+value.AirItineraryPricingInfo[0].ItinTotalFare.Taxes.Tax[0].Amount+"</div>"
		+"<div>11去程第1段TotalAmount="+value.AirItineraryPricingInfo[0].ItinTotalFare.TotalFare.Amount+"</div>"
		+ "===========================================================================================<br/>")
	
	var s = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment
	console.log(s.length)
	if (s.length==2){
// 	var len = s.length()
	$('#div_apend').append(
	 		"<div>1去程第2段DepartureDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].DepartureDateTime+"</div>"		
	 		+"<div>2去程第2段ArrivalDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].ArrivalDateTime+"</div>"
	 		+"<div>3去程第2段ResBookDesigCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].ResBookDesigCode+"</div>"
	 		+"<div>4去程第2段DLocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].DepartureAirport.LocationCode+"</div>"
	 		+"<div>5去程第2段ALocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].ArrivalAirport.LocationCode+"</div>"
	 		+"<div>6去程第2段Code="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].OperatingAirline.Code+"</div>"
	 		+"<div>7去程第2段FlightNumber="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].OperatingAirline.FlightNumber+"</div>"
	 		+"<div>8去程第2段Equipment="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[1].Equipment[0].AirEquipType+"</div>"
	 		+"===========================================================================================<br/>"
	)}
		if (s.length==3){
	//	 	var len = s.length()
			$('#div_apend').append(
			 		"<div>1去程第3part段DepartureDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].DepartureDateTime+"</div>"		
			 		+"<div>2去程第3part段ArrivalDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].ArrivalDateTime+"</div>"
			 		+"<div>3去程第3part段ResBookDesigCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].ResBookDesigCode+"</div>"
			 		+"<div>4去程第3part段DLocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].DepartureAirport.LocationCode+"</div>"
			 		+"<div>5去程第3part段ALocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].ArrivalAirport.LocationCode+"</div>"
			 		+"<div>6去程第3part段Code="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].OperatingAirline.Code+"</div>"
			 		+"<div>7去程第3part段FlightNumber="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].OperatingAirline.FlightNumber+"</div>"
			 		+"<div>8去程第3part段Equipment="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[2].Equipment[0].AirEquipType+"</div>"
			 		+"===========================================================================================<br/>"
			)}
			
			$('#div_apend').append(
					"<div>1回程第1段DepartureDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureDateTime+"</div>"		
					+"<div>2回程第1段ArrivalDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalDateTime+"</div>"
					+"<div>3回程第1段ResBookDesigCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ResBookDesigCode+"</div>"
					+"<div>4回程第1段DLocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureAirport.LocationCode+"</div>"
					+"<div>5回程第1段ALocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalAirport.LocationCode+"</div>"
					+"<div>6回程第1段Code="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Code+"</div>"
					+"<div>7回程第1段FlightNumber="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.FlightNumber+"</div>"
					+"<div>8回程第1段Equipment="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].Equipment[0].AirEquipType+"</div>"
					+"===========================================================================================<br/>"	
				)
		var back2 = value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment
		if (back2.length==2){
//		 	var len = s.length()
			$('#div_apend').append(
			 		"<div>1回程第2段DepartureDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].DepartureDateTime+"</div>"		
			 		+"<div>2回程第2段ArrivalDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].ArrivalDateTime+"</div>"
			 		+"<div>3回程第2段ResBookDesigCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].ResBookDesigCode+"</div>"
			 		+"<div>4回程第2段DLocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].DepartureAirport.LocationCode+"</div>"
			 		+"<div>5回程第2段ALocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].ArrivalAirport.LocationCode+"</div>"
			 		+"<div>6回程第2段Code="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].OperatingAirline.Code+"</div>"
			 		+"<div>7回程第2段FlightNumber="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].OperatingAirline.FlightNumber+"</div>"
			 		+"<div>8回程第2段Equipment="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[1].Equipment[0].AirEquipType+"</div>"
			 		+"===========================================================================================<br/>"
			)}
			if (back2.length==3){
				//	 	var len = s.length()
						$('#div_apend').append(
						 		"<div>1回程第3part段DepartureDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].DepartureDateTime+"</div>"		
						 		+"<div>2回程第3part段ArrivalDateTime="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].ArrivalDateTime+"</div>"
						 		+"<div>3回程第3part段ResBookDesigCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].ResBookDesigCode+"</div>"
						 		+"<div>4回程第3part段DLocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].DepartureAirport.LocationCode+"</div>"
						 		+"<div>5回程第3part段ALocationCode="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].ArrivalAirport.LocationCode+"</div>"
						 		+"<div>6回程第3part段Code="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].OperatingAirline.Code+"</div>"
						 		+"<div>7回程第3part段FlightNumber="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].OperatingAirline.FlightNumber+"</div>"
						 		+"<div>8回程第3part段Equipment="+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[2].Equipment[0].AirEquipType+"</div>"
						 		+"===========================================================================================<br/>"
						)}
	
});
});
 </script>

	<!--  <h1>Hello</h1> -->
	<div id='div_apend'></div>
	<h1>為什麼有亂碼呢</h1>

</body>
</html>