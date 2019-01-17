<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/trip.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/flight/xianqi/css/passager.css'/>" />
<%-- <link rel="stylesheet" href="<c:url value='/voyage/css/open-iconic-bootstrap.min.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/animate.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/owl.carousel.min.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/owl.theme.default.min.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/magnific-popup.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/aos.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/ionicons.min.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/bootstrap-datepicker.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/jquery.timepicker.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/flaticon.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/icomoon.css' />"> --%>
<%--  <link rel="stylesheet" href="<c:url value='/voyage/css/style.css' />"> --%>
 <link href="<c:url value='/voyage/css/jquery-ui.css' />" rel="stylesheet" type="text/css">
	
<style>
/* .ctriplogo a { */
/* 	display:inline; */
/*     width: 126px; */
/*     line-height: 4.5em; */
/*     overflow: hidden; */
/* } */
</style>
<script type="text/javascript">
$(document).ready(function() {
	var Today=new Date();
	
	$('#dealDate').val(Today);
// 	alert(Today);
})


</script>
	
</head>

<body>

	<div class="header-wrapper">
		<div class="header" id="J_hd">
			<div class="ctriplogo">
<!-- 			class="ctriplogo" -->
				<a href="  <c:url value='/voyage/index.jsp'/>"><img alt="" width="150px" src="<c:url value='/voyage/images/TTT-black.png'/>"></a>
			</div>
			<div class="order-progress">
				<div class="prog-step prog-current">
					<div class="progress-line"></div>
					<h4>
						乘机信息<i class="ico ico-step"></i>
					</h4>
				</div>
<!-- 				<div class="prog-step"> -->
<!-- 					<div class="progress-line"> -->
<!-- 						<h4>增值服务</h4> -->
<!-- 					</div> -->
<!-- 				</div> -->
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
<div style="width: 1200px;
    margin: 0 auto;
    padding-left: calc(100vw - 100%);">
	<div style="width: 63%;float:left">
	<div class="passage-info-box">
        <div class="team-meet hidden-xs">
            <h4 class="passage-info-title">旅客資料<span>(英文姓名輸入方式有誤,會產生無效訂位及開票,將造成您的損失,如有疑問,請洽客服人員)</span></h4>
        </div>
		
        <div class="form-horizontal passage-info-form" novalidate="novalidate" role="form" >
            <div class="totalperiod">
                <span>旅客 1(成人)</span>
            </div>
            <input type="hidden" id="AgeType0" name="AgeType0" value="0">
            <div class="form-group">
                <label for="Gender0" class="col-md-1 col-xs-3 passage-info-label ">
                    稱謂
                    <input hidden="hidden" name="AgeType0" value="0">
                </label>
                <div class="col-md-3 col-xs-9">
                    <select data-val="true" data-val-required="請輸入性別" id="Gender0" name="Gender0" class="form-control order_if_select" onchange="setConnector();">
                        <option value="">
                            請選擇 
                        </option>
                        <option value="MR">
                            先生 
                        </option>
                        
                        <option value="MS">
                            小姐 
                        </option>
                    </select>
                    <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="Gender0">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="name" class="passage-info-label col-md-1 col-xs-3">
                    姓氏<span class="visible-xs">(英)</span>
                </label>
                <div class="col-md-4 col-xs-9">
                    
                    <input data-val="true" data-val-required="請輸入姓氏" data-val-regex="姓氏必需為英文" data-val-regex-pattern="^[a-zA-Z ]*$" type="text" id="LastName0" name="LastName0" value="" class="form-control uppercase" placeholder="英文，例如Lee" onchange="setConnector();" autocomplete="off">
                    <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="LastName0">
                    </div>
                </div>
                <div class="col-xs-12 visible-xs"></div>
                <label for="name" class="passage-info-label col-md-1 col-xs-3 margin-top-15">
                    名字<span class="visible-xs">(英)</span>
                </label>
                <div class="col-md-4 col-xs-9 margin-top-15">
                    
                    <input data-val="true" data-val-required="請輸入名字" data-val-regex="名字必需為英文" data-val-regex-pattern="^[a-zA-Z ]*$" type="text" id="FirstName0" name="FirstName0" value="" class="form-control uppercase" placeholder="英文，例如TaiWei" onchange="setConnector();" autocomplete="off">
                    <span class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="FirstName0">
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label for="DateOfBirth0" class="passage-info-label col-md-1 col-xs-3">
                    生日
                    
                </label>
                <div id="credit_date" class="col-md-6 col-xs-9">
                    <div class="input-group date certificates_effective">
                        <input id="DateOfBirth0" name="DateOfBirth0" err-required="請輸入日期" err-invalid="錯誤日期格式" err-range="錯誤日期範圍" class="form-control new-date" datef="1869/01/27" datet="2007/01/27" value="" placeholder="" type="text" autocomplete="off" style="display: none;"><div class="new-date-panel"><div class="input"><select class="form-control year"><option value="">年</option><option value="2007">2007年</option><option value="2006">2006年</option><option value="2005">2005年</option><option value="2004">2004年</option><option value="2003">2003年</option><option value="2002">2002年</option><option value="2001">2001年</option><option value="2000">2000年</option><option value="1999">1999年</option><option value="1998">1998年</option><option value="1997">1997年</option><option value="1996">1996年</option><option value="1995">1995年</option><option value="1994">1994年</option><option value="1993">1993年</option><option value="1992">1992年</option><option value="1991">1991年</option><option value="1990">1990年</option><option value="1989">1989年</option><option value="1988">1988年</option><option value="1987">1987年</option><option value="1986">1986年</option><option value="1985">1985年</option><option value="1984">1984年</option><option value="1983">1983年</option><option value="1982">1982年</option><option value="1981">1981年</option><option value="1980">1980年</option><option value="1979">1979年</option><option value="1978">1978年</option><option value="1977">1977年</option><option value="1976">1976年</option><option value="1975">1975年</option><option value="1974">1974年</option><option value="1973">1973年</option><option value="1972">1972年</option><option value="1971">1971年</option><option value="1970">1970年</option><option value="1969">1969年</option><option value="1968">1968年</option><option value="1967">1967年</option><option value="1966">1966年</option><option value="1965">1965年</option><option value="1964">1964年</option><option value="1963">1963年</option><option value="1962">1962年</option><option value="1961">1961年</option><option value="1960">1960年</option><option value="1959">1959年</option><option value="1958">1958年</option><option value="1957">1957年</option><option value="1956">1956年</option><option value="1955">1955年</option><option value="1954">1954年</option><option value="1953">1953年</option><option value="1952">1952年</option><option value="1951">1951年</option><option value="1950">1950年</option><option value="1949">1949年</option><option value="1948">1948年</option><option value="1947">1947年</option><option value="1946">1946年</option><option value="1945">1945年</option><option value="1944">1944年</option><option value="1943">1943年</option><option value="1942">1942年</option><option value="1941">1941年</option><option value="1940">1940年</option><option value="1939">1939年</option><option value="1938">1938年</option><option value="1937">1937年</option><option value="1936">1936年</option><option value="1935">1935年</option><option value="1934">1934年</option><option value="1933">1933年</option><option value="1932">1932年</option><option value="1931">1931年</option><option value="1930">1930年</option><option value="1929">1929年</option><option value="1928">1928年</option><option value="1927">1927年</option><option value="1926">1926年</option><option value="1925">1925年</option><option value="1924">1924年</option><option value="1923">1923年</option><option value="1922">1922年</option><option value="1921">1921年</option><option value="1920">1920年</option><option value="1919">1919年</option><option value="1918">1918年</option><option value="1917">1917年</option><option value="1916">1916年</option><option value="1915">1915年</option><option value="1914">1914年</option><option value="1913">1913年</option><option value="1912">1912年</option><option value="1911">1911年</option><option value="1910">1910年</option><option value="1909">1909年</option><option value="1908">1908年</option><option value="1907">1907年</option><option value="1906">1906年</option><option value="1905">1905年</option><option value="1904">1904年</option><option value="1903">1903年</option><option value="1902">1902年</option><option value="1901">1901年</option><option value="1900">1900年</option><option value="1899">1899年</option><option value="1898">1898年</option><option value="1897">1897年</option><option value="1896">1896年</option><option value="1895">1895年</option><option value="1894">1894年</option><option value="1893">1893年</option><option value="1892">1892年</option><option value="1891">1891年</option><option value="1890">1890年</option><option value="1889">1889年</option><option value="1888">1888年</option><option value="1887">1887年</option><option value="1886">1886年</option><option value="1885">1885年</option><option value="1884">1884年</option><option value="1883">1883年</option><option value="1882">1882年</option><option value="1881">1881年</option><option value="1880">1880年</option><option value="1879">1879年</option><option value="1878">1878年</option><option value="1877">1877年</option><option value="1876">1876年</option><option value="1875">1875年</option><option value="1874">1874年</option><option value="1873">1873年</option><option value="1872">1872年</option><option value="1871">1871年</option><option value="1870">1870年</option><option value="1869">1869年</option></select><select class="form-control month"><option value="">月</option><option value="1">1月</option><option value="2">2月</option><option value="3">3月</option><option value="4">4月</option><option value="5">5月</option><option value="6">6月</option><option value="7">7月</option><option value="8">8月</option><option value="9">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option></select><select class="form-control day"><option value="">日</option><option value="1">1日</option><option value="2">2日</option><option value="3">3日</option><option value="4">4日</option><option value="5">5日</option><option value="6">6日</option><option value="7">7日</option><option value="8">8日</option><option value="9">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option></select></div><div class="errortext" style="display: none;"></div></div>

        
        
    </div>
   
   
                </div>
            </div>
            <div class="form-group">
                <label for="tel3" class="passage-info-label col-md-1 col-xs-3">
                    國籍
                </label>
                <div class="col-md-4 col-xs-9">
                    <select id="Nationality0" name="Nationality0" class="form-control font15 order_if_select valid" onchange="ifNeedMoreInfor(this)" data-val="true" data-val-required="請輸選擇國籍">
                            <option value="">請選擇</option>
                                        <option value="AD"> Andorra </option>
                                        <option value="TF"> French Southern Territories </option>
                                        <option value="IM"> Isle Of Man </option>
                                        <option value="XK"> Kosovo </option>
                                        <option value="OM"> Oman Sultanate Of </option>
                                        <option value="BL"> St Barthelemy </option>
                                        <option value="MF"> St Martin </option>
                                        <option value="PS"> State of Palestine </option>
                                        <option value="TK"> Tokelau </option>
                                        <option value="VI"> Us Virgin Isalnds </option>
                                        <option value="TT"> 千里達及托巴哥 </option>
                                        <option value="TR"> 土耳其 </option>
                                        <option value="TC"> 土克斯及開科斯群島 </option>
                                        <option value="TM"> 土庫曼 </option>
                                        <option value="BT"> 不丹 </option>
                                        <option value="CF"> 中非共和國 </option>
                                        <option value="CN"> 中國大陸 </option>
                                        <option value="DK"> 丹麥 </option>
                                        <option value="EC"> 厄瓜多 </option>
                                        <option value="ER"> 厄利垂亞 </option>
                                        <option value="PG"> 巴布亞新幾內亞 </option>
                                        <option value="BR"> 巴西 </option>
                                        <option value="BB"> 巴貝多 </option>
                                        <option value="PY"> 巴拉圭 </option>
                                        <option value="BH"> 巴林 </option>
                                        <option value="BS"> 巴哈馬 </option>
                                        <option value="PA"> 巴拿馬 </option>
                                        <option value="PK"> 巴基斯坦 </option>
                                        <option value="JP"> 日本 </option>
                                        <option value="BE"> 比利時 </option>
                                        <option value="JM"> 牙買加 </option>
                                        <option value="IL"> 以色列 </option>
                                        <option value="CA"> 加拿大 </option>
                                        <option value="GA"> 加彭 </option>
                                        <option value="QA"> 卡達 </option>
                                        <option value="CU"> 古巴 </option>
                                        <option value="CC"> 可可斯群島 </option>
                                        <option value="TW" selected="selected"> 台灣 </option>
                                        <option value="SZ"> 史瓦濟蘭 </option>
                                        <option value="NE"> 尼日 </option>
                                        <option value="NI"> 尼加拉瓜 </option>
                                        <option value="NP"> 尼泊爾 </option>
                                        <option value="BF"> 布吉納法索 </option>
                                        <option value="BV"> 布威島 </option>
                                        <option value="GT"> 瓜地馬拉 </option>
                                        <option value="WF"> 瓦利斯及福杜納群島 </option>
                                        <option value="GM"> 甘比亞 </option>
                                        <option value="BY"> 白俄羅斯 </option>
                                        <option value="PN"> 皮特康 </option>
                                        <option value="LT"> 立陶宛 </option>
                                        <option value="IQ"> 伊拉克 </option>
                                        <option value="IR"> 伊朗 </option>
                                        <option value="IS"> 冰島 </option>
                                        <option value="LI"> 列支敦斯登 </option>
                                        <option value="HU"> 匈牙利 </option>
                                        <option value="ID"> 印尼 </option>
                                        <option value="IN"> 印度 </option>
                                        <option value="DJ"> 吉布地 </option>
                                        <option value="KI"> 吉里巴斯 </option>
                                        <option value="KG"> 吉爾吉斯 </option>
                                        <option value="TV"> 吐瓦魯 </option>
                                        <option value="DM"> 多米尼克 </option>
                                        <option value="DO"> 多明尼加共和國 </option>
                                        <option value="TG"> 多哥 </option>
                                        <option value="AI"> 安圭拉 </option>
                                        <option value="AG"> 安地卡及巴布達 </option>
                                        <option value="AO"> 安哥拉 </option>
                                        <option value="BM"> 百慕達 </option>
                                        <option value="ET"> 衣索比亞 </option>
                                        <option value="ES"> 西班牙 </option>
                                        <option value="EH"> 西撒哈拉 </option>
                                        <option value="HR"> 克羅埃西亞 </option>
                                        <option value="SJ"> 冷岸及央棉群島 </option>
                                        <option value="LY"> 利比亞 </option>
                                        <option value="HN"> 宏都拉斯 </option>
                                        <option value="GR"> 希臘 </option>
                                        <option value="BN"> 汶萊 </option>
                                        <option value="SA"> 沙烏地阿拉伯 </option>
                                        <option value="BZ"> 貝里斯 </option>
                                        <option value="BJ"> 貝南 </option>
                                        <option value="GQ"> 赤道幾內亞 </option>
                                        <option value="ZW"> 辛巴威 </option>
                                        <option value="AM"> 亞美尼亞 </option>
                                        <option value="SH"> 亞森欣島/聖 赫勒拿島 </option>
                                        <option value="AZ"> 亞塞拜然 </option>
                                        <option value="TZ"> 坦尚尼亞 </option>
                                        <option value="NG"> 奈及利亞 </option>
                                        <option value="VE"> 委內瑞拉 </option>
                                        <option value="BD"> 孟加拉 </option>
                                        <option value="ZM"> 尚比亞 </option>
                                        <option value="PW"> 帛琉 </option>
                                        <option value="LV"> 拉脫維亞 </option>
                                        <option value="TO"> 東加 </option>
                                        <option value="TL"> 東帝汶 </option>
                                        <option value="FR"> 法國 </option>
                                        <option value="FO"> 法羅群島 </option>
                                        <option value="GF"> 法屬圭亞那 </option>
                                        <option value="PF"> 法屬玻里尼西亞 </option>
                                        <option value="BA"> 波士尼亞赫塞哥維那 </option>
                                        <option value="BW"> 波札那 </option>
                                        <option value="PR"> 波多黎各 </option>
                                        <option value="PL"> 波蘭 </option>
                                        <option value="GI"> 直布羅陀 </option>
                                        <option value="KE"> 肯亞 </option>
                                        <option value="FI"> 芬蘭 </option>
                                        <option value="AE"> 阿拉伯聯合大公國 </option>
                                        <option value="AR"> 阿根廷 </option>
                                        <option value="AF"> 阿富汗 </option>
                                        <option value="AW"> 阿路巴 </option>
                                        <option value="DZ"> 阿爾及利亞 </option>
                                        <option value="AL"> 阿爾巴尼亞 </option>
                                        <option value="RU"> 俄羅斯聯邦 </option>
                                        <option value="BG"> 保加利亞 </option>
                                        <option value="ZA"> 南非 </option>
                                        <option value="GS"> 南喬治亞及南三明治群島 </option>
                                        <option value="AQ"> 南極洲 </option>
                                        <option value="SS"> 南蘇丹 </option>
                                        <option value="KZ"> 哈薩克 </option>
                                        <option value="TD"> 查德 </option>
                                        <option value="KH"> 柬埔寨 </option>
                                        <option value="CK"> 柯克群島 </option>
                                        <option value="BO"> 玻利維亞 </option>
                                        <option value="KW"> 科威特 </option>
                                        <option value="TN"> 突尼西亞 </option>
                                        <option value="JO"> 約旦 </option>
                                        <option value="US"> 美國 </option>
                                        <option value="UM"> 美國外島 </option>
                                        <option value="AS"> 美屬薩摩亞 </option>
                                        <option value="GB"> 英國 </option>
                                        <option value="IO"> 英屬印度洋領土 </option>
                                        <option value="VG"> 英屬維爾京群島 </option>
                                        <option value="MR"> 茅利塔尼亞 </option>
                                        <option value="GH"> 迦納 </option>
                                        <option value="HK"> 香港 </option>
                                        <option value="CG"> 剛果 </option>
                                        <option value="CD"> 剛果民主共和國 </option>
                                        <option value="CO"> 哥倫比亞 </option>
                                        <option value="CR"> 哥斯大黎加 </option>
                                        <option value="GP"> 哥德普洛 </option>
                                        <option value="EG"> 埃及 </option>
                                        <option value="CW"> 庫拉索島 </option>
                                        <option value="NO"> 挪威 </option>
                                        <option value="GG"> 根息 </option>
                                        <option value="GL"> 格陵蘭 </option>
                                        <option value="GD"> 格瑞那達 </option>
                                        <option value="TH"> 泰國 </option>
                                        <option value="HT"> 海地 </option>
                                        <option value="UG"> 烏干達 </option>
                                        <option value="UA"> 烏克蘭 </option>
                                        <option value="UY"> 烏拉圭 </option>
                                        <option value="UZ"> 烏茲別克 </option>
                                        <option value="RE"> 留尼旺 </option>
                                        <option value="PE"> 秘魯 </option>
                                        <option value="NA"> 納米比亞 </option>
                                        <option value="NZ"> 紐西蘭 </option>
                                        <option value="NU"> 紐威島 </option>
                                        <option value="SO"> 索馬利亞 </option>
                                        <option value="SB"> 索羅門群島 </option>
                                        <option value="MQ"> 馬丁尼克 </option>
                                        <option value="ML"> 馬利 </option>
                                        <option value="MP"> 馬里安納群島 </option>
                                        <option value="MY"> 馬來西亞 </option>
                                        <option value="MK"> 馬其頓 </option>
                                        <option value="MW"> 馬拉威 </option>
                                        <option value="YT"> 馬約特島 </option>
                                        <option value="MH"> 馬紹爾群島 </option>
                                        <option value="MG"> 馬達加斯加 </option>
                                        <option value="MT"> 馬爾他 </option>
                                        <option value="MV"> 馬爾地夫 </option>
                                        <option value="FM"> 密克羅尼西亞 </option>
                                        <option value="CZ"> 捷克共和國 </option>
                                        <option value="SY"> 敘利亞阿拉伯共和國 </option>
                                        <option value="VA"> 教廷 </option>
                                        <option value="AN"> 荷屬安替列斯 </option>
                                        <option value="NL"> 荷蘭 </option>
                                        <option value="MZ"> 莫三比克 </option>
                                        <option value="BQ"> 博奈爾 </option>
                                        <option value="CM"> 喀麥隆共和國 </option>
                                        <option value="GE"> 喬治亞 </option>
                                        <option value="GN"> 幾內亞 </option>
                                        <option value="GW"> 幾內亞比索 </option>
                                        <option value="FJ"> 斐濟群島 </option>
                                        <option value="LK"> 斯里蘭卡 </option>
                                        <option value="SK"> 斯洛伐克 </option>
                                        <option value="SI"> 斯洛維尼亞 </option>
                                        <option value="CL"> 智利 </option>
                                        <option value="KP"> 朝鮮 </option>
                                        <option value="PH"> 菲律賓 </option>
                                        <option value="CI"> 象牙海岸 </option>
                                        <option value="VN"> 越南 </option>
                                        <option value="KY"> 開曼群島 </option>
                                        <option value="TJ"> 塔吉克 </option>
                                        <option value="SN"> 塞內加爾 </option>
                                        <option value="SC"> 塞席爾群島 </option>
                                        <option value="RS"> 塞爾維亞 </option>
                                        <option value="AT"> 奧地利 </option>
                                        <option value="AX"> 奧蘭群島 </option>
                                        <option value="EE"> 愛沙尼亞 </option>
                                        <option value="IE"> 愛爾蘭 </option>
                                        <option value="SG"> 新加坡 </option>
                                        <option value="NC"> 新喀里多尼亞群島 </option>
                                        <option value="SL"> 獅子山 </option>
                                        <option value="CH"> 瑞士 </option>
                                        <option value="SE"> 瑞典 </option>
                                        <option value="IT"> 義大利 </option>
                                        <option value="PM"> 聖 皮埃爾島和密克隆島 </option>
                                        <option value="KN"> 聖 克里斯多福及尼維斯 </option>
                                        <option value="VC"> 聖文森及格瑞那丁 </option>
                                        <option value="ST"> 聖多美普林西比 </option>
                                        <option value="SM"> 聖馬利諾 </option>
                                        <option value="SX"> 聖馬爾丁 </option>
                                        <option value="CX"> 聖誕島 </option>
                                        <option value="LC"> 聖露西亞 </option>
                                        <option value="VU"> 萬那杜 </option>
                                        <option value="YE"> 葉門共和國 </option>
                                        <option value="KM"> 葛摩 </option>
                                        <option value="PT"> 葡萄牙 </option>
                                        <option value="FK"> 福克蘭群島 </option>
                                        <option value="CV"> 維德角共和國 </option>
                                        <option value="MN"> 蒙古 </option>
                                        <option value="ME"> 蒙特內哥羅 </option>
                                        <option value="MS"> 蒙特色拉特島 </option>
                                        <option value="BI"> 蒲隆地 </option>
                                        <option value="GY"> 蓋亞納 </option>
                                        <option value="HM"> 赫德島和麥當勞群島 </option>
                                        <option value="MX"> 墨西哥 </option>
                                        <option value="LA"> 寮人民民主 共和國 </option>
                                        <option value="DE"> 德國 </option>
                                        <option value="MA"> 摩洛哥 </option>
                                        <option value="MC"> 摩納哥 </option>
                                        <option value="MD"> 摩爾多瓦 </option>
                                        <option value="MU"> 模里西斯 </option>
                                        <option value="MM"> 緬甸 </option>
                                        <option value="LB"> 黎巴嫩 </option>
                                        <option value="JE"> 澤西島 </option>
                                        <option value="AU"> 澳大利亞 </option>
                                        <option value="MO"> 澳門 </option>
                                        <option value="RW"> 盧安達 </option>
                                        <option value="LU"> 盧森堡 </option>
                                        <option value="NF"> 諾福克島 </option>
                                        <option value="NR"> 諾魯 </option>
                                        <option value="LR"> 賴比瑞亞 </option>
                                        <option value="LS"> 賴索托 </option>
                                        <option value="CY"> 賽普勒斯 </option>
                                        <option value="KR"> 韓國 </option>
                                        <option value="SV"> 薩爾瓦多 </option>
                                        <option value="WS"> 薩摩亞獨立國 </option>
                                        <option value="RO"> 羅馬尼亞 </option>
                                        <option value="GU"> 關島 </option>
                                        <option value="SD"> 蘇丹 </option>
                                        <option value="SR"> 蘇利南 </option>

                    </select>
                    <span class="errortext field-validation-valid" data-valmsg-replace="true" data-valmsg-for="Nationality0"></span>
                </div>
            </div>
            
            

            <div class="needVal" style="">
                <div class="form-group">
                    <label for="tel3" class="passage-info-label col-md-2 col-xs-3">
                        證件發行地
                    </label>
                    <div class="col-md-4 col-xs-9">
                        <select id="cardissue0" class="form-control font15" name="cardissue0" data-val="true" data-val-required="請輸入證件發行地" data-val-regex="無效證件發行地" data-val-regex-pattern="^[a-zA-Z ]*$" type="text" placeholder="證件發行地" style="display: none;">
                                <option value="">請選擇</option>
                                            <option value="AD"> Andorra </option>
                                            <option value="TF"> French Southern Territories </option>
                                            <option value="IM"> Isle Of Man </option>
                                            <option value="XK"> Kosovo </option>
                                            <option value="OM"> Oman Sultanate Of </option>
                                            <option value="BL"> St Barthelemy </option>
                                            <option value="MF"> St Martin </option>
                                            <option value="PS"> State of Palestine </option>
                                            <option value="TK"> Tokelau </option>
                                            <option value="VI"> Us Virgin Isalnds </option>
                                            <option value="TT"> 千里達及托巴哥 </option>
                                            <option value="TR"> 土耳其 </option>
                                            <option value="TC"> 土克斯及開科斯群島 </option>
                                            <option value="TM"> 土庫曼 </option>
                                            <option value="BT"> 不丹 </option>
                                            <option value="CF"> 中非共和國 </option>
                                            <option value="CN"> 中國大陸 </option>
                                            <option value="DK"> 丹麥 </option>
                                            <option value="EC"> 厄瓜多 </option>
                                            <option value="ER"> 厄利垂亞 </option>
                                            <option value="PG"> 巴布亞新幾內亞 </option>
                                            <option value="BR"> 巴西 </option>
                                            <option value="BB"> 巴貝多 </option>
                                            <option value="PY"> 巴拉圭 </option>
                                            <option value="BH"> 巴林 </option>
                                            <option value="BS"> 巴哈馬 </option>
                                            <option value="PA"> 巴拿馬 </option>
                                            <option value="PK"> 巴基斯坦 </option>
                                            <option value="JP"> 日本 </option>
                                            <option value="BE"> 比利時 </option>
                                            <option value="JM"> 牙買加 </option>
                                            <option value="IL"> 以色列 </option>
                                            <option value="CA"> 加拿大 </option>
                                            <option value="GA"> 加彭 </option>
                                            <option value="QA"> 卡達 </option>
                                            <option value="CU"> 古巴 </option>
                                            <option value="CC"> 可可斯群島 </option>
                                            <option value="TW" selected="selected"> 台灣 </option>
                                            <option value="SZ"> 史瓦濟蘭 </option>
                                            <option value="NE"> 尼日 </option>
                                            <option value="NI"> 尼加拉瓜 </option>
                                            <option value="NP"> 尼泊爾 </option>
                                            <option value="BF"> 布吉納法索 </option>
                                            <option value="BV"> 布威島 </option>
                                            <option value="GT"> 瓜地馬拉 </option>
                                            <option value="WF"> 瓦利斯及福杜納群島 </option>
                                            <option value="GM"> 甘比亞 </option>
                                            <option value="BY"> 白俄羅斯 </option>
                                            <option value="PN"> 皮特康 </option>
                                            <option value="LT"> 立陶宛 </option>
                                            <option value="IQ"> 伊拉克 </option>
                                            <option value="IR"> 伊朗 </option>
                                            <option value="IS"> 冰島 </option>
                                            <option value="LI"> 列支敦斯登 </option>
                                            <option value="HU"> 匈牙利 </option>
                                            <option value="ID"> 印尼 </option>
                                            <option value="IN"> 印度 </option>
                                            <option value="DJ"> 吉布地 </option>
                                            <option value="KI"> 吉里巴斯 </option>
                                            <option value="KG"> 吉爾吉斯 </option>
                                            <option value="TV"> 吐瓦魯 </option>
                                            <option value="DM"> 多米尼克 </option>
                                            <option value="DO"> 多明尼加共和國 </option>
                                            <option value="TG"> 多哥 </option>
                                            <option value="AI"> 安圭拉 </option>
                                            <option value="AG"> 安地卡及巴布達 </option>
                                            <option value="AO"> 安哥拉 </option>
                                            <option value="BM"> 百慕達 </option>
                                            <option value="ET"> 衣索比亞 </option>
                                            <option value="ES"> 西班牙 </option>
                                            <option value="EH"> 西撒哈拉 </option>
                                            <option value="HR"> 克羅埃西亞 </option>
                                            <option value="SJ"> 冷岸及央棉群島 </option>
                                            <option value="LY"> 利比亞 </option>
                                            <option value="HN"> 宏都拉斯 </option>
                                            <option value="GR"> 希臘 </option>
                                            <option value="BN"> 汶萊 </option>
                                            <option value="SA"> 沙烏地阿拉伯 </option>
                                            <option value="BZ"> 貝里斯 </option>
                                            <option value="BJ"> 貝南 </option>
                                            <option value="GQ"> 赤道幾內亞 </option>
                                            <option value="ZW"> 辛巴威 </option>
                                            <option value="AM"> 亞美尼亞 </option>
                                            <option value="SH"> 亞森欣島/聖 赫勒拿島 </option>
                                            <option value="AZ"> 亞塞拜然 </option>
                                            <option value="TZ"> 坦尚尼亞 </option>
                                            <option value="NG"> 奈及利亞 </option>
                                            <option value="VE"> 委內瑞拉 </option>
                                            <option value="BD"> 孟加拉 </option>
                                            <option value="ZM"> 尚比亞 </option>
                                            <option value="PW"> 帛琉 </option>
                                            <option value="LV"> 拉脫維亞 </option>
                                            <option value="TO"> 東加 </option>
                                            <option value="TL"> 東帝汶 </option>
                                            <option value="FR"> 法國 </option>
                                            <option value="FO"> 法羅群島 </option>
                                            <option value="GF"> 法屬圭亞那 </option>
                                            <option value="PF"> 法屬玻里尼西亞 </option>
                                            <option value="BA"> 波士尼亞赫塞哥維那 </option>
                                            <option value="BW"> 波札那 </option>
                                            <option value="PR"> 波多黎各 </option>
                                            <option value="PL"> 波蘭 </option>
                                            <option value="GI"> 直布羅陀 </option>
                                            <option value="KE"> 肯亞 </option>
                                            <option value="FI"> 芬蘭 </option>
                                            <option value="AE"> 阿拉伯聯合大公國 </option>
                                            <option value="AR"> 阿根廷 </option>
                                            <option value="AF"> 阿富汗 </option>
                                            <option value="AW"> 阿路巴 </option>
                                            <option value="DZ"> 阿爾及利亞 </option>
                                            <option value="AL"> 阿爾巴尼亞 </option>
                                            <option value="RU"> 俄羅斯聯邦 </option>
                                            <option value="BG"> 保加利亞 </option>
                                            <option value="ZA"> 南非 </option>
                                            <option value="GS"> 南喬治亞及南三明治群島 </option>
                                            <option value="AQ"> 南極洲 </option>
                                            <option value="SS"> 南蘇丹 </option>
                                            <option value="KZ"> 哈薩克 </option>
                                            <option value="TD"> 查德 </option>
                                            <option value="KH"> 柬埔寨 </option>
                                            <option value="CK"> 柯克群島 </option>
                                            <option value="BO"> 玻利維亞 </option>
                                            <option value="KW"> 科威特 </option>
                                            <option value="TN"> 突尼西亞 </option>
                                            <option value="JO"> 約旦 </option>
                                            <option value="US"> 美國 </option>
                                            <option value="UM"> 美國外島 </option>
                                            <option value="AS"> 美屬薩摩亞 </option>
                                            <option value="GB"> 英國 </option>
                                            <option value="IO"> 英屬印度洋領土 </option>
                                            <option value="VG"> 英屬維爾京群島 </option>
                                            <option value="MR"> 茅利塔尼亞 </option>
                                            <option value="GH"> 迦納 </option>
                                            <option value="HK"> 香港 </option>
                                            <option value="CG"> 剛果 </option>
                                            <option value="CD"> 剛果民主共和國 </option>
                                            <option value="CO"> 哥倫比亞 </option>
                                            <option value="CR"> 哥斯大黎加 </option>
                                            <option value="GP"> 哥德普洛 </option>
                                            <option value="EG"> 埃及 </option>
                                            <option value="CW"> 庫拉索島 </option>
                                            <option value="NO"> 挪威 </option>
                                            <option value="GG"> 根息 </option>
                                            <option value="GL"> 格陵蘭 </option>
                                            <option value="GD"> 格瑞那達 </option>
                                            <option value="TH"> 泰國 </option>
                                            <option value="HT"> 海地 </option>
                                            <option value="UG"> 烏干達 </option>
                                            <option value="UA"> 烏克蘭 </option>
                                            <option value="UY"> 烏拉圭 </option>
                                            <option value="UZ"> 烏茲別克 </option>
                                            <option value="RE"> 留尼旺 </option>
                                            <option value="PE"> 秘魯 </option>
                                            <option value="NA"> 納米比亞 </option>
                                            <option value="NZ"> 紐西蘭 </option>
                                            <option value="NU"> 紐威島 </option>
                                            <option value="SO"> 索馬利亞 </option>
                                            <option value="SB"> 索羅門群島 </option>
                                            <option value="MQ"> 馬丁尼克 </option>
                                            <option value="ML"> 馬利 </option>
                                            <option value="MP"> 馬里安納群島 </option>
                                            <option value="MY"> 馬來西亞 </option>
                                            <option value="MK"> 馬其頓 </option>
                                            <option value="MW"> 馬拉威 </option>
                                            <option value="YT"> 馬約特島 </option>
                                            <option value="MH"> 馬紹爾群島 </option>
                                            <option value="MG"> 馬達加斯加 </option>
                                            <option value="MT"> 馬爾他 </option>
                                            <option value="MV"> 馬爾地夫 </option>
                                            <option value="FM"> 密克羅尼西亞 </option>
                                            <option value="CZ"> 捷克共和國 </option>
                                            <option value="SY"> 敘利亞阿拉伯共和國 </option>
                                            <option value="VA"> 教廷 </option>
                                            <option value="AN"> 荷屬安替列斯 </option>
                                            <option value="NL"> 荷蘭 </option>
                                            <option value="MZ"> 莫三比克 </option>
                                            <option value="BQ"> 博奈爾 </option>
                                            <option value="CM"> 喀麥隆共和國 </option>
                                            <option value="GE"> 喬治亞 </option>
                                            <option value="GN"> 幾內亞 </option>
                                            <option value="GW"> 幾內亞比索 </option>
                                            <option value="FJ"> 斐濟群島 </option>
                                            <option value="LK"> 斯里蘭卡 </option>
                                            <option value="SK"> 斯洛伐克 </option>
                                            <option value="SI"> 斯洛維尼亞 </option>
                                            <option value="CL"> 智利 </option>
                                            <option value="KP"> 朝鮮 </option>
                                            <option value="PH"> 菲律賓 </option>
                                            <option value="CI"> 象牙海岸 </option>
                                            <option value="VN"> 越南 </option>
                                            <option value="KY"> 開曼群島 </option>
                                            <option value="TJ"> 塔吉克 </option>
                                            <option value="SN"> 塞內加爾 </option>
                                            <option value="SC"> 塞席爾群島 </option>
                                            <option value="RS"> 塞爾維亞 </option>
                                            <option value="AT"> 奧地利 </option>
                                            <option value="AX"> 奧蘭群島 </option>
                                            <option value="EE"> 愛沙尼亞 </option>
                                            <option value="IE"> 愛爾蘭 </option>
                                            <option value="SG"> 新加坡 </option>
                                            <option value="NC"> 新喀里多尼亞群島 </option>
                                            <option value="SL"> 獅子山 </option>
                                            <option value="CH"> 瑞士 </option>
                                            <option value="SE"> 瑞典 </option>
                                            <option value="IT"> 義大利 </option>
                                            <option value="PM"> 聖 皮埃爾島和密克隆島 </option>
                                            <option value="KN"> 聖 克里斯多福及尼維斯 </option>
                                            <option value="VC"> 聖文森及格瑞那丁 </option>
                                            <option value="ST"> 聖多美普林西比 </option>
                                            <option value="SM"> 聖馬利諾 </option>
                                            <option value="SX"> 聖馬爾丁 </option>
                                            <option value="CX"> 聖誕島 </option>
                                            <option value="LC"> 聖露西亞 </option>
                                            <option value="VU"> 萬那杜 </option>
                                            <option value="YE"> 葉門共和國 </option>
                                            <option value="KM"> 葛摩 </option>
                                            <option value="PT"> 葡萄牙 </option>
                                            <option value="FK"> 福克蘭群島 </option>
                                            <option value="CV"> 維德角共和國 </option>
                                            <option value="MN"> 蒙古 </option>
                                            <option value="ME"> 蒙特內哥羅 </option>
                                            <option value="MS"> 蒙特色拉特島 </option>
                                            <option value="BI"> 蒲隆地 </option>
                                            <option value="GY"> 蓋亞納 </option>
                                            <option value="HM"> 赫德島和麥當勞群島 </option>
                                            <option value="MX"> 墨西哥 </option>
                                            <option value="LA"> 寮人民民主 共和國 </option>
                                            <option value="DE"> 德國 </option>
                                            <option value="MA"> 摩洛哥 </option>
                                            <option value="MC"> 摩納哥 </option>
                                            <option value="MD"> 摩爾多瓦 </option>
                                            <option value="MU"> 模里西斯 </option>
                                            <option value="MM"> 緬甸 </option>
                                            <option value="LB"> 黎巴嫩 </option>
                                            <option value="JE"> 澤西島 </option>
                                            <option value="AU"> 澳大利亞 </option>
                                            <option value="MO"> 澳門 </option>
                                            <option value="RW"> 盧安達 </option>
                                            <option value="LU"> 盧森堡 </option>
                                            <option value="NF"> 諾福克島 </option>
                                            <option value="NR"> 諾魯 </option>
                                            <option value="LR"> 賴比瑞亞 </option>
                                            <option value="LS"> 賴索托 </option>
                                            <option value="CY"> 賽普勒斯 </option>
                                            <option value="KR"> 韓國 </option>
                                            <option value="SV"> 薩爾瓦多 </option>
                                            <option value="WS"> 薩摩亞獨立國 </option>
                                            <option value="RO"> 羅馬尼亞 </option>
                                            <option value="GU"> 關島 </option>
                                            <option value="SD"> 蘇丹 </option>
                                            <option value="SR"> 蘇利南 </option>

                        </select>
                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="cardissue0">
                        </div>

                        
                    </div>
                </div>

                <div class="form-group">
                    <label for="" class="passage-info-label col-md-2 col-xs-3">
                        證件類型
                    </label>
                    <div class="col-xs-9 col-md-4">
                        <select class="form-control" name="CardType0" style="display: none;">
                            <option value="PP" selected="">護照</option>
                            <option value="TB">台胞證</option>
                            <option value="HX">回鄉證</option>
                        </select>
                    </div>
                    <label class="passage-info-label col-md-2 col-xs-3 margin-top-15">證件號碼</label>
                    <div class="col-md-4 col-xs-9 margin-top-15">
                        <input data-val="true" maxlength="30" data-val-required="請輸入證件號碼" data-val-regex="無效證件號碼" data-val-regex-pattern="^[A-Za-z0-9]*$" type="text" id="CardName0" name="CardName0" autocomplete="off" placeholder="證件號碼" class="form-control" style="display: none;">
                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="CardName0">
                        </div>
                    </div>
                </div>
                <!--證件發行日期-->
                <div class="form-group">
                   <label for="CardExpired0" class="passage-info-label col-md-2 col-xs-3">
                          證件發行日
                   </label>
                   <div class="col-md-6 col-xs-9">
                         <div class="input-group date certificates_effective">
                             <input id="CardIssued0" name="CardIssued0" err-required="請輸入日期" err-invalid="錯誤日期格式" err-range="錯誤日期範圍" class="form-control new-date" datet="2019/01/16" value="" placeholder="" type="text" autocomplete="off" style="display: none;"><div class="new-date-panel"><div class="input"><select class="form-control year" style="display: none;"><option value="">年</option><option value="2019">2019年</option><option value="2018">2018年</option><option value="2017">2017年</option><option value="2016">2016年</option><option value="2015">2015年</option><option value="2014">2014年</option><option value="2013">2013年</option><option value="2012">2012年</option><option value="2011">2011年</option><option value="2010">2010年</option><option value="2009">2009年</option><option value="2008">2008年</option><option value="2007">2007年</option><option value="2006">2006年</option><option value="2005">2005年</option><option value="2004">2004年</option><option value="2003">2003年</option><option value="2002">2002年</option><option value="2001">2001年</option><option value="2000">2000年</option><option value="1999">1999年</option><option value="1998">1998年</option><option value="1997">1997年</option><option value="1996">1996年</option><option value="1995">1995年</option><option value="1994">1994年</option><option value="1993">1993年</option><option value="1992">1992年</option><option value="1991">1991年</option><option value="1990">1990年</option><option value="1989">1989年</option><option value="1988">1988年</option><option value="1987">1987年</option><option value="1986">1986年</option><option value="1985">1985年</option><option value="1984">1984年</option><option value="1983">1983年</option><option value="1982">1982年</option><option value="1981">1981年</option><option value="1980">1980年</option><option value="1979">1979年</option><option value="1978">1978年</option><option value="1977">1977年</option><option value="1976">1976年</option><option value="1975">1975年</option><option value="1974">1974年</option><option value="1973">1973年</option><option value="1972">1972年</option><option value="1971">1971年</option><option value="1970">1970年</option><option value="1969">1969年</option><option value="1968">1968年</option><option value="1967">1967年</option><option value="1966">1966年</option><option value="1965">1965年</option><option value="1964">1964年</option><option value="1963">1963年</option><option value="1962">1962年</option><option value="1961">1961年</option><option value="1960">1960年</option><option value="1959">1959年</option><option value="1958">1958年</option><option value="1957">1957年</option><option value="1956">1956年</option><option value="1955">1955年</option><option value="1954">1954年</option><option value="1953">1953年</option><option value="1952">1952年</option><option value="1951">1951年</option><option value="1950">1950年</option><option value="1949">1949年</option><option value="1948">1948年</option><option value="1947">1947年</option><option value="1946">1946年</option><option value="1945">1945年</option><option value="1944">1944年</option><option value="1943">1943年</option><option value="1942">1942年</option><option value="1941">1941年</option><option value="1940">1940年</option><option value="1939">1939年</option><option value="1938">1938年</option><option value="1937">1937年</option><option value="1936">1936年</option><option value="1935">1935年</option><option value="1934">1934年</option><option value="1933">1933年</option><option value="1932">1932年</option><option value="1931">1931年</option><option value="1930">1930年</option><option value="1929">1929年</option><option value="1928">1928年</option><option value="1927">1927年</option><option value="1926">1926年</option><option value="1925">1925年</option><option value="1924">1924年</option><option value="1923">1923年</option><option value="1922">1922年</option><option value="1921">1921年</option><option value="1920">1920年</option><option value="1919">1919年</option><option value="1918">1918年</option><option value="1917">1917年</option><option value="1916">1916年</option><option value="1915">1915年</option><option value="1914">1914年</option><option value="1913">1913年</option><option value="1912">1912年</option><option value="1911">1911年</option><option value="1910">1910年</option><option value="1909">1909年</option><option value="1908">1908年</option><option value="1907">1907年</option><option value="1906">1906年</option><option value="1905">1905年</option><option value="1904">1904年</option><option value="1903">1903年</option><option value="1902">1902年</option><option value="1901">1901年</option><option value="1900">1900年</option></select><select class="form-control month" style="display: none;"><option value="">月</option><option value="1">1月</option><option value="2">2月</option><option value="3">3月</option><option value="4">4月</option><option value="5">5月</option><option value="6">6月</option><option value="7">7月</option><option value="8">8月</option><option value="9">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option></select><select class="form-control day" style="display: none;"><option value="">日</option><option value="1">1日</option><option value="2">2日</option><option value="3">3日</option><option value="4">4日</option><option value="5">5日</option><option value="6">6日</option><option value="7">7日</option><option value="8">8日</option><option value="9">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option></select></div><div class="errortext" style="display: none;"></div></div>
                             </div>
                         <div class="errortext field-validation-valid" data-valmsg-replace="true" data-valmsg-for="CardIssued0"></div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="CardExpired0" class="passage-info-label col-md-2 col-xs-3">
                        證件有效期
                    </label>
                    <div class="col-md-6 col-xs-9">
                        <div class="input-group date certificates_effective">
                            <input id="CardExpired0" name="CardExpired0" err-required="請輸入日期" err-invalid="錯誤日期格式" err-range="錯誤日期範圍" class="form-control new-date" datef="2019/07/16" value="" placeholder="" type="text" autocomplete="off" style="display: none;"><div class="new-date-panel"><div class="input"><select class="form-control year" style="display: none;"><option value="">年</option><option value="2029">2029年</option><option value="2028">2028年</option><option value="2027">2027年</option><option value="2026">2026年</option><option value="2025">2025年</option><option value="2024">2024年</option><option value="2023">2023年</option><option value="2022">2022年</option><option value="2021">2021年</option><option value="2020">2020年</option><option value="2019">2019年</option></select><select class="form-control month" style="display: none;"><option value="">月</option><option value="1">1月</option><option value="2">2月</option><option value="3">3月</option><option value="4">4月</option><option value="5">5月</option><option value="6">6月</option><option value="7">7月</option><option value="8">8月</option><option value="9">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option></select><select class="form-control day" style="display: none;"><option value="">日</option><option value="1">1日</option><option value="2">2日</option><option value="3">3日</option><option value="4">4日</option><option value="5">5日</option><option value="6">6日</option><option value="7">7日</option><option value="8">8日</option><option value="9">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option></select></div><div class="errortext" style="display: none;"></div></div>
                            
                            <span class="visible-xs" style="color: #ff4500;">護照有效期必需最少有六個月</span>
                        </div>
                        <div class="errortext field-validation-valid" data-valmsg-replace="true" data-valmsg-for="CardExpired0"></div>

                    </div>
                    <div class="col-md-4 col-xs-12 hidden-xs" style="color: #ff4500;">
                        護照有效期必需最少有六個月
                    </div>
                </div>
            </div>
                  

            <div class="form-group">
                <label for="" class="col-md-2 hidden-xs">航空公司會員</label>
                <label for="" class="col-xs-3 visible-xs">航空會員</label>
                <div class="col-md-5 col-xs-9 flightMember">
                    <input maxlength="30" type="text" id="flyNumber0" name="flyNumber0" class="form-control" placeholder="航空公司會員卡號" onkeyup="showMemberNumErrorMsg(this)" autocomplete="off">
                    <div class="errortext field-validation-error memberNumErrorMsg" style="display:none;">無效會員卡號</div>
                </div>
            </div>

            <div class="clearfix" style="height:20px;"></div>

                    </div>
       		<c:set var="peopleCount" scope="session" value='${map.peopleCount}'/>
       		<c:if test="${peopleCount==2}">
      		    <div class="secondaryMember">
	        <div class="totalperiod">
	            <span>旅客2 (成人)</span>
	        <input hidden="hidden" name="AgeType1" value="0">
	   	    </div>
	        <div class="form-group">
	            <label for="Gender1" class="passage-info-label col-md-1 col-xs-3">
	                稱謂
	            </label>
	            <div class="col-md-3 col-xs-9">
	                <select data-val="true" data-val-required="請輸入性別" id="Gender1" name="Gender1" class="form-control font15 order_if_select " onchange="setConnector();">
	                    <option value="">
	                        請選擇 
	                    </option>
	                            <option value="MR">
	                                先生 
	                            </option>
	                            <option value="MS">
	                                小姐 
	                            </option>
	
	
	                </select>
	                <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="Gender1">
	                </div>
	            </div>
	        </div>
	        <div class="form-group">
	            <label for="name" class="passage-info-label col-md-1 col-xs-3">
	                姓氏<span class="visible-xs">(英)</span>
	            </label>
	            <div class="col-md-4 col-xs-9">
	                <input data-val="true" data-val-required="請輸入姓氏" data-val-regex="姓氏必需為英文" data-val-regex-pattern="^[a-zA-Z ]*$" type="text" id="LastName1" name="LastName1" autocomplete="off" value="" class="form-control font15 uppercase" placeholder="英文，例如Lee" onchange="setConnector();">
	                <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="LastName1">
	                </div>
	            </div>
	            <div class="col-xs-12 visible-xs"></div>
	            <label for="name" class="passage-info-label col-md-1 col-xs-3 margin-top-15">
	                名字<span class="visible-xs">(英)</span>
	            </label>
	            <div class="col-md-4 col-xs-9 margin-top-15">
	                <input data-val="true" data-val-required="請輸入名字" data-val-regex="名字必需為英文" data-val-regex-pattern="^[a-zA-Z ]*$" type="text" id="FirstName1" name="FirstName1" autocomplete="off" value="" class="form-control font15 uppercase" placeholder="英文，例如TaiWei" onchange="setConnector();">
	                <span class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="FirstName1">
	                </span>
	            </div>
	        </div>
	            <div class="form-group">
	                <label for="DateOfBirth1" class="passage-info-label col-md-1 col-xs-3">
	                    生日
	                    
	                </label>
	
	
	                            <div id="credit_date" class="col-md-6 col-xs-9">
	                                <div class="input-group date certificates_effective">
	                                    
	
	                                    <input id="DateOfBirth1" name="DateOfBirth1" err-required="請輸入日期" err-invalid="錯誤日期格式" err-range="錯誤日期範圍" class="form-control new-date" datef="1869/02/05" datet="2007/02/05" value="" placeholder="" type="text" autocomplete="off" style="display: none;"><div class="new-date-panel"><div class="input"><select class="form-control year"><option value="">年</option><option value="2007">2007年</option><option value="2006">2006年</option><option value="2005">2005年</option><option value="2004">2004年</option><option value="2003">2003年</option><option value="2002">2002年</option><option value="2001">2001年</option><option value="2000">2000年</option><option value="1999">1999年</option><option value="1998">1998年</option><option value="1997">1997年</option><option value="1996">1996年</option><option value="1995">1995年</option><option value="1994">1994年</option><option value="1993">1993年</option><option value="1992">1992年</option><option value="1991">1991年</option><option value="1990">1990年</option><option value="1989">1989年</option><option value="1988">1988年</option><option value="1987">1987年</option><option value="1986">1986年</option><option value="1985">1985年</option><option value="1984">1984年</option><option value="1983">1983年</option><option value="1982">1982年</option><option value="1981">1981年</option><option value="1980">1980年</option><option value="1979">1979年</option><option value="1978">1978年</option><option value="1977">1977年</option><option value="1976">1976年</option><option value="1975">1975年</option><option value="1974">1974年</option><option value="1973">1973年</option><option value="1972">1972年</option><option value="1971">1971年</option><option value="1970">1970年</option><option value="1969">1969年</option><option value="1968">1968年</option><option value="1967">1967年</option><option value="1966">1966年</option><option value="1965">1965年</option><option value="1964">1964年</option><option value="1963">1963年</option><option value="1962">1962年</option><option value="1961">1961年</option><option value="1960">1960年</option><option value="1959">1959年</option><option value="1958">1958年</option><option value="1957">1957年</option><option value="1956">1956年</option><option value="1955">1955年</option><option value="1954">1954年</option><option value="1953">1953年</option><option value="1952">1952年</option><option value="1951">1951年</option><option value="1950">1950年</option><option value="1949">1949年</option><option value="1948">1948年</option><option value="1947">1947年</option><option value="1946">1946年</option><option value="1945">1945年</option><option value="1944">1944年</option><option value="1943">1943年</option><option value="1942">1942年</option><option value="1941">1941年</option><option value="1940">1940年</option><option value="1939">1939年</option><option value="1938">1938年</option><option value="1937">1937年</option><option value="1936">1936年</option><option value="1935">1935年</option><option value="1934">1934年</option><option value="1933">1933年</option><option value="1932">1932年</option><option value="1931">1931年</option><option value="1930">1930年</option><option value="1929">1929年</option><option value="1928">1928年</option><option value="1927">1927年</option><option value="1926">1926年</option><option value="1925">1925年</option><option value="1924">1924年</option><option value="1923">1923年</option><option value="1922">1922年</option><option value="1921">1921年</option><option value="1920">1920年</option><option value="1919">1919年</option><option value="1918">1918年</option><option value="1917">1917年</option><option value="1916">1916年</option><option value="1915">1915年</option><option value="1914">1914年</option><option value="1913">1913年</option><option value="1912">1912年</option><option value="1911">1911年</option><option value="1910">1910年</option><option value="1909">1909年</option><option value="1908">1908年</option><option value="1907">1907年</option><option value="1906">1906年</option><option value="1905">1905年</option><option value="1904">1904年</option><option value="1903">1903年</option><option value="1902">1902年</option><option value="1901">1901年</option><option value="1900">1900年</option><option value="1899">1899年</option><option value="1898">1898年</option><option value="1897">1897年</option><option value="1896">1896年</option><option value="1895">1895年</option><option value="1894">1894年</option><option value="1893">1893年</option><option value="1892">1892年</option><option value="1891">1891年</option><option value="1890">1890年</option><option value="1889">1889年</option><option value="1888">1888年</option><option value="1887">1887年</option><option value="1886">1886年</option><option value="1885">1885年</option><option value="1884">1884年</option><option value="1883">1883年</option><option value="1882">1882年</option><option value="1881">1881年</option><option value="1880">1880年</option><option value="1879">1879年</option><option value="1878">1878年</option><option value="1877">1877年</option><option value="1876">1876年</option><option value="1875">1875年</option><option value="1874">1874年</option><option value="1873">1873年</option><option value="1872">1872年</option><option value="1871">1871年</option><option value="1870">1870年</option><option value="1869">1869年</option></select><select class="form-control month"><option value="">月</option><option value="1">1月</option><option value="2">2月</option><option value="3">3月</option><option value="4">4月</option><option value="5">5月</option><option value="6">6月</option><option value="7">7月</option><option value="8">8月</option><option value="9">9月</option><option value="10">10月</option><option value="11">11月</option><option value="12">12月</option></select><select class="form-control day"><option value="">日</option><option value="1">1日</option><option value="2">2日</option><option value="3">3日</option><option value="4">4日</option><option value="5">5日</option><option value="6">6日</option><option value="7">7日</option><option value="8">8日</option><option value="9">9日</option><option value="10">10日</option><option value="11">11日</option><option value="12">12日</option><option value="13">13日</option><option value="14">14日</option><option value="15">15日</option><option value="16">16日</option><option value="17">17日</option><option value="18">18日</option><option value="19">19日</option><option value="20">20日</option><option value="21">21日</option><option value="22">22日</option><option value="23">23日</option><option value="24">24日</option><option value="25">25日</option><option value="26">26日</option><option value="27">27日</option><option value="28">28日</option><option value="29">29日</option><option value="30">30日</option><option value="31">31日</option></select></div><div class="errortext" style="display: none;"></div></div>
	                                   </div>
	                                   <div class="errortext field-validation-valid" data-valmsg-replace="true" data-valmsg-for="DateOfBirth0"></div>
	                               </div>
	
	               </div>
	               <div class="form-group">
	                   <label for="tel3" class="passage-info-label col-md-1 col-xs-3">
	                       國籍
	                   </label>
	                   <div class="col-md-4 col-xs-9">
	                       <select id="Nationality1" name="Nationality1" class="form-control font15 order_if_select" onchange="ifNeedMoreInfor(this)" data-val="true" data-val-required="請輸選擇國籍">
	                               <option value="">請選擇</option>
	                                       <option value="AD"> Andorra </option>
	                                       <option value="TF"> French Southern Territories </option>
	                                       <option value="IM"> Isle Of Man </option>
	                                       <option value="XK"> Kosovo </option>
	                                       <option value="OM"> Oman Sultanate Of </option>
	                                       <option value="BL"> St Barthelemy </option>
	                                       <option value="MF"> St Martin </option>
	                                       <option value="PS"> State of Palestine </option>
	                                       <option value="TK"> Tokelau </option>
	                                       <option value="VI"> Us Virgin Isalnds </option>
	                                       <option value="TT"> 千里達及托巴哥 </option>
	                                       <option value="TR"> 土耳其 </option>
	                                       <option value="TC"> 土克斯及開科斯群島 </option>
	                                       <option value="TM"> 土庫曼 </option>
	                                       <option value="BT"> 不丹 </option>
	                                       <option value="CF"> 中非共和國 </option>
	                                       <option value="CN"> 中國大陸 </option>
	                                       <option value="DK"> 丹麥 </option>
	                                       <option value="EC"> 厄瓜多 </option>
	                                       <option value="ER"> 厄利垂亞 </option>
	                                       <option value="PG"> 巴布亞新幾內亞 </option>
	                                       <option value="BR"> 巴西 </option>
	                                       <option value="BB"> 巴貝多 </option>
	                                       <option value="PY"> 巴拉圭 </option>
	                                       <option value="BH"> 巴林 </option>
	                                       <option value="BS"> 巴哈馬 </option>
	                                       <option value="PA"> 巴拿馬 </option>
	                                       <option value="PK"> 巴基斯坦 </option>
	                                       <option value="JP"> 日本 </option>
	                                       <option value="BE"> 比利時 </option>
	                                       <option value="JM"> 牙買加 </option>
	                                       <option value="IL"> 以色列 </option>
	                                       <option value="CA"> 加拿大 </option>
	                                       <option value="GA"> 加彭 </option>
	                                       <option value="QA"> 卡達 </option>
	                                       <option value="CU"> 古巴 </option>
	                                       <option value="CC"> 可可斯群島 </option>
	                                   <option value="TW" selected="selected"> 台灣 </option>
	                                       <option value="SZ"> 史瓦濟蘭 </option>
	                                       <option value="NE"> 尼日 </option>
	                                       <option value="NI"> 尼加拉瓜 </option>
	                                       <option value="NP"> 尼泊爾 </option>
	                                       <option value="BF"> 布吉納法索 </option>
	                                       <option value="BV"> 布威島 </option>
	                                       <option value="GT"> 瓜地馬拉 </option>
	                                       <option value="WF"> 瓦利斯及福杜納群島 </option>
	                                       <option value="GM"> 甘比亞 </option>
	                                       <option value="BY"> 白俄羅斯 </option>
	                                       <option value="PN"> 皮特康 </option>
	                                       <option value="LT"> 立陶宛 </option>
	                                       <option value="IQ"> 伊拉克 </option>
	                                       <option value="IR"> 伊朗 </option>
	                                       <option value="IS"> 冰島 </option>
	                                       <option value="LI"> 列支敦斯登 </option>
	                                       <option value="HU"> 匈牙利 </option>
	                                       <option value="ID"> 印尼 </option>
	                                       <option value="IN"> 印度 </option>
	                                       <option value="DJ"> 吉布地 </option>
	                                       <option value="KI"> 吉里巴斯 </option>
	                                       <option value="KG"> 吉爾吉斯 </option>
	                                       <option value="TV"> 吐瓦魯 </option>
	                                       <option value="DM"> 多米尼克 </option>
	                                       <option value="DO"> 多明尼加共和國 </option>
	                                       <option value="TG"> 多哥 </option>
	                                       <option value="AI"> 安圭拉 </option>
	                                       <option value="AG"> 安地卡及巴布達 </option>
	                                       <option value="AO"> 安哥拉 </option>
	                                       <option value="BM"> 百慕達 </option>
	                                       <option value="ET"> 衣索比亞 </option>
	                                       <option value="ES"> 西班牙 </option>
	                                       <option value="EH"> 西撒哈拉 </option>
	                                       <option value="HR"> 克羅埃西亞 </option>
	                                       <option value="SJ"> 冷岸及央棉群島 </option>
	                                       <option value="LY"> 利比亞 </option>
	                                       <option value="HN"> 宏都拉斯 </option>
	                                       <option value="GR"> 希臘 </option>
	                                       <option value="BN"> 汶萊 </option>
	                                       <option value="SA"> 沙烏地阿拉伯 </option>
	                                       <option value="BZ"> 貝里斯 </option>
	                                       <option value="BJ"> 貝南 </option>
	                                       <option value="GQ"> 赤道幾內亞 </option>
	                                       <option value="ZW"> 辛巴威 </option>
	                                       <option value="AM"> 亞美尼亞 </option>
	                                       <option value="SH"> 亞森欣島/聖 赫勒拿島 </option>
	                                       <option value="AZ"> 亞塞拜然 </option>
	                                       <option value="TZ"> 坦尚尼亞 </option>
	                                       <option value="NG"> 奈及利亞 </option>
	                                       <option value="VE"> 委內瑞拉 </option>
	                                       <option value="BD"> 孟加拉 </option>
	                                       <option value="ZM"> 尚比亞 </option>
	                                       <option value="PW"> 帛琉 </option>
	                                       <option value="LV"> 拉脫維亞 </option>
	                                       <option value="TO"> 東加 </option>
	                                       <option value="TL"> 東帝汶 </option>
	                                       <option value="FR"> 法國 </option>
	                                       <option value="FO"> 法羅群島 </option>
	                                       <option value="GF"> 法屬圭亞那 </option>
	                                       <option value="PF"> 法屬玻里尼西亞 </option>
	                                       <option value="BA"> 波士尼亞赫塞哥維那 </option>
	                                       <option value="BW"> 波札那 </option>
	                                       <option value="PR"> 波多黎各 </option>
	                                       <option value="PL"> 波蘭 </option>
	                                       <option value="GI"> 直布羅陀 </option>
	                                       <option value="KE"> 肯亞 </option>
	                                       <option value="FI"> 芬蘭 </option>
	                                       <option value="AE"> 阿拉伯聯合大公國 </option>
	                                       <option value="AR"> 阿根廷 </option>
	                                       <option value="AF"> 阿富汗 </option>
	                                       <option value="AW"> 阿路巴 </option>
	                                       <option value="DZ"> 阿爾及利亞 </option>
	                                       <option value="AL"> 阿爾巴尼亞 </option>
	                                       <option value="RU"> 俄羅斯聯邦 </option>
	                                       <option value="BG"> 保加利亞 </option>
	                                       <option value="ZA"> 南非 </option>
	                                       <option value="GS"> 南喬治亞及南三明治群島 </option>
	                                       <option value="AQ"> 南極洲 </option>
	                                       <option value="SS"> 南蘇丹 </option>
	                                       <option value="KZ"> 哈薩克 </option>
	                                       <option value="TD"> 查德 </option>
	                                       <option value="KH"> 柬埔寨 </option>
	                                       <option value="CK"> 柯克群島 </option>
	                                       <option value="BO"> 玻利維亞 </option>
	                                       <option value="KW"> 科威特 </option>
	                                       <option value="TN"> 突尼西亞 </option>
	                                       <option value="JO"> 約旦 </option>
	                                       <option value="US"> 美國 </option>
	                                       <option value="UM"> 美國外島 </option>
	                                       <option value="AS"> 美屬薩摩亞 </option>
	                                       <option value="GB"> 英國 </option>
	                                       <option value="IO"> 英屬印度洋領土 </option>
	                                       <option value="VG"> 英屬維爾京群島 </option>
	                                       <option value="MR"> 茅利塔尼亞 </option>
	                                       <option value="GH"> 迦納 </option>
	                                       <option value="HK"> 香港 </option>
	                                       <option value="CG"> 剛果 </option>
	                                       <option value="CD"> 剛果民主共和國 </option>
	                                       <option value="CO"> 哥倫比亞 </option>
	                                       <option value="CR"> 哥斯大黎加 </option>
	                                       <option value="GP"> 哥德普洛 </option>
	                                       <option value="EG"> 埃及 </option>
	                                       <option value="CW"> 庫拉索島 </option>
	                                       <option value="NO"> 挪威 </option>
	                                       <option value="GG"> 根息 </option>
	                                       <option value="GL"> 格陵蘭 </option>
	                                       <option value="GD"> 格瑞那達 </option>
	                                       <option value="TH"> 泰國 </option>
	                                       <option value="HT"> 海地 </option>
	                                       <option value="UG"> 烏干達 </option>
	                                       <option value="UA"> 烏克蘭 </option>
	                                       <option value="UY"> 烏拉圭 </option>
	                                       <option value="UZ"> 烏茲別克 </option>
	                                       <option value="RE"> 留尼旺 </option>
	                                       <option value="PE"> 秘魯 </option>
	                                       <option value="NA"> 納米比亞 </option>
	                                       <option value="NZ"> 紐西蘭 </option>
	                                       <option value="NU"> 紐威島 </option>
	                                       <option value="SO"> 索馬利亞 </option>
	                                       <option value="SB"> 索羅門群島 </option>
	                                       <option value="MQ"> 馬丁尼克 </option>
	                                       <option value="ML"> 馬利 </option>
	                                       <option value="MP"> 馬里安納群島 </option>
	                                       <option value="MY"> 馬來西亞 </option>
	                                       <option value="MK"> 馬其頓 </option>
	                                       <option value="MW"> 馬拉威 </option>
	                                       <option value="YT"> 馬約特島 </option>
	                                       <option value="MH"> 馬紹爾群島 </option>
	                                       <option value="MG"> 馬達加斯加 </option>
	                                       <option value="MT"> 馬爾他 </option>
	                                       <option value="MV"> 馬爾地夫 </option>
	                                       <option value="FM"> 密克羅尼西亞 </option>
	                                       <option value="CZ"> 捷克共和國 </option>
	                                       <option value="SY"> 敘利亞阿拉伯共和國 </option>
	                                       <option value="VA"> 教廷 </option>
	                                       <option value="AN"> 荷屬安替列斯 </option>
	                                       <option value="NL"> 荷蘭 </option>
	                                       <option value="MZ"> 莫三比克 </option>
	                                       <option value="BQ"> 博奈爾 </option>
	                                       <option value="CM"> 喀麥隆共和國 </option>
	                                       <option value="GE"> 喬治亞 </option>
	                                       <option value="GN"> 幾內亞 </option>
	                                       <option value="GW"> 幾內亞比索 </option>
	                                       <option value="FJ"> 斐濟群島 </option>
	                                       <option value="LK"> 斯里蘭卡 </option>
	                                       <option value="SK"> 斯洛伐克 </option>
	                                       <option value="SI"> 斯洛維尼亞 </option>
	                                       <option value="CL"> 智利 </option>
	                                       <option value="KP"> 朝鮮 </option>
	                                       <option value="PH"> 菲律賓 </option>
	                                       <option value="CI"> 象牙海岸 </option>
	                                       <option value="VN"> 越南 </option>
	                                       <option value="KY"> 開曼群島 </option>
	                                       <option value="TJ"> 塔吉克 </option>
	                                       <option value="SN"> 塞內加爾 </option>
	                                       <option value="SC"> 塞席爾群島 </option>
	                                       <option value="RS"> 塞爾維亞 </option>
	                                       <option value="AT"> 奧地利 </option>
	                                       <option value="AX"> 奧蘭群島 </option>
	                                       <option value="EE"> 愛沙尼亞 </option>
	                                       <option value="IE"> 愛爾蘭 </option>
	                                       <option value="SG"> 新加坡 </option>
	                                       <option value="NC"> 新喀里多尼亞群島 </option>
	                                       <option value="SL"> 獅子山 </option>
	                                       <option value="CH"> 瑞士 </option>
	                                       <option value="SE"> 瑞典 </option>
	                                       <option value="IT"> 義大利 </option>
	                                       <option value="PM"> 聖 皮埃爾島和密克隆島 </option>
	                                       <option value="KN"> 聖 克里斯多福及尼維斯 </option>
	                                       <option value="VC"> 聖文森及格瑞那丁 </option>
	                                       <option value="ST"> 聖多美普林西比 </option>
	                                       <option value="SM"> 聖馬利諾 </option>
	                                       <option value="SX"> 聖馬爾丁 </option>
	                                       <option value="CX"> 聖誕島 </option>
	                                       <option value="LC"> 聖露西亞 </option>
	                                       <option value="VU"> 萬那杜 </option>
	                                       <option value="YE"> 葉門共和國 </option>
	                                       <option value="KM"> 葛摩 </option>
	                                       <option value="PT"> 葡萄牙 </option>
	                                       <option value="FK"> 福克蘭群島 </option>
	                                       <option value="CV"> 維德角共和國 </option>
	                                       <option value="MN"> 蒙古 </option>
	                                       <option value="ME"> 蒙特內哥羅 </option>
	                                       <option value="MS"> 蒙特色拉特島 </option>
	                                       <option value="BI"> 蒲隆地 </option>
	                                       <option value="GY"> 蓋亞納 </option>
	                                       <option value="HM"> 赫德島和麥當勞群島 </option>
	                                       <option value="MX"> 墨西哥 </option>
	                                       <option value="LA"> 寮人民民主 共和國 </option>
	                                       <option value="DE"> 德國 </option>
	                                       <option value="MA"> 摩洛哥 </option>
	                                       <option value="MC"> 摩納哥 </option>
	                                       <option value="MD"> 摩爾多瓦 </option>
	                                       <option value="MU"> 模里西斯 </option>
	                                       <option value="MM"> 緬甸 </option>
	                                       <option value="LB"> 黎巴嫩 </option>
	                                       <option value="JE"> 澤西島 </option>
	                                       <option value="AU"> 澳大利亞 </option>
	                                       <option value="MO"> 澳門 </option>
	                                       <option value="RW"> 盧安達 </option>
	                                       <option value="LU"> 盧森堡 </option>
	                                       <option value="NF"> 諾福克島 </option>
	                                       <option value="NR"> 諾魯 </option>
	                                       <option value="LR"> 賴比瑞亞 </option>
	                                       <option value="LS"> 賴索托 </option>
	                                       <option value="CY"> 賽普勒斯 </option>
	                                       <option value="KR"> 韓國 </option>
	                                       <option value="SV"> 薩爾瓦多 </option>
	                                       <option value="WS"> 薩摩亞獨立國 </option>
	                                       <option value="RO"> 羅馬尼亞 </option>
	                                       <option value="GU"> 關島 </option>
	                                       <option value="SD"> 蘇丹 </option>
	                                       <option value="SR"> 蘇利南 </option>
	
	                       </select>
	                       <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="Nationality1">
	                       </div>
	                   </div>
	               </div>
	               
	
	            
	           </div>
				<div class="form-group">
	                                   <label for="" class="col-md-2 hidden-xs">航空公司會員</label>
	                                   <label for="" class="col-xs-3 visible-xs">航空會員</label>
	                                   <div class="col-md-5 col-xs-9 flightMember">
	                                       <input maxlength="30" type="text" id="flyNumber1" name="flyNumber1" class="form-control" onkeyup="showMemberNumErrorMsg(this)" placeholder="航空公司會員卡號" autocomplete="off">
	                                    <div class="errortext field-validation-error memberNumErrorMsg" style="display:none;">無效會員卡號</div>
	                                      </div>
	                        </div>
				<div class="clearfix" style="height:20px;"></div>
			</c:if>
	

       
       
        <input type="hidden" name="sid" value="bc35dea4b39c1e30268c">
        <input type="hidden" name="source" value="skyscanner">'
   

        

        <div class="totalperiod">
            <span>聯絡人</span>
            <select onchange="setConnector();" class="asPassebger valid">
                <option value="0">非旅客</option>
                <option value="1" selected="">同 旅客1</option>

            </select>
        </div>
        <div class="form-group">
            <div class="display-no add-phone-panel">
                <div class="form-group">
                    <label for="contactPrefix" class="passage-info-label col-md-1 col-xs-3">
                        稱謂
                    </label>
                    <div class="col-md-3 col-xs-9">
                        <select data-val="true" data-val-required="請輸入性別" id="contactGender" name="contactGender" class="form-control order_if_select"><option value="">請選擇 </option><option value="MR">先生</option><option value="MS">小姐</option></select>
                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="contactGender">
                        </div>
                    </div>
                    <label class="col-md-1 col-xs-3 margin-top-15">
                        姓氏<span class="visible-xs">(中)</span>
                    </label>
                    <div class="col-md-3 col-xs-9 margin-top-15">
                        <input id="contactLastNameCN" name="contactLastNameCN" data-val="false" data-val-required="請輸入姓氏" data-val-regex="姓氏必需為中文" autocomplete="off" data-val-regex-pattern="^[\u4e00-\u9fa5]*$" type="text" value="" class="form-control" placeholder="中文" onkeyup="showChineseNameErrorMsg(this)">
                        <div class="errortext field-validation-error chineseNameErrorMsg" style="display:none;">姓氏必需為中文</div>
                    </div>
                    <label class="col-md-1 col-xs-3 margin-top-15">
                        名字<span class="visible-xs">(中)</span>
                    </label>
                    <div class="col-md-3 col-xs-9 margin-top-15">
                        <input data-val="false" data-val-required="請輸入名字" data-val-regex="名字必需為中文" autocomplete="off" data-val-regex-pattern="^[\u4e00-\u9fa5]*$" type="text" id="contactFirstNameCN" name="contactFirstNameCN" value="" class="form-control" placeholder="中文" onkeyup="showChineseNameErrorMsg(this)">
                        <div class="errortext field-validation-error chineseNameErrorMsg" style="display:none;">名字必需為中文</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="passage-info-label col-md-1 col-xs-3">
                        姓氏<span class="visible-xs">(英)</span>
                    </label>
                    <div class="col-md-4 col-xs-9">
                        <input id="contactLastName" name="contactLastName" data-val="true" data-val-required="請輸入姓氏" data-val-regex="姓氏必需為英文" data-val-regex-pattern="^[a-zA-Z ]*$" autocomplete="off" type="text" value="" class="form-control uppercase" placeholder="英文，例如Lee">
                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="contactLastName">
                        </div>
                    </div>
                    <label class="passage-info-label col-md-1 col-xs-3 margin-top-15">
                        名字<span class="visible-xs">(英)</span>
                    </label>
                    <div class="col-md-4 col-xs-9 margin-top-15">
                        <input data-val="true" data-val-required="請輸入名字" data-val-regex="名字必需為英文" data-val-regex-pattern="^[a-zA-Z ]*$" type="text" id="contactFirstName" name="contactFirstName" autocomplete="off" value="" class="form-control uppercase" placeholder="英文，例如TaiWei">
                        <span class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="contactFirstName">
                        </span>
                    </div>
                </div>
    <div class="form-group">
        <label for="contactmobile" class="col-md-1 col-xs-3">
            電話
        </label>
        <div class="col-md-3 col-xs-4 phoneAreaList">
            <select id="phone" name="contactmobileCountry" class="form-control PhoneList">
                            <option value="852">香港 (852)</option>
                            <option value="86">中國 (86)</option>
                            <option value="1">美國 (1)</option>
                            <option value="975">不丹 (975)</option>
                            <option value="236">中非共和國 (236)</option>
                            <option value="45">丹麥 (45)</option>
                            <option value="967">也門 (967)</option>
                            <option value="994">亞塞拜然 (994)</option>
                            <option value="374">亞美尼亞 (374)</option>
                            <option value="972">以色列 (972)</option>
                            <option value="964">伊拉克 (964)</option>
                            <option value="98">伊朗 (98)</option>
                            <option value="238">佛得角 (238)</option>
                            <option value="7">俄國 (7)</option>
                            <option value="359">保加利亞 (359)</option>
                            <option value="385">克羅埃西亞 (385)</option>
                            <option value="354">冰島 (354)</option>
                            <option value="423">列支敦斯登 (423)</option>
                            <option value="218">利比亞 (218)</option>
                            <option value="242">剛果共和國 (242)</option>
                            <option value="243">剛果民主共和國 (243)</option>
                            <option value="241">加彭 (241)</option>
                            <option value="1">加拿大 (1)</option>
                            <option value="36">匈牙利 (36)</option>
                            <option value="850">北朝鮮 (850)</option>
                            <option>北馬里亞納群島 ()</option>
                            <option value="672">南極洲 (672)</option>
                            <option value="211">南蘇丹 (211)</option>
                            <option value="27">南非 (27)</option>
                            <option value="974">卡達 (974)</option>
                            <option value="62">印尼 (62)</option>
                            <option value="91">印度 (91)</option>
                            <option value="291">厄利垂亞 (291)</option>
                            <option value="593">厄瓜多 (593)</option>
                            <option value="53">古巴 (53)</option>
                            <option value="61">可可斯群島 (61)</option>
                            <option value="886" selected="selected">台灣 (886)</option>
                            <option value="268">史瓦濟蘭 (268)</option>
                            <option value="253">吉布地 (253)</option>
                            <option value="996">吉爾吉斯 (996)</option>
                            <option value="686">吉里巴斯 (686)</option>
                            <option value="688">吐瓦魯 (688)</option>
                            <option value="7">哈薩克斯坦 (7)</option>
                            <option value="57">哥倫比亞 (57)</option>
                            <option value="506">哥斯大黎加 (506)</option>
                            <option value="237">喀麥隆 (237)</option>
                            <option value="995">喬治亞 (995)</option>
                            <option>土克斯及開科斯群島 ()</option>
                            <option value="993">土庫曼 (993)</option>
                            <option value="90">土耳其 (90)</option>
                            <option value="255">坦尚尼亞 (255)</option>
                            <option value="20">埃及 (20)</option>
                            <option value="992">塔吉克 (992)</option>
                            <option value="221">塞內加爾 (221)</option>
                            <option value="381">塞爾維亞 (381)</option>
                            <option value="248">塞舌爾 (248)</option>
                            <option value="52">墨西哥 (52)</option>
                            <option value="228">多哥 (228)</option>
                            <option>多明尼加共和國 ()</option>
                            <option>多明尼加共和國 ()</option>
                            <option>多明尼加共和國 ()</option>
                            <option>多米尼克 ()</option>
                            <option value="234">奈及利亞 (234)</option>
                            <option value="43">奧地利 (43)</option>
                            <option value="58">委內瑞拉 (58)</option>
                            <option value="880">孟加拉 (880)</option>
                            <option value="244">安哥拉 (244)</option>
                            <option>安圭拉 ()</option>
                            <option>安地卡及巴布達 ()</option>
                            <option value="376">安道爾 (376)</option>
                            <option value="504">宏都拉斯 (504)</option>
                            <option value="691">密克羅尼西亞 (691)</option>
                            <option value="260">尚比亞 (260)</option>
                            <option value="505">尼加拉瓜 (505)</option>
                            <option value="227">尼日 (227)</option>
                            <option value="977">尼泊爾 (977)</option>
                            <option value="970">巴勒斯坦 (970)</option>
                            <option>巴哈馬 ()</option>
                            <option value="92">巴基斯坦 (92)</option>
                            <option value="675">巴布亞新幾內亞 (675)</option>
                            <option value="595">巴拉圭 (595)</option>
                            <option value="507">巴拿馬 (507)</option>
                            <option value="973">巴林 (973)</option>
                            <option value="55">巴西 (55)</option>
                            <option>巴貝多 ()</option>
                            <option value="226">布吉納法索 (226)</option>
                            <option value="30">希臘 (30)</option>
                            <option value="680">帛琉 (680)</option>
                            <option value="224">幾內亞 (224)</option>
                            <option value="245">幾內亞比索 (245)</option>
                            <option value="599">庫拉索島 (599)</option>
                            <option value="49">德國 (49)</option>
                            <option value="372">愛沙尼亞 (372)</option>
                            <option value="353">愛爾蘭 (353)</option>
                            <option value="690">托克勞 (690)</option>
                            <option value="371">拉脫維亞 (371)</option>
                            <option value="47">挪威 (47)</option>
                            <option value="420">捷克共和國 (420)</option>
                            <option value="212">摩洛哥 (212)</option>
                            <option value="373">摩爾多瓦 (373)</option>
                            <option value="377">摩納哥 (377)</option>
                            <option value="963">敘利亞 (963)</option>
                            <option value="379">教廷 (379)</option>
                            <option value="679">斐濟 (679)</option>
                            <option value="421">斯洛伐克 (421)</option>
                            <option value="386">斯洛維尼亞 (386)</option>
                            <option value="47">斯瓦爾巴群島和揚馬延 (47)</option>
                            <option value="94">斯里蘭卡 (94)</option>
                            <option value="65">新加坡 (65)</option>
                            <option value="687">新喀里多尼亞群島 (687)</option>
                            <option value="81">日本 (81)</option>
                            <option value="56">智利 (56)</option>
                            <option>曼島 ()</option>
                            <option value="676">東加 (676)</option>
                            <option value="670">東帝汶 (670)</option>
                            <option value="235">查德 (235)</option>
                            <option value="855">柬埔寨 (855)</option>
                            <option value="682">柯克群島 (682)</option>
                            <option>根息 ()</option>
                            <option>格瑞那達 ()</option>
                            <option value="299">格陵蘭 (299)</option>
                            <option value="230">模里西斯 (230)</option>
                            <option value="32">比利時 (32)</option>
                            <option value="673">汶萊 (673)</option>
                            <option value="966">沙烏地阿拉伯 (966)</option>
                            <option value="33">法國 (33)</option>
                            <option value="689">法屬玻里尼西亞 (689)</option>
                            <option value="298">法羅群島 (298)</option>
                            <option>波多黎各 ()</option>
                            <option>波多黎各 ()</option>
                            <option value="387">波斯尼亞和黑塞哥維那 (387)</option>
                            <option value="267">波札那 (267)</option>
                            <option value="48">波蘭 (48)</option>
                            <option value="66">泰國 (66)</option>
                            <option value="509">海地 (509)</option>
                            <option>澤西島 ()</option>
                            <option value="61">澳大利亞 (61)</option>
                            <option value="853">澳門 (853)</option>
                            <option value="380">烏克蘭 (380)</option>
                            <option value="256">烏干達 (256)</option>
                            <option value="598">烏拉圭 (598)</option>
                            <option value="998">烏茲別克斯坦 (998)</option>
                            <option>牙買加 ()</option>
                            <option>特立尼達和多巴哥 ()</option>
                            <option value="232">獅子山 (232)</option>
                            <option value="591">玻利維亞 (591)</option>
                            <option value="46">瑞典 (46)</option>
                            <option value="41">瑞士 (41)</option>
                            <option value="502">瓜地馬拉 (502)</option>
                            <option value="681">瓦利斯和富圖納 (681)</option>
                            <option value="220">甘比亞 (220)</option>
                            <option value="262">留尼旺 (262)</option>
                            <option value="375">白俄羅斯 (375)</option>
                            <option>百慕達 ()</option>
                            <option value="64">皮特康 (64)</option>
                            <option value="250">盧安達 (250)</option>
                            <option value="352">盧森堡 (352)</option>
                            <option value="350">直布羅陀 (350)</option>
                            <option value="500">福克蘭群島 (500)</option>
                            <option value="965">科威特 (965)</option>
                            <option value="383">科索沃 (383)</option>
                            <option value="51">秘魯 (51)</option>
                            <option value="216">突尼西亞 (216)</option>
                            <option value="370">立陶宛 (370)</option>
                            <option value="962">約旦 (962)</option>
                            <option value="264">納米比亞 (264)</option>
                            <option value="683">紐威島 (683)</option>
                            <option value="64">紐西蘭 (64)</option>
                            <option value="677">索羅門群島 (677)</option>
                            <option value="252">索馬利亞 (252)</option>
                            <option value="95">緬甸 (95)</option>
                            <option value="40">羅馬尼亞 (40)</option>
                            <option value="1">美國 (1)</option>
                            <option>美屬維爾京群島 ()</option>
                            <option>美屬薩摩亞 ()</option>
                            <option value="39">義大利 (39)</option>
                            <option value="856">老撾 (856)</option>
                            <option>聖基茨和尼維斯 ()</option>
                            <option value="239">聖多美和普林西比 (239)</option>
                            <option value="590">聖巴泰勒米 (590)</option>
                            <option>聖文森及格瑞那丁 ()</option>
                            <option value="508">聖皮埃爾和密克隆 (508)</option>
                            <option value="61">聖誕島 (61)</option>
                            <option value="290">聖赫勒拿 (290)</option>
                            <option>聖露西亞 ()</option>
                            <option value="590">聖馬丁 (590)</option>
                            <option>聖馬丁島 ()</option>
                            <option value="378">聖馬利諾 (378)</option>
                            <option value="254">肯亞 (254)</option>
                            <option value="358">芬蘭 (358)</option>
                            <option value="44">英國 (44)</option>
                            <option value="44">英國 (44)</option>
                            <option value="246">英屬印度洋領土 (246)</option>
                            <option>英屬維爾京群島 ()</option>
                            <option value="222">茅利塔尼亞 (222)</option>
                            <option value="599">荷屬安的列斯 (599)</option>
                            <option value="31">荷蘭 (31)</option>
                            <option value="258">莫三比克 (258)</option>
                            <option value="63">菲律賓 (63)</option>
                            <option value="678">萬那杜 (678)</option>
                            <option value="269">葛摩 (269)</option>
                            <option value="351">葡萄牙 (351)</option>
                            <option value="976">蒙古 (976)</option>
                            <option value="382">蒙特內哥羅 (382)</option>
                            <option>蒙特色拉特島 ()</option>
                            <option value="257">蒲隆地 (257)</option>
                            <option value="592">蓋亞納 (592)</option>
                            <option value="685">薩摩亞 (685)</option>
                            <option value="503">薩爾瓦多 (503)</option>
                            <option value="249">蘇丹 (249)</option>
                            <option value="597">蘇利南 (597)</option>
                            <option value="251">衣索比亞 (251)</option>
                            <option value="212">西撒哈拉 (212)</option>
                            <option value="34">西班牙 (34)</option>
                            <option value="674">諾魯 (674)</option>
                            <option value="225">象牙海岸 (225)</option>
                            <option value="229">貝南 (229)</option>
                            <option value="501">貝里斯 (501)</option>
                            <option value="231">賴比瑞亞 (231)</option>
                            <option value="266">賴索托 (266)</option>
                            <option value="357">賽普勒斯 (357)</option>
                            <option value="240">赤道幾內亞 (240)</option>
                            <option value="84">越南 (84)</option>
                            <option value="263">辛巴威 (263)</option>
                            <option value="233">迦納 (233)</option>
                            <option>開曼群島 ()</option>
                            <option>關島 ()</option>
                            <option value="93">阿富汗 (93)</option>
                            <option value="971">阿拉伯聯合大公國 (971)</option>
                            <option value="968">阿曼 (968)</option>
                            <option value="54">阿根廷 (54)</option>
                            <option value="213">阿爾及利亞 (213)</option>
                            <option value="355">阿爾巴尼亞 (355)</option>
                            <option value="297">阿路巴 (297)</option>
                            <option value="82">韓國 (82)</option>
                            <option value="60">馬來西亞 (60)</option>
                            <option value="389">馬其頓 (389)</option>
                            <option value="223">馬利 (223)</option>
                            <option value="265">馬拉威 (265)</option>
                            <option value="356">馬爾他 (356)</option>
                            <option value="960">馬爾地夫 (960)</option>
                            <option value="262">馬約特島 (262)</option>
                            <option value="692">馬紹爾群島 (692)</option>
                            <option value="261">馬達加斯加 (261)</option>
                            <option value="961">黎巴嫩 (961)</option>
            </select>
        </div>
        <div class="col-md-4 col-xs-5">
           <input id="contactmobile" name="contactmobile" type="text" class="form-control phoneError" autocomplete="off" onkeyup="showErrorMsg(this)">
            
           <div class="errortext field-validation-error phoneErrorMsg" style="display:none;">無效電話號碼</div>
        </div>
    </div>
              
                <div class="form-group">
                    <label class="passage-info-label col-md-1 col-xs-3">
                        手機
                    </label>
                    <div class="col-md-5 col-xs-9">
                        <input id="phone" name="phone" data-val="true" data-val-required="請輸入手機號碼" data-val-regex="請輸入有效手機號碼" data-val-regex-pattern="^[0-9()+ -]*$" type="tel" value="" placeholder="" class="form-control" autocomplete="off">
                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="contactmobileNumber">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="passage-info-label col-md-1 col-xs-3">
                        電郵
                    </label>
                    <div class="col-md-6 col-xs-9">
                        <input data-val="true" data-val-email="無效電郵地址" data-val-required="請輸入電郵" type="email" id="email" name="email" value="" class="form-control" placeholder="" autocomplete="off">
                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="contactEmail">
                        </div>
                    </div>
                    

                </div>
                <div class="form-group">
                    <p class="col-md-12 email-tips"><span>*貼心提醒：</span>為使您收信順利，建議使用Hotmail、Yahoo以外的信箱</p>
                </div>
            </div>
        </div>
    </div>
	
<div class="panerl">
        <div class="totalperiod">
            <span>收據資料</span>
        </div>
        
        <div class="row receipt">
            <div class="passage-info-form form-inline" novalidate="novalidate" role="form">
                <section class="receipt_information">
                    <label class="position"><input class="position_relative no_Receipt" name="shouju" type="radio" checked="" value="0">不需寄送代收轉付收據</label>
                    <p>本公司將依法開立並保留，如日後需求，請來電449-3535(手機+02)</p>
                    <main>
                        <label class="radio_box"><input class="position_relative need_Receipt" name="shouju" type="radio" value="1">寄送代收轉付收據</label>
                        <div class="row sondReceipt">
                            <div class="col-md-12">
                                <label class="openGS ">
                                <input class="position_relative" type="radio" name="gongsi" checked="checked" value="1">
                                    要開立公司名稱
                                </label>
                                <label class="openGS"><input class="position_relative" type="radio" name="gongsi" value="0">免開立公司名稱</label>
                            </div>
                            <div class="col-md-12">
                                <div class="gongsiName adress-wrap">
                                    <div class="adress-wrap">
                                        <span>公司名稱</span>
                                        <input id="CompanyName" class="form-control" data-val="true" data-val-required="請輸入公司名稱" type="text" name="CompanyName" autocomplete="off">
                                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="CompanyName">
                                        </div>
                                    </div>
                                    <div class="adress-wrap">
                                    <span>統一編號</span>
                                    <input id="CompanyCode" class="form-control" type="text" name="CompanyCode" autocomplete="off" data-val="true" data-val-required="請輸入統一編號">
                                        <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="CompanyCode">
                                        </div>
                                    </div>
                                </div>
                                <div class="gongsiName"></div>
                            </div>
                            <div class="col-md-12">
                                <div class="adress-wrap">
                                    <label>平信郵寄</label>
                                    <select class="form-control chose_city" id="PostCity" name="PostCity" data-val="true" data-val-required="請選擇地址"><option value="">請選擇</option><option value="TW20">連江縣</option><option value="TW19">金門縣</option><option value="TW15">澎湖縣</option><option value="TW4">宜蘭縣</option><option value="TW18">花蓮縣</option><option value="TW17">臺東縣</option><option value="TW16">屏東縣</option><option value="TW14">高雄市</option><option value="TW13">臺南市</option><option value="TW11">嘉義縣</option><option value="TW12">雲林縣</option><option value="TW10">南投縣</option><option value="TW9">彰化縣</option><option value="TW8">臺中市</option><option value="TW7">苗栗縣</option><option value="TW5">新竹縣</option><option value="TW6">桃園市</option><option value="TW3">新北市</option><option value="TW1">臺北市</option><option value="TW2">基隆市</option></select>
                                    <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="PostCity">
                                    </div>
                                    <select class="form-control chose_country" id="PostCountry" name="PostCountry" data-val="true" data-val-required="請選擇地址"><option>請選擇</option></select>
                                    <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="PostCountry">
                                    </div>
                                 </div>
                                <div class="adress-wrap">
                                    <label>郵遞區號 </label>
                                    <input class="form-control postcode" type="text" size="3" name="PostCode">
                                    <input id="PostAddress" class="form-control postAddress" type="text" value="" name="PostAddress" autocomplete="off" data-val="true" data-val-required="請填寫">
                                    <div class="errortext field-validation-error" data-valmsg-replace="true" data-valmsg-for="PostAddress">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </section>
            </div>
        </div>
    </div>

<section class="tearms">
        <p class="hidden-xs tearmsTitle">航班條款與細則</p>
        <div class="hidden-xs tearmsDiv">
            <ul>
                <li>出發前可更改皆須改票，每次收取『航空公司罰金』+『價差』+『稅差』+本公司服務費，所有更改須符合原購票之相關規定及限制（機票若有NO SHOW *記錄須另查）；出發後欲更改，須另洽詢，亦有可能不可更改。</li>
                <li>退票須於機票效期內申請；全程未用者，收取航空公司罰金+本公司退票手續費；機票一經使用或NO SHOW者可能無退票價值。</li>

                <li>
                    如更改必須於原搭乘日前２個工作日完成(國定假日無法提供更改服務)。
                </li>
                <li>
                    務必於原班機出發前２天更改行程並完成改票或取消紀錄，如造成NO SHOW (未照原訂航班搭乘) 將不接受任何更改或退票。
                </li>
                <li>
                    上述航班時間如有變動，以航空公司確認的時間為準。
                </li>
                <li>
                    機票開立後，不可轉讓其他公司航空、不可轉讓他人使用。
                </li>
                <li>
                    機票開出後,取消預訂，相關退票規定請見<a href="/images/flight/%e9%80%80%e7%a5%a8%e9%a0%88%e7%9f%a5.pdf" target="_blank">退票須知</a>。
                </li>
                <li>
                    可能有額外支付費用。
                </li>
            </ul>
        </div>
<!--         <p class="flightTicktTeam visible-xs" data-toggle="modal" data-target="#myModal"> -->
<!--             航班條款與細則 -->
<!--         </p> -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
<!--                         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button> -->
                        <h4 class="modal-title" id="myModalLabel">航班條款與細則</h4>
                    </div>
                    <div class="modal-body">
                    </div>
                </div>
            </div>
        </div>
			<div style="margin-top: 20px"><input name="need_inv" id="checkboxRead" type="checkbox" style="height:15px;width:15px;"><label for="checkboxRead">我已完整閱讀訂航班條款與細則，並同意所有規定事項。</label></div>

    </section>
   
    
    <form action="">
    
    
     <input id="dealDate" name="dealDate" style="display: none;">
     <input id="orderStatus" name="orderStatus" style="display: none;" value="未付款">
     <input id="" name="" style="display: none;" value="${map.ticketAmount}">
     <input id="" name="" style="display: none;" value="${map.goDay}">
     <input id="" name="" style="display: none;" value="${map.goDeplace}">
     <input id="" name="" style="display: none;" value="${map.goArplace}">
     <input id="" name="" style="display: none;" value="${map.goCompany}">
     <input id="" name="" style="display: none;" value="${map.goCode}">
     <input id="" name="" style="display: none;" value="${map.goCodeOnly}">
     <input id="" name="" style="display: none;" value="${map.goAirEquipType}">
     <input id="" name="" style="display: none;" value="${map.goDeTime}">
     <input id="" name="" style="display: none;" value="${map.homi}">
     <input id="" name="" style="display: none;" value="${map.goArTime}">
     <input id="" name="" style="display: none;" value="${map.backDay}">
     <input id="" name="" style="display: none;" value="${map.backDeplace}">
     <input id="" name="" style="display: none;" value="${map.backArplace}">
     <input id="" name="" style="display: none;" value="${map.backCodeOnly}">
     <input id="" name="" style="display: none;" value="${map.backCompany} ">
     <input id="" name="" style="display: none;" value="${map.backCode} ">
     <input id="" name="" style="display: none;" value="${map.backDeTime}">
     <input id="" name="" style="display: none;" value="${map.backAirEquipType}">
     <input id="" name="" style="display: none;" value="${map.homi2}">
     <input id="" name="" style="display: none;" value="${map.backArTime}">
     <input id="" name="" style="display: none;" value="">
     
    
	<section class="opreatBtn">
        <button class="research" onclick="history.back()" type="button"><i class="glyphicon glyphicon-menu-left"></i>重選航班</button>
        <button class="nextPage" id="btn_post_test">下一步 <i class="glyphicon glyphicon-menu-right"></i></button>
    </section>
	</form>
	
	</div>
	



	<div class="sidebar-cont" id="J_sidebar_cont"
		style="position: static; left: 738.8px; top: 0px; background: rgb(232, 246, 246); min-height: 500px;width: 36%;float:right">
		<div id="J_flightInfo">
			<div class="flight-info "
				style="border-bottom: none; padding-bottom: 0">
				<div class="flight-city">
					<span class="basic-tag">去</span>
					<div class="flt-date">
						${map.goDay}
					</div>
					<div class="flt-depart ">${map.goDeplace}</div>
					&nbsp;
					<div class="flt-arrow">
						<i class="ico-arrow"></i>
					</div>
					&nbsp;
					<div class="flt-arrive ">${map.goArplace}</div>
				</div>
				<div class="flt-tit-group">
					<div class="flight-tit">
						<span class="flt-airline"><img alt="" height="16"
							width="16"
							src="<c:url value="resource/flight/airlines_logo 56_50/${map.goCodeOnly}.gif"/>">
							${map.goCompany} ${map.goCode}</span><span class="plane-type">${map.goAirEquipType}</span> <span
							class="flt-seat">经济舱</span>
					</div>
<!-- 					<div class="flight-tit flight-tit-share"> -->
<!-- 						<i class="ico-shared-flight"></i> <span class="share">共享航班:</span> -->
<!-- 						<span class="actual-ride">实际乘坐</span> <span class="flt-airline"><img -->
<!-- 							src="//pic.c-ctrip.com/flight_intl/airline_logo/32/fm.png" -->
<!-- 							width="16" height="16" alt="">上海航空FM9305</span> -->
<!-- 					</div> -->
				</div>
				<div class="flight-detail">
					<div class="flt-depart">
						<span class="time">${map.goDeTime}</span> <span class="airport">桃園國際機場T2</span>
					</div>
					<div class="flt-arrow flt-non-stop">
						<div class="cost-time">
							<i class="ico-clock"></i>${map.homi}
						</div>
						<div class="timeline">
							<i class="ico-airport"></i> <i class="dot"></i> <i
								class="dot dot-end"></i>
						</div>
					</div>
					<div class="flt-arrive">
						<span class="time">${map.goArTime}</span>
						<div id="arriveTime_1_1" style="display: none">到达时间为第2天，2019年01月16日
							12时10分</div>
						<span class="airport">金海國際機場T1</span>
					</div>
				</div>
<!-- 				<i class="ico-supplier" tooltip-gid="supplier1"></i> -->
				<div class="flight-info " style="padding-top: 0">
					<div class="separation-line"></div>
					<div class="flight-city">
						<span class="basic-tag">返</span>
						<div class="flt-date">
							${map.backDay}
						</div>
						<div class="flt-depart ">${map.backDeplace}</div>
						&nbsp;
						<div class="flt-arrow">
							<i class="ico-arrow"></i>
						</div>
						&nbsp;
						<div class="flt-arrive ">${map.backArplace}</div>
					</div>
					<div class="flight-tit">
						<span class="flt-airline"><img alt="" height="16"
							width="16" 
							src="<c:url value="resource/flight/airlines_logo 56_50/${map.backCodeOnly}.gif"/>">
							${map.backCompany} ${map.backCode} </span><span class="plane-type">${map.backAirEquipType}</span> <span
							class="flt-seat">经济舱</span>
					</div>
					<div class="flight-detail">
						<div class="flt-depart">
							<span class="time">${map.backDeTime}</span> <span class="airport">金海國際機場T1</span>
						</div>
						<div class="flt-arrow flt-non-stop">
							<div class="cost-time">
								<i class="ico-clock"></i>${map.homi2}
							</div>
							<div class="timeline">
								<i class="ico-airport"></i> <i class="dot"></i> <i
									class="dot dot-end"></i>
							</div>
						</div>
						<div class="flt-arrive">
							<span class="time">${map.backArTime}</span>
							<div id="arriveTime_2_1" style="display: none">到达时间为第2天，2019年01月25日
								18时40分</div>
							<span class="airport">桃園國際機場T2</span>
						</div>
					</div>
<!-- 					<i class="ico-supplier"></i> -->
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
							<span>票價</span> <span class="abbr">免費改期</span>
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
							<span class="price"><dfn>NT$</dfn>${map.ticketAmount}</span>
						</div>
					</div>
					<div class="cost-row">
						<div class="cost-tit">
							<span>稅金</span>
							<div id="X-TGTable_0_3" class="tooltip tooltip-table"
								style="display: none; width: auto; font-size: 12px"></div>
						</div>
						<div class="corner">NT$${map.taxAmount}</div>
					</div>
				</div>
				<div class="total-price">
					<span id="J_totalPrice">${map.totalAmount}</span>
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

</div>

<%-- <jsp:include page="/voyage/foo.jsp" /> --%>
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>



</html>