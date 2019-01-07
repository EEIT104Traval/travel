<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<div id= "content">
 AAA
</div>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

<%-- ${fn:length(select)}! --%>
<form action="<c:url value="/groupTour" />">
count = ${count}
	<table>
<%-- 		<c:forEach var="select" begin="0" end="${count}" items="${select}"> --%>
		<tr>
			<td>1</td>
<!-- 			<td></td> -->
<!-- 			<td>1</td> -->
<!-- 			<td>2</td> -->
<!-- 			<td>1</td> -->
<!-- 			<td>2</td> -->
<!-- 			<td>1</td> -->
<!-- 			<td>2</td> -->
<!-- 			<td>1</td> -->
		</tr>
<%-- 		</c:forEach> --%>
<!-- 		<tr> -->
<!-- 			<td>3</td> -->
<!-- 			<td>4</td> -->
<!-- 			<td>5</td> -->
<!-- 		</tr> -->
		<tr><td> <input type="submit"></td></tr>
	</table>
</form>

<script>

$(document).ready(function(){
	$.getJSON( "/Travel/groupTour", function( data ) {
		var contents ="";
		$.each(data, function(idx,val){   //idx->index ; val是一整個物件
			console.log(idx+",  "+val.tourName+","+val.content);
			
// 			<div class="col-md-6 col-lg-6 mb-4 ftco-animate">
// 			<a href="#" class="block-5"
// 				style="background-image: url('images/tour-6.jpg');">
// 				<div class="text">
// 					<span class="price">$399</span>
// 					<h3 class="heading">Group Tour in Maldives</h3>
// 					<div class="post-meta">
// 						<span>Ameeru Ahmed Magu Male’, Maldives</span>
// 					</div>
// 					<p class="star-rate">
// 						<span class="icon-star"></span><span class="icon-star"></span><span
// 							class="icon-star"></span><span class="icon-star"></span><span
// 							class="icon-star-half-full"></span> <span>500 reviews</span>
// 					</p>
// 				</div>
// 			</a>
// 		</div>

contents 
+="<img src=\"images/tour-1.jpg\" \>"
+"<table>"
		 +			"<tr>"
		 +				"<td>"+val.tourName+"</td>"
		 +           "</tr>"
		 +   "</table>"
		})
		$("#content").html(contents);
		});
}) 



</script>
</body>

</html>