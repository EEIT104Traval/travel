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

	<h1>熊</h1>
	<a href="<c:url value='TourtestfindPK' />">TourtestfindPK</a>
	<a href="<c:url value='TourtestfindALL' />">TourtestfindALL</a>
	<a href="<c:url value='Tourtestcreate' />">Tourtestcreate</a>
	<a href="<c:url value='Tourtestupdate' />">Tourtestupdate</a>
	<a href="<c:url value='Tourtestremove' />">Tourtestremove</a>
	<br />
	<a href="<c:url value='TourBatchtestfindPK' />">TourBatchtestfindPK</a>
	<a href="<c:url value='TourBatchtestfindALL' />">TourBatchtestfindALL</a>
	<a href="<c:url value='TourBatchtestInsert' />">TourBatchtestInsert</a>
	<a href="<c:url value='TourBatchtestUpdate' />">TourBatchtestUpdate</a>
	<a href="<c:url value='TourBatchtestremove' />">TourBatchtestremove</a>
	<br />
	<a href="<c:url value='TourTagsTestfindPK' />">TourTagsTestfindPK</a>
	<a href="<c:url value='TourTagsTestfindALL' />">TourTagsTestfindALL</a>	
    <a href="<c:url value='TourTagsTestInsert' />">TourTagsTestInsert</a>
    <a href="<c:url value='TourTagsTestUpdate' />">TourTagsTestUpdate</a>
    <a href="<c:url value='TourTagsTestDelete' />">TourTagsTestDelete</a>
    <a href="<c:url value='TourTagsTestfindTag' />">TourTagsTestfindTag</a>
	<hr />
	<h1>姚</h1>
	<a href="<c:url value='ticketfindAll' />">ticketfindAll</a>
	<a href="<c:url value='ticketfindpk' />">ticketfindpk</a>
	<a href="<c:url value='ticketCreate' />">ticketCreate</a>
	<a href="<c:url value='ticketUpdate' />">ticketUpdate</a>
	<a href="<c:url value='ticketRemove' />">ticketRemove</a>
	<a href="<c:url value='ticketcountry' />">findcountry</a>
	<br>
	<a href="<c:url value='ticketOrderfindAll' />">ticketOrderfindAll</a>
	<a href="<c:url value='ticketOrderfindpk' />">ticketOrderfindpk</a>
	<a href="<c:url value='ticketOrderCreate' />">ticketOrderCreate</a>
	<a href="<c:url value='ticketOrderUpdate' />">ticketOrderUpdate</a>
	<a href="<c:url value='ticketOrderRemove' />">ticketOrderRemove</a>
	<br>
	<a href="<c:url value='/ticketDLtest' />">ticketDLtest </a>
	<br>
	<a href="<c:url value='tourDLtest' />">tourDLtest </a>
	<hr>
	
	
	<h3>婉萍</h3>
	<a href="<c:url value='/userInfoPK' />">UserPK</a>
	<a href="<c:url value='/userInfofindALL' />">UserfindAll</a>
	<a href="<c:url value='/userInfocreate' />">Usercreat</a>
	<a href="<c:url value='/userInfoupdate' />">Userupdate</a>
	<a href="<c:url value='/userInforemove' />">Userremove</a>
	<hr />
	<a href="<c:url value='/ratePK' />">RatePK</a>
	<a href="<c:url value='/ratefindALL' />">RatefindAll</a>
	<a href="<c:url value='/ratefindALL01' />">RatefindAll01</a>
	
	<%-- 	<a href="<c:url value='/ratecreate' />">Ratecreat</a> --%>
	<%-- 	<a href="<c:url value='/rateupdate' />">Rateupdate</a> --%>
	<%-- 	<a href="<c:url value='/rateremove' />">Rateremove</a> --%>
	<hr />
	
	<%-- 	<a href="<c:url value='/rate_jpyPK' />">Rate_jpyPK</a> --%>
	<%-- 	<a href="<c:url value='/rate_jpyfindALL' />">Rate_jpyfindAll</a> --%>
	<%-- 	<a href="<c:url value='/rate_jpycreate' />">Rate_jpycreat</a> --%>
	<%-- 	<a href="<c:url value='/rate_jpyupdate' />">Rate_jpyupdate</a> --%>
	<%-- 	<a href="<c:url value='/rate_jpyremove' />">Rate_jpyremove</a> --%>
	<hr />
	<a href="<c:url value='/ratenoticePK' />">RatenoticePK</a>
	<%-- 	<a href="<c:url value='/ratenoticefindALL' />">RatenoticefindAll</a> --%>
	<%-- 	<a href="<c:url value='/ratenoticecreate' />">Ratenoticecreat</a> --%>
	<%-- 	<a href="<c:url value='/ratenoticeupdate' />">Ratenoticeupdate</a> --%>
	<%-- 	<a href="<c:url value='/ratenoticeremove' />">Ratenoticeremove</a> --%>
	<hr />

	<br />

	<h1>朱薇</h1>
	<a href="<c:url value='/flight1' />">FlightOrderfindAll</a>
	<a href="<c:url value='/flight2' />">FlightOrderfindByPrimaryKey</a>
	<a href="<c:url value='/flight3' />">FlightOrdercreate</a>
	<a href="<c:url value='/flight4' />">FlightOrderupdate</a>
	<a href="<c:url value='/flight5' />">FlightOrderremove</a>
	<hr />
	<a href="<c:url value='/flight6' />">FlightPassengerfindByPrimaryKey1</a>
	<a href="<c:url value='/flight7' />">FlightPassengerfindAll2</a>
	<a href="<c:url value='/flight8' />">FlightPassengercreate2</a>
	<hr />
	<a href="<c:url value='/flight9' />">FlightTicketfindByPrimaryKey</a>
	<a href="<c:url value='/flight10' />">FlightTicketfindAll</a>
	<a href="<c:url value='/flight11' />">FlightTicketcreate</a>
	<hr />
	<a href="<c:url value='/flight12' />">AirportfindByPrimaryKey</a>
	<a href="<c:url value='/flight13' />">AirportCreate</a>
	<hr />
	<a href="<c:url value='/flight14' />">AirlinefindByPrimaryKey</a>
	<a href="<c:url value='/flight15' />">AirlineCreate</a>
	<hr />
	<a href="<c:url value='/flight17' />">AirportTest</a>
	<hr />
	<a href="<c:url value='/flightxml' />">XMLTest</a>
	<a href="<c:url value='/FlightInfo' />">FlightInfoTest</a>
	
	<hr />
	<br />
	<h1>雅涵</h1>
	<a href="<c:url value='/HotelfindByPK' />">HotelfindByPK</a>
	<a href="<c:url value='/HoteltestfindALL' />">HoteltestfindALL</a>
	<a href="<c:url value='/Hoteltestcreate' />">Hoteltestcreate</a>
	<a href="<c:url value='Hoteltestupdate' />">Hoteltestupdate</a>
	<a href="<c:url value='Hoteltestremove' />">Hoteltestremove</a>
	<a href="<c:url value='Hotelsearch' />">Hotelsearch</a>
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

	<a href="<c:url value='/RoomAvailablefindByPK' />">RoomAvailablefindByPK</a>
	<a href="<c:url value='/RoomAvailablefindALL' />">RoomAvailablefindALL</a>
	<a href="<c:url value='/RoomAvailablecreate' />">RoomAvailablecreate</a>
	<a href="<c:url value='/RoomAvailableupdate' />">RoomAvailableupdate</a>
	<a href="<c:url value='/RoomAvailableremove' />">RoomAvailableremove</a>
	<hr />

	<a href="<c:url value='/HotelOrderDetailsfindByPK' />">HotelOrderDetailsfindByPK</a>
	<a href="<c:url value='/HotelOrderDetailsfindALL' />">HotelOrderDetailsfindALL</a>
	<a href="<c:url value='/HotelOrderDetailscreate' />">HotelOrderDetailscreate</a>
	<a href="<c:url value='/HotelOrderDetailsupdate' />">HotelOrderDetailsupdate</a>
	<a href="<c:url value='/HotelOrderDetailsremove' />">HotelOrderDetailsremove</a>
	<hr />

	<br />
	<h2>周周</h2>
	TourMemberInfoTest　
	<a href="<c:url value='/TMIfindAll' />">findAll</a>　
	<a href="<c:url value='/TMIfindOrderNo' />">findSerialNo</a>　
	<a href="<c:url value='/TMIfindDoublePK' />">findDoublePK</a>　
	<a href="<c:url value='/TMIupdate' />">update</a>　
	<a href="<c:url value='/TMIcreate' />">create</a>　
	<a href="<c:url value='/TMIremove' />">remove</a>　
	<br />
	TourOrderInfoTest　
	<a href="<c:url value='/TOIfindAll' />">findAll</a>　
	<a href="<c:url value='/TOIfindPK' />">findPK</a>　
	<a href="<c:url value='/TOIcreate' />">create</a>　
	<a href="<c:url value='/TOIupdate' />">update</a>　
	<a href="<c:url value='/TOIremove' />">remove</a>　
	<br />
	TourPictureTest　
	<a href="<c:url value='/TPfindAll' />">findAll</a>　
	<a href="<c:url value='/TPfindOrderNo' />">findOrderNo</a>　
	<a href="<c:url value='/TPfindDoublePK' />">findDoublePK</a>　
	<a href="<c:url value='/TPcreate' />">create</a>　
	<a href="<c:url value='/TPupdate' />">update</a>　
	<a href="<c:url value='/TPremove' />">remove</a>　
	<br />


</body>
</html>
