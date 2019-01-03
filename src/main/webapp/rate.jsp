<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-tw">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>銀行匯率</title>
    <style>
        .tb1 {
            width: 1000px;
            border: 3px solid #0080ff;
            border-collapse: collapse;
        }

        td,
        th {
            border: 1px solid gray;
        }
        thead {
            background-color:	#46a3ff;
            color:#ffffff;
            border-bottom:3px double 	#ff5809;
        }
        tbody {
            background-color:	#c4e1ff;
            text-align:center;
        }
        tbody tr:nth-child(2n) {
            background-color:	#acd6ff;
        }
        tbody tr:nth-child(2n+1) {
            background-color:	#e0e0e0;
        }
        tbody tr:hover {
            background-color:#ffffff;
        }
    </style>
</head>

<body>
    <table class="tb1">
        <caption><h3>匯率</h3></caption>
        <thead>
            <tr>
                <th rowspan="2">幣別</th>
                <th colspan="2">現金匯率</th>
                <th colspan="2">即期匯率</th>
                <th rowspan="2">遠期匯率</th>
                <th rowspan="2">歷史匯率</th>
            </tr>

            <tr>
                
                <th>本行買入</th>
                <th>本行賣出</th>
                <th>本行賣出</th>
                <th>本行賣出</th>

            </tr>
        </thead>
        <tbody>
            <tr>
                <td>美金(USD)</td>
                <td>30.65</td>
                <td>31.055</td>
                <td>30.735</td>
                <td>30.835</td>
                <td><a href="">查詢</a></td>
                <td><a href="">查詢</a></td>
            </tr>
             <tr>
                <td>港幣(HKD)</td>
                <td>3.762</td>
                <td>3.978</td>
                <td>3.898</td>
                <td>3.958</td>
                <td><a href="">查詢</a></td>
                <td><a href="">查詢</a></td>
            </tr>


<!--             <tr> -->
<!--                 <td>002</td> -->
<!--                 <td colspan="2">netbook</td> -->
<!--             </tr> -->
<!--  			<tr> -->
<!--                 <td>005</td> -->
<!--                 <td>iPhone</td> -->
<!--                 <td rowspan="3">20000</td> -->
<!--             </tr> -->
        </tbody>
    </table>
</body>

</html>