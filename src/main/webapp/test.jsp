<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<a href="<c:url value='/test' />">UserInfoTest</a>
	<br />
	<br />
	<a href="<c:url value='TourtestfindPK' />">TourtestfindPK</a>
	<br />
	<br />
	<a href="<c:url value='TourtestfindALL' />">TourtestfindALL</a>
	<br />
	<br />
	<a href="<c:url value='Tourtestcreate' />">Tourtestcreate</a>
	<br />
	<br />
	<a href="<c:url value='Tourtestupdate' />">Tourtestupdate</a>
	<br />
	<br />
	<a href="<c:url value='Tourtestremove' />">Tourtestremove</a>
	<br />
	<br />
	<a href="<c:url value='/Hoteltest' />">Hoteltest</a>
	<br />
	<br />
	<a href="<c:url value='/ticketTest' />">ticketTest</a>
	<br />
	<br />
	<h1>姚</h1>
	<a href="<c:url value='ticketfindAll' />">ticketfindAll</a>
	<a href="<c:url value='ticketfindpk' />">ticketfindpk</a>
	<a href="<c:url value='ticketCreate' />">ticketCreate</a>
	<a href="<c:url value='ticketUpdate' />">ticketUpdate</a>
	<a href="<c:url value='ticketRemove' />">ticketRemove</a>
	<br>
	<a href="<c:url value='ticketOrderfindAll' />">ticketOrderfindAll</a>
	<a href="<c:url value='ticketOrderfindpk' />">ticketOrderfindpk</a>
	<a href="<c:url value='ticketOrderCreate' />">ticketOrderCreate</a>
	<a href="<c:url value='ticketOrderUpdate' />">ticketOrderUpdate</a>
	<a href="<c:url value='ticketOrderRemove' />">ticketOrderRemove</a>
	<hr>
	
	<a href="<c:url value='/userInfofindALL' />">Usetest</a>
	<a href="<c:url value='/userInfocreate' />">Usercreat</a>
	<a href="<c:url value='/userInforemove' />">Userremove</a>
	<a href="<c:url value='/userInfoupdate' />">Userupdate</a>
	<br />
	<br />

	<h1>朱薇</h1>
	<a href="<c:url value='/flight1' />">findAll</a>
	<a href="<c:url value='/flight2' />">findByPrimaryKey</a>
	<a href="<c:url value='/flight3' />">create</a>
	<a href="<c:url value='/flight4' />">update</a>
	<a href="<c:url value='/flight5' />">remove</a> 
	<a href="<c:url value='/flight6' />">findByPrimaryKey1</a>  
	<a href="<c:url value='/flight7' />">findAll2</a>
	<a href="<c:url value='/flight8' />">create2</a>
	
	<br />
	<br />

	<h1>雅涵</h1>
	<a href="<c:url value='/HotelfindByPK' />">HotelfindByPK</a>
	<a href="<c:url value='/HoteltestfindALL' />">HoteltestfindALL</a>
	<a href="<c:url value='/Hoteltestcreate' />">Hoteltestcreate</a>
	<a href="<c:url value='Hoteltestupdate' />">Hoteltestupdate</a>
	<a href="<c:url value='Hoteltestremove' />">Hoteltestremove</a>
	<hr />
	
	<a href="<c:url value='/HotelPicfindByPK' />">HotelPicfindByPK</a>
	<a href="<c:url value='/HotelPicfindALL' />">HotelPicfindALL</a>
	<a href="<c:url value='/HotelPiccreate' />">HotelPiccreate</a>
	<a href="<c:url value='/HotelPicupdate' />">HotelPicupdate</a>
	<a href="<c:url value='/HotelPicremove' />">HotelPicremove</a>
	<hr />
	
	<a href="<c:url value='/RoomTypefindByPK' />">RoomTypefindByPK</a>
	<a href="<c:url value='/RoomTypefindALL' />">RoomTypefindALL</a>
	<a href="<c:url value='/RoomTypecreate' />">RoomTypecreate</a>
	<a href="<c:url value='/RoomTypeupdate' />">RoomTypeupdate</a>
	<a href="<c:url value='/RoomTyperemove' />">RoomTyperemove</a>
	<hr />
	
	<a href="<c:url value='/RoomTypePicfindByPK' />">RoomTypePicfindByPK</a>
	<a href="<c:url value='/RoomTypePicfindALL' />">RoomTypePicfindALL</a>
	<a href="<c:url value='/RoomTypePiccreate' />">RoomTypePiccreate</a>
	<a href="<c:url value='/RoomTypePicupdate' />">RoomTypePicupdate</a>
	<a href="<c:url value='/RoomTypePicremove' />">RoomTypePicremove</a>
	<hr />
	
	<a href="<c:url value='/RoomLeftfindByPK' />">RoomLeftfindByPK</a>
	<a href="<c:url value='/RoomLeftfindALL' />">RoomLeftfindALL</a>
	<a href="<c:url value='/RoomLeftcreate' />">RoomLeftcreate</a>
	<a href="<c:url value='/RoomLeftupdate' />">RoomLeftupdate</a>
	<a href="<c:url value='/RoomLeftremove' />">RoomLeftremove</a>
	<hr />
	
	<a href="<c:url value='/HotelOrderDetailsfindByPK' />">HotelOrderDetailsfindByPK</a>
	<a href="<c:url value='/HotelOrderDetailsfindALL' />">HotelOrderDetailsfindALL</a>
	<a href="<c:url value='/HotelOrderDetailscreate' />">HotelOrderDetailscreate</a>
	<a href="<c:url value='/HotelOrderDetailsupdate' />">HotelOrderDetailsupdate</a>
	<a href="<c:url value='/HotelOrderDetailsremove' />">HotelOrderDetailsremove</a>
	<hr />
	
	<br />
	<h2>周周</h2>
	<a href="<c:url value='/TourMemberFindPK' />">TourMemberFindPK</a>
	<a href="<c:url value='/TourMemberFindAll' />">TourMemberFindAll</a>

	<br />
	
</body>
</html>