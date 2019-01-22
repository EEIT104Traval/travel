<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>測試</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
    });
  } );
  
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
		var r = confirm("確定或取消: rate="+x);
		if(r==true){
			alert("確定價格")
		}else{
			alert("取消確認")
		}
		}	
	}
  
  </script>
</head>
<body>

<link href="./css/ratenotice.css" rel="stylesheet">
<!-- <script src="./js/ratenotice.js"></script> -->


<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<!-- <script src="//code.jquery.com/jquery-2.1.3.min.js"></script> -->
<!------ Include the above in your HEAD tag ---------->

<form action="<c:url value="/secure/rate.controller" />" method="post">
<div id="dialog" title="匯率條件單">
<div class="container">
            <form class="form-horizontal" role="form">
                <h3 style="margin-top: -5px">匯率條件單</h3>
                <div class="form-group">
                    <label for="firstName" style="" class=" control-label" ></label>
                    <div class="col-sm-9"  style="max-width:50%;padding-left: 0px">
                        <input type="text" id="firstName" placeholder="帳號*" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                <label for="lastName" class="control-label" style="padding-top:0px"></label>
                	<select id="select1" name="currency" class="col-sm-9" style="max-width:45%;padding:8px;border-radius:4px">
                		<option value="USD">請選擇幣別</option>
                		<option value="USD">美金</option>
                		<option value="HKD">港幣</option>
                		<option value="GBP">英鎊</option>
                		<option value="AUD">澳幣</option>
                		<option value="CAD">加拿大幣</option>
                		<option value="SGD">新加坡幣</option>
                		<option value="CHF">瑞士法郎</option>
                		<option value="JPY">日圓</option>
                		<option value="ZAR">南非幣</option>
                		<option value="SEK">瑞典幣</option>
                		<option value="NZD">紐元</option>
                		<option value="THB">泰幣</option>
                		<option value="PHP">菲國比索 </option>
                		<option value="DR">印尼幣</option>
                		<option value="EUR">歐元 </option>
                		<option value="KRW">韓元</option>
                		<option value="VND">越南盾</option>
                		<option value="MYR">馬來幣</option>
                		<option value="CNY">人民幣</option>
					</select>
                </div>
                
                <div class="form-group">
                    <label for="email" class="control-label"> </label>
                    <div class="col-sm-9" style="max-width:50%;padding-left:0px;">
                        <input type="email" id="demo" placeholder="請輸入欲買賣匯率金額*" class="form-control" name= "email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="control-label"></label>
                    <div class="col-sm-9" style="max-width:50%;padding-left: 0px" >
                        <input type="text" id="password" placeholder="最後通知日*" class="form-control">
                    </div>
                </div>
                
                <button type="submit" onclick="notice()" class="btn btn-primary btn-block" style="width:30%;padding-left: 0px;margin-left:40px">送出</button>
            </form>
        </div>
	</div>
<button id="opener">Open Dialog</button>
</body>
</html>