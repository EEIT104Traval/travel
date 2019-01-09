<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
	
<!DOCTYPE html>
<html lang="tw-zh">
<link rel="stylesheet" href="./css/main_styles.css">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>RateIndex</title>
    <link rel="stylesheet" href="./css/rate.css">
	<link href="./css/examples.css" rel="stylesheet" type="text/css">
	<script language="javascript" type="text/javascript" src="./js/jquery.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="./js/jquery.flot.time.js"></script>
	<script language="javascript" type="text/javascript" src="./js/moment.js"></script>

	
<!--	https://hk.saowen.com/a/3bb2d62596486787bb77995a447207f180a828af15cddf5912c0aceaad24caf0 -->
	<script type="text/javascript">

	$(function(){
	var xhttp = new XMLHttpRequest();
	var chartJson = '';
	var dataForChart = {};
	var dataCurrency = [];
	var dataForChartJson;

	xhttp.open("POST", "../ratefindALL01", false);
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

	</script>	
</head>

<body>

	<!-- END nav -->
	<section class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url('images/pic01.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row slider-text align-items-center">
					<div class="col-md-7 col-sm-12 ftco-animate">
						<p class="breadcrumbs">
<!-- 							<span class="mr-2"><a href="index.jsp">Home</a></span> <span>ticket</span> -->
						</p>
<!-- 						<h1 class="mb-3"></h1> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	
		<div class="home_search">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_search_container">
						<div class="home_search_title">匯率</div>
						<div class="home_search_content">
							<form action="#" class="home_search_form" id="home_search_form"
								method="get">
								<div >
  	   							 <button type="button" style="float:right;margin-bottom: 10px ;margin-left: 10px"><a href="rate.jsp" />回上一頁</a></button>
	   <button type="button" style="float:right;margin-bottom: 10px"><a href="toggling1.jsp" />最近半年走勢圖</a></button>
       
       <div id="content">
		<div class="demo-container">
			<div id="placeholder" class="demo-placeholder" style="float:left; width:675px;"></div>
			<p id="choices" style="float:right; width:135px;"></p>
		</div>

	    </div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- END slider -->

	<jsp:include page="/voyage/foo.jsp" />
	
	
</body>
</html>