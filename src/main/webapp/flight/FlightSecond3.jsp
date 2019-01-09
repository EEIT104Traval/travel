<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<body>
<script type="text/javascript">

$(document).ready(function(){
	
	 $.getJSON( "/Travel/FlightInfo", function( data ) {
		 var contents ="";
		 var contentss ="";
		 console.log(data);
		 $.each(data, function(idx,val){
			 console.log(data[idx].OriginDestinationOptions);
			 console.log(data[idx].OriginDestinationOptions.OriginDestinationOption.ElapsedTime);
// 			contents +='<a href="#" class="tag-cloud-link">'+val+'</a>'; 
				 
		 })
// 		 $("#tagcloud").html(contents);
	 });
	
	
	
	
	
	
})


 </script>
</body>
</html>