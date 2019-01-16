<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/trip.css'/>" />
</head>

<body>

	<div class="header-wrapper">
		<div class="header" id="J_hd">
			<div class="ctriplogo">
				<a href="//www.ctrip.com">携程旅行网</a>
			</div>
			<div class="order-progress">
				<div class="prog-step prog-current">
					<div class="progress-line"></div>
					<h4>
						乘机信息<i class="ico ico-step"></i>
					</h4>
				</div>
				<div class="prog-step">
					<div class="progress-line">
						<h4>增值服务</h4>
					</div>
				</div>
				<div class="prog-step">
					<div class="progress-line">
						<h4>支付</h4>
					</div>
				</div>
				<div class="prog-step">
					<div class="progress-line">
						<h4>完成</h4>
					</div>
				</div>
			</div>
			<div class="loginbar">
				<span id="J_quickUserName" class="ctrip-username"
					style="display: none;">尊敬的会员</span> <a id="J_quickLogin"
					href="javascript:((window.openLoginModal || {}).andOkToReload || __SSO_loginShow ||  function(){})('refresh', true, 0, true);"
					class="ctrip-username">登录</a> <a href="http://kefu.ctrip.com"
					target="_blank" class="callcenter">客服中心</a>
			</div>
		</div>
	</div>

	<div class="sidebar-cont" id="J_sidebar_cont"
		style="position: static; left: 738.8px; top: 0px; background: rgb(245, 248, 249); min-height: 500px;">
		<div id="J_flightInfo">
			<div class="flight-info "
				style="border-bottom: none; padding-bottom: 0">
				<div class="flight-city">
					<span class="basic-tag">去</span>
					<div class="flt-date">
						01-16<span class="week">周三</span>
					</div>
					<div class="flt-depart ">上海</div>
					&nbsp;
					<div class="flt-arrow">
						<i class="ico-arrow"></i>
					</div>
					&nbsp;
					<div class="flt-arrive ">广州</div>
				</div>
				<div class="flt-tit-group">
					<div class="flight-tit">
						<span class="flt-airline"><img alt="" height="16"
							width="16"
							src="//pic.c-ctrip.com/flight_intl/airline_logo/32/mu.png">
							东方航空 MU9305 </span><span class="plane-type">波音 787-9</span> <span
							class="flt-seat">经济舱</span>
					</div>
					<div class="flight-tit flight-tit-share">
						<i class="ico-shared-flight"></i> <span class="share">共享航班:</span>
						<span class="actual-ride">实际乘坐</span> <span class="flt-airline"><img
							src="//pic.c-ctrip.com/flight_intl/airline_logo/32/fm.png"
							width="16" height="16" alt="">上海航空FM9305</span>
					</div>
				</div>
				<div class="flight-detail">
					<div class="flt-depart">
						<span class="time">09:30</span> <span class="airport">虹桥国际机场T2</span>
					</div>
					<div class="flt-arrow flt-non-stop">
						<div class="cost-time">
							<i class="ico-clock"></i>2h40m
						</div>
						<div class="timeline">
							<i class="ico-airport"></i> <i class="dot"></i> <i
								class="dot dot-end"></i>
						</div>
					</div>
					<div class="flt-arrive">
						<span class="time">12:10</span>
						<div id="arriveTime_1_1" style="display: none">到达时间为第2天，2019年01月16日
							12时10分</div>
						<span class="airport">白云国际机场T1</span>
					</div>
				</div>
				<i class="ico-supplier" tooltip-gid="supplier1"></i>
				<div class="flight-info " style="padding-top: 0">
					<div class="separation-line"></div>
					<div class="flight-city">
						<span class="basic-tag">返</span>
						<div class="flt-date">
							01-25<span class="week">周五</span>
						</div>
						<div class="flt-depart ">广州</div>
						&nbsp;
						<div class="flt-arrow">
							<i class="ico-arrow"></i>
						</div>
						&nbsp;
						<div class="flt-arrive ">上海</div>
					</div>
					<div class="flight-tit">
						<span class="flt-airline"><img alt="" height="16"
							width="16"
							src="//pic.c-ctrip.com/flight_intl/airline_logo/32/ca.png">
							中国国航 CA1829 </span><span class="plane-type">波音 737-800</span> <span
							class="flt-seat">经济舱</span>
					</div>
					<div class="flight-detail">
						<div class="flt-depart">
							<span class="time">16:20</span> <span class="airport">白云国际机场T1</span>
						</div>
						<div class="flt-arrow flt-non-stop">
							<div class="cost-time">
								<i class="ico-clock"></i>2h20m
							</div>
							<div class="timeline">
								<i class="ico-airport"></i> <i class="dot"></i> <i
									class="dot dot-end"></i>
							</div>
						</div>
						<div class="flt-arrive">
							<span class="time">18:40</span>
							<div id="arriveTime_2_1" style="display: none">到达时间为第2天，2019年01月25日
								18时40分</div>
							<span class="airport">虹桥国际机场T2</span>
						</div>
					</div>
					<i class="ico-supplier"></i>
					<div id="supplier2"
						style="display: none; margin: 0 20px; width: 200px">
						<h4>产品供应商：</h4>
						<p>成都携程旅行社有限公司广州分公司</p>
						<p>IATA号:08331326</p>
						<p>中国国航授权代理</p>
					</div>
				</div>
			</div>
		</div>
		<div id="J_hotelInfo"></div>
		<div id="J_priceInfo" render-guid="compileGUID57">
			<div class="flight-cost">
				<div class="cost-detail">
					<div class="cost-row">
						<div class="cost-tit">
							<span>去程成人</span> <span class="abbr">免费改期</span>
							<div id="X-TGTable_0_0" class="tooltip tooltip-table"
								style="display: none; width: auto; font-size: 12px">
								<div class="tab-cont" id="Section-Tab-0_0_0"
									style="display: block">
									<div id="TGTable_0_0_0">
										<div class="tab-cont" id="flightTGQ_0_0_0">
											<table>
												<tbody>
													<tr>
														<th rowspan="4" class="tit">成人</th>
														<td class="sub-tit"></td>
														<td class="sub-table"><table>
																<tbody>
																	<tr>
																		<th class="col-1" style="width: 100px;">2019年01月09日09:30前</th>
																		<th class="col-1" style="width: 100px;">2019年01月14日09:30前</th>
																		<th class="col-1" style="width: 100px;">2019年01月16日05:30前</th>
																		<th class="col-1" style="width: 100px;">2019年01月16日05:30后</th>
																	</tr>
																</tbody>
															</table></td>
													</tr>
													<tr>
														<td class="sub-tit">退票费</td>
														<td class="sub-table"><table>
																<tbody>
																	<tr>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>81</span>/人</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>81</span>/人</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>162</span>/人</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>324</span>/人</td>
																	</tr>
																</tbody>
															</table></td>
													</tr>
													<tr>
														<td class="sub-tit">同舱改期费</td>
														<td class="sub-table"><table>
																<tbody>
																	<tr>
																		<td class="col-1" style="width: 100px;">免费</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>81</span>/人</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>81</span>/人</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>162</span>/人</td>
																	</tr>
																</tbody>
															</table></td>
													</tr>
													<tr class="">
														<td class="sub-tit">签转条件</td>
														<td>可以签转</td>
													</tr>
													<tr class="hide">
														<td class="sub-tit">快线产品更改费</td>
														<td><span class="price">免费</span><br></td>
													</tr>
												</tbody>
											</table>
											<table class="table-and">
												<tbody>
													<tr>
														<th class="tit">备注</th>
														<td><div>
																舱位（Y）：票面
																<dfn>¥</dfn>
																1620/人。
															</div></td>
													</tr>
												</tbody>
											</table>
											<div class="luggage-limit f-orange">*携程不加收任何退改服务费，具体费用按航空公司规定收取</div>
										</div>
									</div>
								</div>
							</div>
							<span class="abbr" tooltip-gid="luggageInfo_0_0">行李额</span>
						</div>
						<div class="corner">
							<span class="price"><dfn>¥</dfn>1620</span><span class="num">x
								1</span>
						</div>
					</div>
					<div class="cost-row">
						<div class="cost-tit">
							<span>返程成人</span> <span class="abbr">免费改期</span>
							<div id="X-TGTable_0_1" class="tooltip tooltip-table"
								style="display: none; width: auto; font-size: 12px">
								<div class="tab-cont" id="Section-Tab-0_1_0"
									style="display: block">
									<div id="TGTable_0_1_0">
										<div class="tab-cont" id="flightTGQ_0_1_0">
											<table>
												<tbody>
													<tr>
														<th rowspan="4" class="tit">成人</th>
														<td class="sub-tit"></td>
														<td class="sub-table"><table>
																<tbody>
																	<tr>
																		<th class="col-1" style="width: 100px;">2019年01月25日16:20前</th>
																		<th class="col-1" style="width: 100px;">2019年01月25日16:20后</th>
																	</tr>
																</tbody>
															</table></td>
													</tr>
													<tr>
														<td class="sub-tit">退票费</td>
														<td class="sub-table"><table>
																<tbody>
																	<tr>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>162</span>/人</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>243</span>/人</td>
																	</tr>
																</tbody>
															</table></td>
													</tr>
													<tr>
														<td class="sub-tit">同舱改期费</td>
														<td class="sub-table"><table>
																<tbody>
																	<tr>
																		<td class="col-1" style="width: 100px;">免费</td>
																		<td class="col-1" style="width: 100px;"><span
																			class="price"><dfn>¥</dfn>162</span>/人</td>
																	</tr>
																</tbody>
															</table></td>
													</tr>
													<tr class="">
														<td class="sub-tit">签转条件</td>
														<td>允许签转，如变更后承运人适用票价高于国航票价，需补齐差额后进行变更，若低于国航票价，差额不退。</td>
													</tr>
													<tr class="hide">
														<td class="sub-tit">快线产品更改费</td>
														<td><span class="price">免费</span><br></td>
													</tr>
												</tbody>
											</table>
											<table class="table-and">
												<tbody>
													<tr>
														<th class="tit">备注</th>
														<td><div>
																舱位（Y）：票面
																<dfn>¥</dfn>
																1620/人。
															</div></td>
													</tr>
												</tbody>
											</table>
											<div class="luggage-limit f-orange">*携程不加收任何退改服务费，具体费用按航空公司规定收取</div>
										</div>
									</div>
								</div>
							</div>
							<span class="abbr">行李额</span>
							<div id="luggageInfo_0_1" class="tooltip"
								style="display: none; margin: 0 20px; width: 150px">
								免费托运行李额20KG。</div>
						</div>
						<div class="corner">
							<span class="price"><dfn>¥</dfn>1620</span><span class="num">x
								1</span>
						</div>
					</div>
					<div class="cost-row">
						<div class="cost-tit">
							<span>机建</span>
							<div id="X-TGTable_0_2" class="tooltip tooltip-table"
								style="display: none; width: auto; font-size: 12px"></div>
						</div>
						<div class="corner">
							<span class="price"><dfn>¥</dfn>100</span><span class="num">x
								1</span>
						</div>
					</div>
					<div class="cost-row">
						<div class="cost-tit">
							<span>燃油税</span>
							<div id="X-TGTable_0_3" class="tooltip tooltip-table"
								style="display: none; width: auto; font-size: 12px"></div>
						</div>
						<div class="corner">免费</div>
					</div>
				</div>
				<div class="total-price">
					<span id="J_totalPrice"><dfn>¥</dfn>3340</span>
				</div>
			</div>
		</div>
		<div id="J_TGQCompareInfo">
			<div id="TGCompareTable" style="display: none">
				<div class="tab-menu">
					<a href="javascript:void(0);" class="current"
						onclick="$(this).parent().find('.current').removeClass('current');$(this).addClass('current');$('#TGCompareTable_1').show();$('#TGCompareTable_2').hide();">去程</a>
					<a href="javascript:void(0);"
						onclick="$(this).parent().find('.current').removeClass('current');$(this).addClass('current');$('#TGCompareTable_2').show();$('#TGCompareTable_1').hide();">返程</a>
				</div>
				<div id="TGCompareTable_1" class="tab-cont">
					<table class="">
						<tbody>
							<tr>
								<th rowspan="4" class="tit">成人</th>
								<td class="sub-tit"></td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<th class="col-1" style="width: 100px;">2019年01月09日09:30前</th>
												<th class="col-1" style="width: 100px;">2019年01月14日09:30前</th>
												<th class="col-1" style="width: 100px;">2019年01月16日05:30前</th>
												<th class="col-1" style="width: 100px;">2019年01月16日05:30后</th>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">退票费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>81</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>81</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>162</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>324</span>/人</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">同舱改期费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;">免费</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>81</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>81</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>162</span>/人</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">签转条件</td>
								<td>可以签转</td>
							</tr>
						</tbody>
					</table>
					<table class="table-and">
						<tbody>
							<tr>
								<th class="tit">备注</th>
								<td><div>
										舱位（Y）：票面
										<dfn>¥</dfn>
										1620/人。
									</div></td>
							</tr>
						</tbody>
					</table>
					<div class="luggage-limit f-orange">*携程不加收任何退改服务费，具体费用按航空公司规定收取</div>
					<table class="table-and">
						<tbody>
							<tr>
								<th rowspan="4" class="tit">儿童</th>
								<td class="sub-tit"></td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<th class="col-1" style="width: 100px;">2019年01月09日09:30前</th>
												<th class="col-1" style="width: 100px;">2019年01月14日09:30前</th>
												<th class="col-1" style="width: 100px;">2019年01月16日05:30前</th>
												<th class="col-1" style="width: 100px;">2019年01月16日05:30后</th>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">退票费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>41</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>41</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>81</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>162</span>/人</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">同舱改期费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;">免费</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>41</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>41</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>81</span>/人</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">签转条件</td>
								<td>可以签转</td>
							</tr>
						</tbody>
					</table>
					<table class="table-and">
						<tbody>
							<tr>
								<th class="tit">备注</th>
								<td><div>
										舱位（Y）：票面
										<dfn>¥</dfn>
										1620/人。
									</div></td>
							</tr>
						</tbody>
					</table>
					<div class="luggage-limit f-orange">*携程不加收任何退改服务费，具体费用按航空公司规定收取</div>
				</div>
				<div id="TGCompareTable_2" class="tab-cont" style="display: none">
					<table class="">
						<tbody>
							<tr>
								<th rowspan="4" class="tit">成人</th>
								<td class="sub-tit"></td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<th class="col-1" style="width: 100px;">2019年01月25日16:20前</th>
												<th class="col-1" style="width: 100px;">2019年01月25日16:20后</th>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">退票费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>162</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>243</span>/人</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">同舱改期费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;">免费</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>162</span>/人</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">签转条件</td>
								<td>允许签转，如变更后承运人适用票价高于国航票价，需补齐差额后进行变更，若低于国航票价，差额不退。</td>
							</tr>
						</tbody>
					</table>
					<table class="table-and">
						<tbody>
							<tr>
								<th class="tit">备注</th>
								<td><div>
										舱位（Y）：票面
										<dfn>¥</dfn>
										1620/人。
									</div></td>
							</tr>
						</tbody>
					</table>
					<div class="luggage-limit f-orange">*携程不加收任何退改服务费，具体费用按航空公司规定收取</div>
					<table class="table-and">
						<tbody>
							<tr>
								<th rowspan="4" class="tit">儿童</th>
								<td class="sub-tit"></td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<th class="col-1" style="width: 100px;">2019年01月25日16:20前</th>
												<th class="col-1" style="width: 100px;">2019年01月25日16:20后</th>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">退票费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>81</span>/人</td>
												<td class="col-1" style="width: 100px;"><span
													class="price"><dfn>¥</dfn>122</span>/人</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">同舱改期费</td>
								<td class="sub-table"><table>
										<tbody>
											<tr>
												<td class="col-1" style="width: 100px;">免费</td>
												<td class="col-1" style="width: 100px;">免费</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td class="sub-tit">签转条件</td>
								<td>允许签转，如变更后承运人适用票价高于国航票价，需补齐差额后进行变更，若低于国航票价，差额不退。</td>
							</tr>
						</tbody>
					</table>
					<table class="table-and">
						<tbody>
							<tr>
								<th class="tit">备注</th>
								<td>备注
									<div>
										舱位（Y）：票面
										<dfn>¥</dfn>
										1620/人。
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="luggage-limit f-orange">*携程不加收任何退改服务费，具体费用按航空公司规定收取</div>
				</div>
			</div>
		</div>
	</div>


</body>



</html>