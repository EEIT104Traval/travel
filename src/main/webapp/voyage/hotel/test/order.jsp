<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Bootstrap 4, from LayoutIt!</title>

<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

<style>
.hotelDetailDesc .hotelInfoBox {
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -ms-flex-direction: row;
  flex-direction: row;
  -webkit-flex-wrap: wrap;
  flex-wrap: wrap;
  border-bottom: 2px #eee solid;
  padding-left: 15px;
  background: #fff;
}
</style>


</head>
<body>



	<div class="col-md-12 roomSummaryBox">
		<div class="hotelInfoBox">

			<div
				class="item imgLiquidFill roomSceneBox imgLiquid_bgSize imgLiquid_ready"
				relcontrol="1" type="room" room_code="TWN.NM" comment_id=""
				style="width:20%;background-image: url(&quot;https://dszfbyatv8d2t.cloudfront.net/hotel/hotelDetail_error_room.svg&quot;); background-size: cover; background-position: center center; background-repeat: no-repeat;">
				<img
					src="https://dszfbyatv8d2t.cloudfront.net/hotel/hotelDetail_error_room.svg"
					alt="" title="" style="display: none;">
			</div>

			<!-- 房型簡易說明 -->
			<div class="item roomSceneBox" rel="roomInfo" relcontrol="1" style="width:20%;"
				type="room" room_code="TWN.NM" comment_id="">
				<p class="itemTitle">TWIN NON SMOKING 雙床房 禁菸</p>
				<div class="roomInfoList">
					<!-- 房間設施 -->

				</div>
				<div class="roomDesc">客房詳細資訊</div>
			</div>
			<!-- 房型完整說明 -->
			<!-- 可免費取消時加入 hasFreeCancel -->
			<div class="item hasFreeCancel" rel="roomRemarks">



				<p class="itemTitle">不含餐</p>





				<div class="cancelBox">

					<!--
                                <div class="freeBox">
                                    <i class="material-icons">&#xE5CA;</i>皆可免費取消
                                </div>
                                -->

				</div>
			</div>
			<!-- 房型售價 -->
			<!-- 可減價時時加入 hasPriceDown，有特惠價時加入 hasSpecialPrice -->

			<div class="item" rel="roomPrice">

				<!-- 現在拿不到相關數據 -->
				<!-- <div class="saleBox">
                        <div class="priceDown text-left">減價<span>40</span>%</div>
                        <div class="oldPrice text-right">NT$<span>4,800</span></div>
                        </div> -->
				<p>
					<span>NT$</span><span>7,666</span>每晚
				</p>
				<div class="specialPrice">
					<i class="material-icons"></i>特惠價不可退訂
				</div>
				<div class="buyIt">
					<a
						href="https://www.tripresso.com/hotel/order/buy?hid=108593&amp;query=MjAxOTAxMjUlN0MyMDE5MDEyNiU3Q1clN0MyODQlN0MxMDg1OTMlN0NUV04uTk0lN0NJRF9CMkJfMjYlN0NSTyU3Q0lXVTI1JTdDMSU3RTIlN0UwJTdDJTdDTiU0MDJENzYyQjQ2NTU1NDQ4RDE1NDc3ODQxOTU1NDBBV1RXMDAwMDAwMTAwMDEwMDAxMDUyNTJkZA=="
						title="TWIN NON SMOKING 雙床房 禁菸" class="btn btn-secondary">立即預訂</a>
				</div>
				<!-- 房間剩下20間以下顯示 -->

			</div>
			<!-- 立即購買 -->
			<div class="item" rel="buy">
				<div class="buyIt">
					<a
						href="https://www.tripresso.com/hotel/order/buy?hid=108593&amp;query=MjAxOTAxMjUlN0MyMDE5MDEyNiU3Q1clN0MyODQlN0MxMDg1OTMlN0NUV04uTk0lN0NJRF9CMkJfMjYlN0NSTyU3Q0lXVTI1JTdDMSU3RTIlN0UwJTdDJTdDTiU0MDJENzYyQjQ2NTU1NDQ4RDE1NDc3ODQxOTU1NDBBV1RXMDAwMDAwMTAwMDEwMDAxMDUyNTJkZA=="
						title="TWIN NON SMOKING 雙床房 禁菸" class="btn btn-secondary">立即預訂</a>
				</div>
				<!-- 房間剩下20間以下顯示 -->

			</div>
		</div>
	</div>



	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>