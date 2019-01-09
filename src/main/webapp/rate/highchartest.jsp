<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script -->
<!--   src="https://code.jquery.com/jquery-3.3.1.min.js" -->
<!--   integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" -->
<!--   crossorigin="anonymous"></script> -->
<!-- <script src="../../js.jquery-3.2.1.min.js" type="text/javascript"></script> -->

<script src="voyage/js/highcharts.js"></script>
<script src="./voyage/js/data.js"></script>
<script src="./voyage/js/series-label.js"></script>
<script src="./voyage/js/exporting.js"></script>
<script src="./voyage/js/export-data.js"></script>
</head>
<body>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

<script type="text/javascript">
var xhttp = new XMLHttpRequest();
var chartJson = '';
xhttp.onreadystatechange = function(){
	if (this.status == 200){
		console.log(this.responseText);
		chartJson = this.responseText;
		var chartData = JSON.parse(chartJson);
		console.log("currency 1 = "+ chartData[1]["currency"]);
		//foreach(  chartData ){
			
		}
	
};
xhttp.open("POST", "./ratefindALL", true);
xhttp.send();

Highcharts.chart('container', {

    title: {
        text: '現金匯率'
    },

//     subtitle: {
//         text: '上:本行賣出 下:本行買入'
//     },

    yAxis: {
        title: {
            text: '匯<br>率', 
        	rotation:0,
        }
			
        
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },
    
    xAxis: {
        categories: ['12/22','12/24','12/25','12/26','12/27','12/28','01/02','01/03']
            
        
    },

//     plotOptions: {
//         series: {
//             label: {
//                 connectorAllowed: false
//             },
//             pointStart: 10
//         }
//     },
//jason.stringify陣列轉jason
    series: [{
        name: '美金',
        data: [30.4, 30.41, 30.38, 30.39, 30.37, 30.295, 30.365, 30.465]
    }, {
        name: '日圓',
        data: [31.09, 31.1, 31.07, 31.08, 31.06, 30.985, 31.055, 31.155]
    }, {
        name: '港幣',
        data: [30.77, 30.78, 30.75, 30.76, 30.74, 30.665, 30.735, 30.835]
    }, {
        name: '澳幣',
        data: [30.87, 30.88, 30.85, 30.86, 30.84, 30.765, 30.835, 30.935]
    }, {
        name: '紐元',
        data: [29.4, 29.41, 29.38, 29.39, 29.37, 29.295, 29.365, 29.465]
    },
    ],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }

});
</script>

</body>
</html>