<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/rate.css">
<style type="text/css">
	body{
		background: url("images/pic01.jpg");
	}
	
	#table1 td {
			padding-left: 16px;
			font-size: 90%;
			text-align:center;
			font-weight:bold;
	}
	
	#table2 td {
			padding-left: 15px;
			font-size: 85%;
/* 			width:15% */
	}
	
	option{
	background-color:pink;
	}
	
	button{
	background-color:#99BBFF;
	}
	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Time To Travel</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
	<link href="./css/examples.css" rel="stylesheet" type="text/css">
<!-- 	<script language="javascript" type="text/javascript" src="./js/jquery.js"></script> -->
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.time.js"></script>
	<script language="javascript" type="text/javascript" src="./js/moment.js"></script>
<!-- 	<script language="javascript" type="text/javascript" src="./js/main.js"></script> -->
	 <script src="<c:url value='/voyage/js/main.js' />"></script>
<%-- 	<link rel="stylesheet" href="<c:url value='/voyage/css/bootstrap-datepicker.css' />"> --%>
<%-- 	<link rel="stylesheet" href="<c:url value='/voyage/css/jquery.timepicker.css' />"> --%>
<%-- 	<script src="<c:url value='/voyage/js/bootstrap-datepicker.js' />"></script> --%>
<%-- 	<script src="<c:url value='/voyage/js/jquery.timepicker.min.js' />"></script> --%>
<!-- 	<script src="http://www.bootcss.com/p/bootstrap-datetimepicker/index.htm"></script> -->
<!--   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<!--   <link rel="stylesheet" href="/resources/demos/style.css"> -->
<!--   <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!--   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
	<script>
// $(document).ready(function(){

	
// 	var time = RateNoticeBean.deadline;
// 	alert(time)
// // 	$("#table2 td:nth-child(3)").val();
	
	
	
// })
	
function disp_prompt(){
	var price = prompt("輸入匯率價格")
	if (price!=null && price!=""){
		document.getElementById("prompt").innerHTML="您輸入的匯率為"+price;
	}
}

function show_confirm(){
	var r = confirm("確定或取消");
	if(r==true){
		alert("確定價格")
	}else{
		alert("取消確認")
	}
}

function notice(){
	var x =document.getElementById("demo").value;
	try{		
		if(x=="") throw "請輸入數值";
		if(isNaN(x)) throw "不是數字"		
	}
	catch(err){
		var y = document.getElementById("mess");
		alert("輸入錯誤，"+err+"。")
	}
	if(x==""||isNaN(x)){
		
	}else{
	var r = confirm("您輸入的匯率為"+x+"(元)");
// 	if(r==true){
// 		alert("確定價格")
// 	}else{
// 		alert("取消確認")
// 	}
	}	
}
</script>
	
	<script>
	var accountName = "${sessionScope.accountName}";//抓名字
	
	function alertRate(){
		$.ajax({
			url : '/Travel/voyage/checkRate.controller',
			contentType : 'application/json; charset=UTF-8',
			type : 'get',
			dataType : 'json',
			data : {
				'accountName' : accountName,
			},
			
		}).done(function(e) {
			//
			console.log("ˋ抓到"+e["targetRate"]);
			if (e["currency"]){
				alert("Hello "+accountName+"!! 您輸入的匯率價格31.1元已到價，可準備兌換囉!!! ")
			}else{
				alert("Hello"+accountName+"!! 你輸入的價格未到價")
			}
		});
	}
	
	$(function(){
	var xhttp = new XMLHttpRequest();
	var chartJson = '';
	var dataForChart = {};
	var dataCurrency = [];
	var dataForChartJson;

	xhttp.open("POST", "../ratefindALL01", false);
	xhttp.send();
// 	console.log(xhttp.responseText);
	chartJson = xhttp.responseText;
	var chartData = JSON.parse(chartJson);
	    for( cur in chartData){
// 	    	console.log('NO.'+cur+': CUR='+chartData[cur]["currency"]);
	    	if( !dataCurrency.find(function(item, index, array){return item === chartData[cur]["currency"];}) ){ //如果沒有處理過這個幣別，就新增
	    		dataCurrency.push(chartData[cur]["currency"]);
	    		var currencyString = chartData[cur]["currency"];
	    		dataForChart[chartData[cur]["currency"]] = {};
	    		dataForChart[currencyString]["label"] = chartData[cur]["currency"];
	    		dataForChart[currencyString]["data"] = [];
	    		dataForChart[currencyString]["data"].push([moment(chartData[cur]["updateTime"], "LLL").valueOf(), chartData[cur]["cashSell"]]);
// 	    		console.log( 'first currency = '+chartData[cur]["currency"]+' rate = '+chartData[cur]["cashSell"] );
	    	} else {
// 	    		console.log( 'not first currency = '+chartData[cur]["currency"]+' rate = '+chartData[cur]["cashSell"] );
	    		dataForChart[chartData[cur]["currency"]]["data"].push([moment(chartData[cur]["updateTime"], "LLL").valueOf(), chartData[cur]["cashSell"]]);
	    	}
		}
	    //console.log('dataForChart = '+JSON.stringify(dataForChart));
	    dataForChartJson = JSON.stringify(dataForChart);

		//var datasets = {"USD":{"label":"USD","data":[["December 20, 2018 12:00:00 AM",30.815],["December 21, 2018 12:00:00 AM",3.911],["December 22, 2018 12:00:00 AM",38.83],["December 23, 2018 12:00:00 AM",21.57],["December 24, 2018 12:00:00 AM",22.78],["December 25, 2018 12:00:00 AM",22.58],["December 26, 2018 12:00:00 AM",31.11],["December 27, 2018 12:00:00 AM",0.2831],["December 28, 2018 12:00:00 AM",2.11],["December 29, 2018 12:00:00 AM",3.38],["December 30, 2018 12:00:00 AM",20.59],["December 31, 2018 12:00:00 AM",0.948],["January 1, 2019 12:00:00 AM",0],["January 2, 2019 12:00:00 AM",0],["January 3, 2019 12:00:00 AM",34.99],["January 4, 2019 12:00:00 AM",0],["January 5, 2019 12:00:00 AM",0],["January 6, 2019 12:00:00 AM",0],["January 7, 2019 12:00:00 AM",4.466]]}};
		//var testjson = JSON.parse(datasets);
		var datasets = dataForChart;
// 		console.log('總數='+datasets);
		// hard-code color indices to prevent them from shifting as
		// countries are turned on/off

		var i = 0;
		$.each(datasets, function(key, val) {
			val.color = i;
			++i;
		});

		// insert checkboxes 
		var choiceContainer = $("#choices");
		$.each(datasets, function(key, val) {
			choiceContainer.append("<br/><input type='checkbox' name='" + key +
				"' checked='checked' id='id" + key + "'></input>" +
				"<label for='id" + key + "'>"
				+ val.label + "</label>");
		});

		choiceContainer.find("input").click(plotAccordingToChoices);

		function plotAccordingToChoices() {
// 			var options={
// 					series:{
// 						lines:{show:true},
// 						points:{
// 							radius:3,
// 							show:true
// 						}
// 					}
// 			};

			var data = [];

			choiceContainer.find("input:checked").each(function () {
				
				var key = $(this).attr("name");
// 				console.log('name='+key)
				if (key && datasets[key]) {
					data.push(datasets[key]);
				}
			});

			if (data.length > 0) {
				$.plot("#placeholder", data, {
					yaxis: {
						min: null,
						ticks:10
					},
					xaxis: {
						mode:"time",
						timeformat:"%m/%d",		
					}
				});
			}
		}

		plotAccordingToChoices();

		// Add the Flot version string to the footer

		$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
	});
// 		$('#Toggle').change(function(){
// 			var b =$(this).prop("checked");
// 			$(':checkbox[name=key]').prop("checked",b);
// 		})
	</script>
	<link rel="icon" href="<c:url value='/voyage/favicon.ico' />">
</head>
<body>
  <script>
  $( function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      }
    });
 
    $( "#opener" ).on( "click", function() {
      $( "#dialog" ).dialog( "open" );

      $('#accountName').val(accountName);
//       $('#checkin_date').val(todayvalue);
      $( "#checkin_date" ).datepicker();
      $( "#checkin_date" ).change(function(){
    	  var d = new Date($(this).val());
    	  var year = d.getFullYear()
    	  var month = parseInt(d.getMonth())+1
    	  var date = d.getDate()
    	  $(this).val(year+'/'+month+'/'+date);
      });
    });
  } );
  
  $( function() {
	    $( "#dialog1" ).dialog({
	      autoOpen: false,
	      show: {
	        effect: "blind",
	        duration: 1000
	      },
	      hide: {
	        effect: "explode",
	        duration: 1000
	      }
	    });
	 
	    $( "#opener1" ).on( "click", function() {

	    		$("#searchuser").html("")
	    		

	    	$.ajax({
	    		method: "GET",
	    		url:'/Travel/voyage/rateSelect.controller',
	    		contentType : 'application/json; charset=UTF-8',
	    		dataType: "json",
	    		data:{
	    			'accountName':	accountName,
	    		},
	    		
// 	    		success: function(json) {
// 	    			alert("Hello!! "+json.accountName);
// 					console.log(json)
// 	    		}
	    	})
	    			.done(function(JData) {
	    				$("#searchuser").append(
	    				  '<table id="table1"><td>幣別</td><td>匯率</td><td>最後通知日</td><td>刪除</td></table>'	
	    				);
	    				
// 	    				console.log(json)
	    				$.each(JData,function(idx,RateNoticeBean){
	    					console.log(RateNoticeBean.accountName)
	    					console.log(RateNoticeBean.deadline)
	    					date = new Date(RateNoticeBean.deadline)
	    					$("#searchuser").append(
	    							
	    							'<table id="table2"><td>'+RateNoticeBean.currency +'</td>'
	      							+'<td style="width:40%;">'+RateNoticeBean.targetRate +'元</td>'
	      							+'<td style="width:5%;padding-right:10%">'+date.getFullYear()+'/'+parseInt(date.getMonth()+1)+'/'+date.getDate()+'</td>'
	      							+'<td style="width:100%;padding-left:10%"><input type="image" src="images/gb.png" width="70%" height="15%" alt="send" name="Test" id="Test" onclick="deleteOrder();" /></td></table>'
	    					
	    					)
	    							
	    				})
	    								
// 	    										'<table class="table table-hover"><th scope="row" style="text-align:center" name="orderNo">'
// 	    												+ JData.RateNoticeBean[i].currency
// 	    												+ '</th>'
// 	    												+ '<th scope="row" style="text-align:center" name="tourName">'
// 	    												+ JData.RateNoticeBean[i].targetRate
// 	    												+ '</th>'
// 	    												+ '<th scope="row" style="width:5%" name="quantity">'
// 	    												+ JData.RateNoticeBean[i].deadline
// 	    												+ '</th>'
// 	    												+ '<th scope="row" style="width:15%" name="orderTime">'
// 	    												+ JData.RateNoticeBean[i].registerDate
// 	    												+ '</th>'
// 	    												+ '<th scope="row" style="width:10%" name="totalPrice"></th></table>')
	    					})
	    	
	      $( "#dialog1" ).dialog( "open" );
	    });
	  } );
  </script>

<div id="dialog" title="匯率條件單" style="background:	#99BBFF;border: 1px none black">
<h5>請輸入欲通知的匯率金額</h5>
<form action="<c:url value="/secure/rate.controller" />" method="post">
<table>
<tr>
<td>帳號:</td>
</tr>
<tr>
<td><input type="text" id="accountName" name="accountName" style="border-radius:4px;margin-bottom:10px;"><br></td>
</tr>
<tr>
<td>幣別:</td>
</tr>
<tr>
<td><select id="select1" name="currency" class="col-sm-9" style="max-width:300%;padding:4px;padding-right:36%;border-radius:4px;margin-bottom:10px;">
                		<option value="USD">請選擇幣別</option>
                		<option value="USD">美金USD</option>
<!--                 		<option value="HKD">港幣</option> -->
                		<option value="GBP">英鎊GBP</option>
                		<option value="CHF">瑞士法郎CHF</option>
                		<option value="EUR">歐元EUR </option>
                		<option value="AUD">澳幣AUD</option>
                		<option value="CAD">加拿大幣CAD</option>
                		<option value="SGD">新加坡幣SGD</option>
<!--                 		<option value="JPY">日圓</option> -->
<!--                 		<option value="ZAR">南非幣</option> -->
<!--                 		<option value="SEK">瑞典幣</option> -->
                		<option value="NZD">紐元NZD</option>
<!--                 		<option value="THB">泰幣</option> -->
<!--                 		<option value="PHP">菲國比索 </option> -->
<!--                 		<option value="DR">印尼幣</option> -->
<!--                 		<option value="KRW">韓元</option> -->
<!--                 		<option value="VND">越南盾</option> -->
<!--                 		<option value="MYR">馬來幣</option> -->
<!--                 		<option value="CNY">人民幣</option> -->
					</select></td>
</tr>
<tr>
<td>匯率:</td>
</tr>
<tr>
<td><input type="text" id="demo" name="targetRate" style="border-radius:4px;margin-bottom:10px;"><br></td>
</tr>
<tr>
<td>最後通知日:</td>
</tr>
<tr>
<%-- <fmt:formatDate value="" pattern="yyyy-MM-dd" var="deadline"/> --%>
<td><input type="text" id="checkin_date" autocomplete="off" name="deadline" style="border-radius:4px;margin-bottom:10px;"></td>
<!-- <input type="text" class="search_input_1" id="checkin_date" placeholder="yyyy/MM/dd" name="takeoff_date" autocomplete="off"> -->
</tr>
</table>
<button onclick="notice()" style="margin-left:80px;margin-top:10px;text-align:center">送出</button><br/>
</form>
</div>
 <!-- 匯率到價通知 ↑↑↑-->
 
 <div id="dialog1" title="匯率設定查詢" style="background:	#99BBFF;border: 1px none black">
<h5></h5>
<form action="<c:url value="/secure/rate.controller" />" method="post">
<table id="table1" style="border-collapse:collapse; ">


<!-- <tr> -->
<!-- <td>幣別</td> -->

<!-- <td>匯率</td> -->

<!-- <td>最後通知日</td> -->
<!-- </tr> -->
<div class="row" id="searchuser"></div>

</table>
</form>
</div>
 
  <!-- 匯率通知查詢 ↑↑↑class=legend-->
<!-- <button id="opener">Open Dialog</button> -->

	<div id="header">
		<h2 style="color:#FFFFBB;padding-top: 2%">匯率-最近半年走勢圖</h2>
	</div>
<!-- 	<div style="margin-bottom: 20px;margin-top:10px"> -->
	<div style="padding:1.2%;padding-right:10%">
	   <button type="button" style="border-radius: 6px;float:right;margin-right: 150px"><a href="<c:url value='rateindex3.jsp'/>" />回匯率首頁</a></button>
	   <button type="button" style="border-radius: 6px;float:right;margin-right: 10px;margin-bottom:-1000px"><a href="<c:url value='toggling.jsp'/>" />最近三個月走勢圖</a></button>
	   <button id="opener" type="button" style="border-radius: 6px;color:	#003C9D;float:right;margin-right: 190px;margin-bottom:-1000px">設定匯率價格</button>  
	   <button id="opener1" type="button" style="border-radius: 6px;color:	#003C9D;float:right;margin-right: 330px;margin-bottom:-1000px" onclick="alertRate()">查詢設定</button>                                                                                
	 
	</div> 
	
	<div id="content">

		<div class="demo-container" style="border-radius: 10px">
			<div id="placeholder" class="demo-placeholder" style="float:left; width:675px;"></div>
<!-- 			<input type="checkbox" id="Toggle"/>全選<br/> -->
			<p id="choices" style="float:right; width:135px;"></p>
		</div>

	</div>

	<div id="footer">
		Copyright &copy; 2019 Time To Travel
	</div>

</body>
</html>