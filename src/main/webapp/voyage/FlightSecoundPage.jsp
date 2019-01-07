<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.sf-lnse.sf-search .pills>.subtitle {
    display: inline-block;
    font-size: 16px;
    font-weight: 700;
    padding: 5px;
    margin: 0 5px 5px 10px;
}
.sf-lnse.sf-search .pills>.tabs {
    display: inline-block;
    border: none;
}



</style>


</head>







<body>
	<div class="pills">
		<!-- 機票 開始 -->
		<p class="subtitle">國際機票查詢</p>
		<ul class="tabs">
			<li class="active"><i class="ic-ln planeairplanef"></i>國際機票預訂</li>
			<li class="d-no"><i class="ic-ln toolchinaf"></i>大陸國內機票</li>
		</ul>
		<div class="ctns fcl_lnls">
			<!-- 國際機票預訂 開始 -->
			<div class="panl labels active" data-panl="flightsInternational">
				<div class="group fm-grp">
					<div class="cell lh30 pl5">
						<label class="fm-rdo pr10"> <input name="Rtow"
							data-save="Rtow" type="radio" value="0" checked=""> <span
							class="indicator"></span>單程
						</label> <label class="fm-rdo pr10"> <input name="Rtow"
							data-save="Rtow" type="radio" value="1"> <span
							class="indicator"></span>來回
						</label> <label class="fm-rdo"> <input name="Rtow"
							data-save="Rtow" type="radio" value="3"> <span
							class="indicator"></span>多個目的地
						</label>
					</div>
				</div>
				<!-- 單程.來回共用 開始 -->
				<div class="panl fm-grp" name="fcOneWayRoundTripWrap">
					<div class="group cl">
						<label class="req em6">出發地</label>
						<div class="cell sz6 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id=""
								placeholder="請輸入國家/城市/機場" data-toggle="dtm-lnls"
								name="sDepartureCity" data-required="true"
								data-reqstring="請輸入 / 選擇出發地" data-save="multiDestDeparture1"
								data-savecustom="countryname,countrycode,cityname,citycode,airportname,airportcode,intvalue,label,iscity"
								autocomplete="off"
								data-dtm-lnsl="{'source':'/WebSearch/Scripts/GetArrayTkt6.ashx','menuSource':'/_shared/bundle/js/searchEngine/flightsInternationalDestinationCsutomMenu.js','bfmQuery':true,'moreString':'更多出發地，請輸入關鍵字','toggleCustomMenu':true,'autoCategory':true,'dataTemplate':'flightsInternational','region':false,'removeStringOnMenu':'-\u005cw.+','disabled':2,'more':true,'removeNotWordStringWhenSearch':false,'runCustomMenuRenderer':true,'customMenuLineOrder':['_9','_5','_6','_7','_3','_1','_2']}"
								data-intvalue="台北-Taipei(TPE)"
								data-label="中華民國(TW)-台北-Taipei(TPE)" data-iscity="true"
								data-cityname="台北-Taipei" data-citycode="TPE"
								data-countryname="中華民國" data-countrycode="TW"
								data-airportname="_" data-airportcode="_"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
							<!-- <span class="addon">
                                    <button class="seic icon-round-times"></button>
                                </span> -->
						</div>
						<label class="req em7 pl1">目的地</label>
						<div class="cell sz6 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id=""
								placeholder="請輸入國家/城市/機場" data-toggle="dtm-lnls"
								name="sDestinationCity" data-required="true"
								data-reqstring="請輸入 / 選擇目的地" data-save="multiDestDestination1"
								data-savecustom="countryname,countrycode,cityname,citycode,airportname,airportcode,intvalue,label,iscity"
								autocomplete="off"
								data-dtm-lnsl="{'source':'/WebSearch/Scripts/GetArrayTkt6.ashx', 'bfmQuery':true, 'autoCategory':true,'dataTemplate':'flightsInternational','more':true,'removeNotWordStringWhenSearch':false,'toggleCustomMenu':true,'menuSource':'/_shared/bundle/js/searchEngine/flightsInternationalDestinationCsutomMenu.js','runCustomMenuRenderer':true,'customMenuLineOrder':['_5','_6','_7','_3','_1','_2','_4','_9']}"
								data-countryname="中國大陸" data-countrycode="CN"
								data-cityname="廈門-福建省-XIAMEN" data-citycode="XMN"
								data-airportname="_" data-airportcode="_"
								data-intvalue="廈門-福建省-XIAMEN(XMN)"
								data-label="中國大陸(CN)-廈門-福建省-XIAMEN(XMN)" data-iscity="true"
								data-target="0"><span class="addon"
								style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
					</div>
				</div>
				<!-- 單程.來回共用 結束 -->
				<!-- 單程 開始 -->
				<div class="panl fm-grp" name="fcOneWayWrap" style="display: none;">
					<div class="group cl">
						<label class="req em6">出發日期</label>
						<div class="cell sz3-4 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id=""
								placeholder="YYYY/MM/DD" data-toggle="cy-ln"
								name="sOneWayFromDate" data-required="true"
								data-reqstring="請選擇出發日期" data-save="fromDate" data-mindate="1"
								data-maxdate="361" data-togglealert="true"
								data-beforeminalert="出發日期起日不得小於今日" autocomplete="off"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<div class="cell pl10">
							<!-- <label class="fm-chk pr5">
                                                <input name="sPlusMinus3Days" type="checkbox" id="sPlusMinus3Days">
                                                <span class="indicator"></span>比較前後3天票價
                                            </label> -->
							<label class="fm-chk pr5"> <input name="sDirectFlight"
								type="checkbox" id="sDirectFlight" data-save="NoTrans">
								<span class="indicator"></span>直飛(含中停)
							</label> <label class="fm-chk"> <input name="sHaveSeat"
								type="checkbox" id="sHaveSeat" data-save="OnlyAvailableSeat">
								<span class="indicator"></span>只顯示有機位的航班
							</label>
						</div>
					</div>
				</div>
				<!-- 單程 結束 -->
				<!-- 來回 開始 -->
				<div class="panl fm-grp" name="fcRoundTripWrap"
					style="display: block;">
					<div class="group cl">
						<label class="req em6">旅遊期間</label>
						<div class="cell">
							<label class="fm-rdo"> <input name="sRoundTripType"
								type="radio" value="COMFIRMED" data-save="IsConfirmDate"
								checked=""> <span class="indicator"></span>確定出發/回程日期
							</label> <label class="fm-rdo"> <input name="sRoundTripType"
								type="radio" value="NOT_COMFIRMED" data-save="IsConfirmDate">
								<span class="indicator"></span>不確定出發日期
							</label>
						</div>
					</div>
					<div class="group cl" id="comfirmed" style="display: table;">
						<label class="req em6">出發日期</label>
						<div class="cell sz3-4 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id=""
								placeholder="YYYY/MM/DD" data-toggle="cy-ln"
								name="sRoundTripTypeComfirmedFromDate" data-required="true"
								data-reqstring="請選擇出發日期" data-save="fromDate" data-mindate="1"
								data-maxdate="361" data-togglealert="true"
								data-beforeminalert="出發日期起日不得小於今日" autocomplete="off"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<label class="req em6">回程日期</label>
						<div class="cell sz3-4 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id=""
								placeholder="YYYY/MM/DD" data-toggle="cy-ln"
								name="sRoundTripTypeComfirmedToDate" data-required="true"
								data-reqstring="請選擇回程日期" data-togglealert="true"
								data-beforeminalert="回程日期起日不得小於今日" data-save="toDate"
								data-mindate="1" data-maxdate="361" autocomplete="off"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<div class="cell pl10">
							<!-- <label class="fm-chk pr5">
                                                <input name="sPlusMinus3Days" type="checkbox" id="sPlusMinus3Days">
                                                <span class="indicator"></span>比較前後3天票價
                                            </label> -->
							<label class="fm-chk pr5"> <input name="sDirectFlight"
								type="checkbox" id="sDirectFlight"> <span
								class="indicator"></span>直飛(含中停)
							</label> <label class="fm-chk"> <input name="sHaveSeat"
								type="checkbox" data-save="OnlyAvailableSeat" id="sHaveSeat">
								<span class="indicator"></span>只顯示有機位的航班
							</label>
						</div>
					</div>
					<div class="group cl" id="notcomfirmed" style="display: none;">
						<label class="req em6" data-save="stayDays">停留天數</label>
						<div class="cell sz2">
							<select class="fm-ctrl sm caret"
								name="sRoundTripTypeNotComfirmedStopDays" data-save="stayDays">
								<option value="1">1天</option>
								<option value="2">2天</option>
								<option value="3">3天</option>
								<option value="4">4天</option>
								<option value="5">5天</option>
								<option value="6">6天</option>
								<option value="7" selected="selected">7天</option>
								<option value="8">8天</option>
								<option value="9">9天</option>
								<option value="10">10天</option>
								<option value="11">11天</option>
								<option value="12">12天</option>
								<option value="13">13天</option>
								<option value="14">14天</option>
								<option value="15">15天</option>
								<option value="16">16天</option>
							</select>
						</div>
						<label class="em7">預計出發日期</label>
						<div class="cell sz3-4 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id=""
								placeholder="YYYY/MM/DD" data-toggle="cy-ln"
								name="sRoundTripTypeNotComfirmedFromDate" data-save="expectDate"
								data-mindate="1" data-maxdate="225" data-togglealert="true"
								data-beforeminalert="預計出發日不得小於今日" autocomplete="off"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<div class="cell pl10">
							<label class="fm-chk"> <input name="sDirectFlight"
								type="checkbox" id="sDirectFlight"> <span
								class="indicator"></span>直飛(含中停)
							</label>
						</div>
					</div>
				</div>
				<!-- 來回 結束 -->
				<!-- 多目的地 開始 -->
				<div class="panl fm-grp" name="fcMultiDestWrap"
					style="display: none;">
					<div class="group cl" name="dataMulti">
						<label class="req em5">出發地</label>
						<div class="cell sz5 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id="multiDestDeparture1"
								placeholder="請輸入國家/城市/機場" data-toggle="dtm-lnls"
								data-required="true" data-reqstring="請輸入 / 選擇出發地"
								data-save="multiDestDeparture1"
								data-savecustom="countryname,countrycode,cityname,citycode,airportname,airportcode,intvalue,label,iscity"
								autocomplete="off"
								data-dtm-lnsl="{'source':'/WebSearch/Scripts/GetArrayTkt6.ashx', 'bfmQuery':true, 'autoCategory':true,'dataTemplate':'flightsInternational','removeNotWordStringWhenSearch':false,'customMenuLineOrder':['_5','_6','_7','_3','_1','_2','_4','_9']}"
								data-intvalue="台北-Taipei(TPE)"
								data-label="中華民國(TW)-台北-Taipei(TPE)" data-iscity="true"
								data-cityname="台北-Taipei" data-citycode="TPE"
								data-countryname="中華民國" data-countrycode="TW"
								data-airportname="_" data-airportcode="_"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<label class="req em5">目的地</label>
						<div class="cell sz5 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id="multiDestDestination1"
								placeholder="請輸入國家/城市/機場" data-toggle="dtm-lnls"
								data-required="true" data-reqstring="請輸入 / 選擇出發地"
								data-save="multiDestDestination1"
								data-savecustom="countryname,countrycode,cityname,citycode,airportname,airportcode,intvalue,label,iscity"
								autocomplete="off"
								data-dtm-lnsl="{'source':'/WebSearch/Scripts/GetArrayTkt6.ashx', 'bfmQuery':true, 'autoCategory':true,'dataTemplate':'flightsInternational','removeNotWordStringWhenSearch':false,'customMenuLineOrder':['_5','_6','_7','_3','_1','_2','_4','_9']}"
								data-countryname="中國大陸" data-countrycode="CN"
								data-cityname="廈門-福建省-XIAMEN" data-citycode="XMN"
								data-airportname="_" data-airportcode="_"
								data-intvalue="廈門-福建省-XIAMEN(XMN)"
								data-label="中國大陸(CN)-廈門-福建省-XIAMEN(XMN)" data-iscity="true"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<label class="req em6">出發日期</label>
						<div class="cell sz3-4 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id="multiDestDate1"
								placeholder="YYYY/MM/DD" data-toggle="cy-ln"
								data-required="true" data-reqstring="請選擇出發日期"
								data-save="multiDestDate1" data-mindate="1" data-maxdate="361"
								data-togglealert="true" data-beforeminalert="出發日期起日不得小於今日"
								autocomplete="off"><span class="addon"
								style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
					</div>
					<div class="group cl" name="dataMulti">
						<label class="req em5">出發地</label>
						<div class="cell sz5 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id="multiDestDeparture2"
								placeholder="請輸入國家/城市/機場" data-toggle="dtm-lnls"
								data-required="true" data-reqstring="請輸入 / 選擇出發地"
								data-save="multiDestDeparture2"
								data-savecustom="countryname,countrycode,cityname,citycode,airportname,airportcode,intvalue,label,iscity"
								autocomplete="off"
								data-dtm-lnsl="{'source':'/WebSearch/Scripts/GetArrayTkt6.ashx', 'bfmQuery':true, 'autoCategory':true,'dataTemplate':'flightsInternational','removeNotWordStringWhenSearch':false,'customMenuLineOrder':['_5','_6','_7','_3','_1','_2','_4','_9']}"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<label class="req em5">目的地</label>
						<div class="cell sz5 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id="multiDestDestination2"
								placeholder="請輸入國家/城市/機場" data-toggle="dtm-lnls"
								data-required="true" data-reqstring="請輸入 / 選擇出發地"
								data-save="multiDestDestination2"
								data-savecustom="countryname,countrycode,cityname,citycode,airportname,airportcode,intvalue,label,iscity"
								autocomplete="off"
								data-dtm-lnsl="{'source':'/WebSearch/Scripts/GetArrayTkt6.ashx', 'bfmQuery':true, 'autoCategory':true,'dataTemplate':'flightsInternational','removeNotWordStringWhenSearch':false,'customMenuLineOrder':['_5','_6','_7','_3','_1','_2','_4','_9']}"><span
								class="addon" style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
						<label class="req em6">出發日期</label>
						<div class="cell sz3-4 intg" data-toggle="focusRemove">
							<input type="text" class="fm-ctrl sm" id="multiDestDate2"
								placeholder="YYYY/MM/DD" data-toggle="cy-ln"
								data-required="true" data-reqstring="請選擇出發日期"
								data-save="multiDestDate2" data-mindate="1" data-maxdate="361"
								data-togglealert="true" data-beforeminalert="出發日期起日不得小於今日"
								autocomplete="off"><span class="addon"
								style="display: none;"><button
									class="seic icon-round-times"></button></span>
						</div>
					</div>




					<div class="group cl">
						<div class="cell sz12 pl5">
							<button class="bt_stgp" id="addMultiDest">增加航段</button>
						</div>
					</div>
				</div>
				<!-- 多目的地 結束 -->
				<!-- 單程.來回.多目的地共用 開始 -->
				<div class="panl fm-grp" name="fcAllWrap">
					<div class="group cl" style="">
						<label class="req em6">艙等</label>
						<div class="cell sz2">
							<div class="st_lnls ">
								<select class="st_lnls sm hide" name="sClass"
									data-save="ClsType">

									<option value="0">不限</option>
									<option value="1" selected="selected">經濟艙</option>
									<option value="2">豪華經濟艙</option>
									<option value="3">商務艙</option>
									<option value="5">頭等艙</option>
								</select>
								<div class="st-wrap sm">
									<div class="st-select" tabindex="-1">
										<span class="st-selected" style="color: rgb(68, 68, 68);">經濟艙</span>
									</div>
									<ul class="st-options">
										<li rel="0" class="st-option">不限</li>
										<li rel="1" class="st-option selected">經濟艙</li>
										<li rel="2" class="st-option">豪華經濟艙</li>
										<li rel="3" class="st-option">商務艙</li>
										<li rel="5" class="st-option">頭等艙</li>
									</ul>
								</div>
							</div>
						</div>
						<label class="req txt-right em6">人數</label>
						<div class="cell sz2-3 pr10">
							<div class="st_lnls ">
								<select class="st_lnls sm hide" data-label="大人" data-save="Adt"
									name="sPaxCountAdult">

									<option value="1" selected="selected">1位</option>
									<option value="2">2位</option>
									<option value="3">3位</option>
									<option value="4">4位</option>
									<option value="5">5位</option>
									<option value="6">6位</option>
									<option value="7">7位</option>
									<option value="8">8位</option>
								</select>
								<div class="st-wrap sm">
									<div class="st-select" tabindex="-1">
										<span class="st-label">大人</span><span class="st-selected"
											style="color: rgb(68, 68, 68);">1位</span>
									</div>
									<ul class="st-options">
										<li rel="1" class="st-option selected">1位</li>
										<li rel="2" class="st-option">2位</li>
										<li rel="3" class="st-option">3位</li>
										<li rel="4" class="st-option">4位</li>
										<li rel="5" class="st-option">5位</li>
										<li rel="6" class="st-option">6位</li>
										<li rel="7" class="st-option">7位</li>
										<li rel="8" class="st-option">8位</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="cell sz2-3 pr10">
							<div class="st_lnls ">
								<select class="st_lnls sm hide" data-label="孩童" data-save="Chd"
									name="sPaxCountChild">
									<option value="0" selected="selected">0位</option>
									<option value="1">1位</option>
									<option value="2">2位</option>
									<option value="3">3位</option>
								</select>
								<div class="st-wrap sm">
									<div class="st-select" tabindex="-1">
										<span class="st-label">孩童</span><span class="st-selected"
											style="color: rgb(68, 68, 68);">0位</span>
									</div>
									<ul class="st-options">
										<li rel="0" class="st-option selected">0位</li>
										<li rel="1" class="st-option">1位</li>
										<li rel="2" class="st-option">2位</li>
										<li rel="3" class="st-option">3位</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="cell sz2-3 pr10">
							<div class="st_lnls ">
								<select class="st_lnls sm hide" data-label="嬰兒" data-save="Inf"
									name="sPaxCountInfant">
									<option value="0" selected="selected">0位</option>
									<option value="1">1位</option>
									<option value="2">2位</option>
									<option value="3">3位</option>
								</select>
								<div class="st-wrap sm">
									<div class="st-select" tabindex="-1">
										<span class="st-label">嬰兒</span><span class="st-selected"
											style="color: rgb(68, 68, 68);">0位</span>
									</div>
									<ul class="st-options">
										<li rel="0" class="st-option selected">0位</li>
										<li rel="1" class="st-option">1位</li>
										<li rel="2" class="st-option">2位</li>
										<li rel="3" class="st-option">3位</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="cell pr10">
							<a data-toggle="pp_ln" data-target="pp_ln0"><i
								class="ic-lnpx info-o"></i></a>
						</div>
						<div class="cell" name="fcMultiDestWrap" style="display: none;">
							<label class="fm-chk em6"> <input name="sDirectFlight"
								type="checkbox" id="sDirectFlight"> <span
								class="indicator"></span>直飛(含中停)
							</label>
						</div>
					</div>
				</div>
				<!-- 單程.來回.多目的地共用 結束 -->
				<!-- 單程.來回共用 開始 -->
				<div class="panl fm-grp d-no" name="fcOneWayRoundTripWrap"
					style="display: block;">
					<div class="group cl">
						<label class="req em6">航空公司</label>
						<div class="cell sz2">
							<div class="st_lnls ">
								<select class="st_lnls sm hide" name="sCarr">
									<option value="0" selected="">不限</option>
								</select>
								<div class="st-wrap sm">
									<div class="st-select" tabindex="-1">
										<span class="st-selected" style="color: rgb(68, 68, 68);">不限</span>
									</div>
									<ul class="st-options">
										<li rel="0" class="st-option selected">不限</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- 單程.來回共用 結束 -->
				<p class="cl tp_lnop sm-14 txt-right m-b-none ">注意事項：確切之機位資訊與含稅總價需待訂單成立後以實際內容為主。</p>
			</div>
			<!-- 國際機票預訂 結束 -->
			<!-- 大陸國內機票 開始 -->
			<div class="panl" data-panl="flightsChina"></div>
			<!-- 大陸國內機票 結束 -->
			<div class="submit_wrap pt30">
				<button type="submit">搜尋</button>
			</div>
		</div>
		<!-- 機票 結束 -->
	</div>
</body>
</html>