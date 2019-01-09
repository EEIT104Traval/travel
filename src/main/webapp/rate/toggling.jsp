<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/rate.css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Flot Examples: Toggling Series</title>
	<link href="./css/examples.css" rel="stylesheet" type="text/css">
	<script language="javascript" type="text/javascript" src="./js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.time.js"></script>
	<script language="javascript" type="text/javascript" src="./js/moment.js"></script>
	<script type="text/javascript">
	
	$(function(){
	var xhttp = new XMLHttpRequest();
	var chartJson = '';
	var dataForChart = {};
	var dataCurrency = [];
	var dataForChartJson;

	xhttp.open("POST", "../ratefindALL", false);
	xhttp.send();
	console.log(xhttp.responseText);
	chartJson = xhttp.responseText;
	var chartData = JSON.parse(chartJson);
	    for( cur in chartData){
	    	console.log('NO.'+cur+': CUR='+chartData[cur]["currency"]);
	    	if( !dataCurrency.find(function(item, index, array){return item === chartData[cur]["currency"];}) ){ //如果沒有處理過這個幣別，就新增
	    		dataCurrency.push(chartData[cur]["currency"]);
	    		var currencyString = chartData[cur]["currency"];
	    		dataForChart[chartData[cur]["currency"]] = {};
	    		dataForChart[currencyString]["label"] = chartData[cur]["currency"];
	    		dataForChart[currencyString]["data"] = [];
	    		dataForChart[currencyString]["data"].push([moment(chartData[cur]["updateTime"], "LLL").valueOf(), chartData[cur]["cashSell"]]);
	    		console.log( 'first currency = '+chartData[cur]["currency"]+' rate = '+chartData[cur]["cashSell"] );
	    	} else {
	    		console.log( 'not first currency = '+chartData[cur]["currency"]+' rate = '+chartData[cur]["cashSell"] );
	    		dataForChart[chartData[cur]["currency"]]["data"].push([moment(chartData[cur]["updateTime"], "LLL").valueOf(), chartData[cur]["cashSell"]]);
	    	}
		}
	    //console.log('dataForChart = '+JSON.stringify(dataForChart));
	    dataForChartJson = JSON.stringify(dataForChart);

		//var datasets = {"USD":{"label":"USD","data":[["December 20, 2018 12:00:00 AM",30.815],["December 21, 2018 12:00:00 AM",3.911],["December 22, 2018 12:00:00 AM",38.83],["December 23, 2018 12:00:00 AM",21.57],["December 24, 2018 12:00:00 AM",22.78],["December 25, 2018 12:00:00 AM",22.58],["December 26, 2018 12:00:00 AM",31.11],["December 27, 2018 12:00:00 AM",0.2831],["December 28, 2018 12:00:00 AM",2.11],["December 29, 2018 12:00:00 AM",3.38],["December 30, 2018 12:00:00 AM",20.59],["December 31, 2018 12:00:00 AM",0.948],["January 1, 2019 12:00:00 AM",0],["January 2, 2019 12:00:00 AM",0],["January 3, 2019 12:00:00 AM",34.99],["January 4, 2019 12:00:00 AM",0],["January 5, 2019 12:00:00 AM",0],["January 6, 2019 12:00:00 AM",0],["January 7, 2019 12:00:00 AM",4.466]]}};
		//var testjson = JSON.parse(datasets);
		var datasets = dataForChart;
		console.log('總數='+datasets);
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
				console.log('name='+key)
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
</head>
<body>

	<div id="header">
		<h2>匯率</h2>
	</div>
	   <button type="button" style="float:right;margin-right: 150px"><a href="rate.jsp" />回上一頁</a></button>
	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling1.jsp" />最近半年走勢圖</a></button>
<!-- 	   <button type="button" style="float:right;margin-right: 10px"><a href="toggling.jsp" />最近三個月走勢圖</a></button> -->

	
	
	<div id="content">

		<div class="demo-container">
			<div id="placeholder" class="demo-placeholder" style="float:left; width:675px;"></div>
<!-- 			<input type="checkbox" id="Toggle"/>全選<br/> -->
			<p id="choices" style="float:right; width:135px;"></p>
		</div>

	</div>

	<div id="footer">
		Copyright &copy; 2007 - 2014 IOLA and Ole Laursen
	</div>

</body>
</html>