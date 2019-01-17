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

</head>
<body>

	<div class="hotelInfoBox">

		<div
			class="item imgLiquidFill roomSceneBox imgLiquid_bgSize imgLiquid_ready"
			relcontrol="0" type="room" room_code="DBT.BS" comment_id=""
			style="background-image: url(&quot;https://dszfbyatv8d2t.cloudfront.net/hotel/hotelDetail_error_room.svg&quot;); background-size: cover; background-position: center center; background-repeat: no-repeat;">
			<img
				src="https://dszfbyatv8d2t.cloudfront.net/hotel/hotelDetail_error_room.svg"
				alt="" title="" style="display: none;">
		</div>

		<!-- 房型簡易說明 -->
		<div class="item roomSceneBox" rel="roomInfo" relcontrol="0"
			type="room" room_code="DBT.BS" comment_id="">
			<p class="itemTitle">Double or Twin BUSINESS 單床或雙床雙人房 商務</p>
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
				<span>NT$</span><span>1,857</span>每晚
			</p>
			<div class="specialPrice">
				<i class="material-icons"></i>特惠價不可退訂
			</div>
			<div class="buyIt">
				<a
					href="https://www.tripresso.com/hotel/order/buy?hid=408603&amp;query=MjAxOTAxMjQlN0MyMDE5MDEyNSU3Q1clN0M0MzklN0M0MDg2MDMlN0NEQlQuQlMlN0NJRF9CMkJfMzAlN0NSTyU3Q0RJU0cyMyU3QzElN0UyJTdFMCU3QyU3Q04lNDBFMDE3NEVBNDFBNjQ0MTExNTQ3NzUwODMzMTY3QVdUVzAwMDAwMDEwMDAxMDAwMTA1MjQ3MzU="
					title="Double or Twin BUSINESS 單床或雙床雙人房 商務"
					class="btn btn-secondary">立即預訂</a>
			</div>
			<!-- 房間剩下20間以下顯示 -->

			<p class="roomNum">房況緊張，只剩1間房</p>

		</div>
		<!-- 立即購買 -->
		<div class="item" rel="buy">
			<div class="buyIt">
				<a
					href="https://www.tripresso.com/hotel/order/buy?hid=408603&amp;query=MjAxOTAxMjQlN0MyMDE5MDEyNSU3Q1clN0M0MzklN0M0MDg2MDMlN0NEQlQuQlMlN0NJRF9CMkJfMzAlN0NSTyU3Q0RJU0cyMyU3QzElN0UyJTdFMCU3QyU3Q04lNDBFMDE3NEVBNDFBNjQ0MTExNTQ3NzUwODMzMTY3QVdUVzAwMDAwMDEwMDAxMDAwMTA1MjQ3MzU="
					title="Double or Twin BUSINESS 單床或雙床雙人房 商務"
					class="btn btn-secondary">立即預訂</a>
			</div>
			<!-- 房間剩下20間以下顯示 -->
			<p class="roomNum">房況緊張，只剩1間房</p>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>