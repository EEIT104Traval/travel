<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

 .active{
     padding: 0px;
     border: 1px solid black;
     background-color: gray;
     }

</style>

</head>

<body>
<div id= "content">
 AAA
</div>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

<%-- ${fn:length(select)}! --%>
<%-- <form action="<c:url value="/groupTour2" />"> --%>
count = ${count}
	<table id="id" border="1">
<%-- 		<c:forEach var="select" begin="0" end="${count}" items="${select}"> --%>
<!-- 		<tr> -->
<%-- 			<td>${select.tourNo}</td> --%>
<%-- 			<td>${select.tourName}</td> --%>
<!-- 		</tr> -->
		
<%-- 		</c:forEach> --%>

		
	</table>
<!-- 	 <input type="submit"> -->
<!-- </form> -->
<div id="nav"></div>      <!--此處為顯示頁碼-->
<script>

$(document).ready(function() {
	
	 $.getJSON( "/Travel/groupTour", function( data ) {
// 		 alert("ji");
		var table = "";
		var tr = 0; 
		 $.each(data.result, function(idx,val){
			 console.log("data = "+val.tourNo);
			 
			 tr += 1;
			 table+='<tr>'
			 	  + '<td>'+val.tourNo+'</td>'
			 	  + '<td>'+val.tourName+'</td>'
			 	  + '</tr>'
			 
		 })
// 		 alert("tr="+tr);
		 $("#id").html(table);
		 
		  var rowsShown=3;                             //每頁顯示的行
	      var rowsTotal=$('#id tr').length;          //獲取總共的行
	      var numPages=Math.ceil(rowsTotal/rowsShown); //計算出有多少頁
//	      alert("numPages = "+numPages);
	      //顯示頁碼，將頁面加入#nav內
	      for(var i=0;i<numPages;i++){
	          var pageNum=i+1;
	         $('#nav').append('<a href="#" rel="'+i+'">'+pageNum+'</a>&nbsp;');
	     }
	    
	     $('#id tr').hide(); // 先將全部行隱藏
	     $('#id tr').slice(0,rowsShown).show();// 再顯示第一頁應該顯示的行數(
	     $('#nav a:first').addClass('active');//為第一個頁碼加一個值為active的class屬性，方便加樣式
	     
	     //頁碼點擊事件
	     $('#nav a').bind('click',function(){
	         $('#nav a').removeClass('active');    //移除所有頁碼的active類
	         $(this).addClass('active');           //為當前頁碼加入active類
	         var currPage=$(this).attr('rel');     //取出頁碼上的值
	         var startItem=currPage*rowsShown;     //行數的開始=頁碼*每頁顯示的行
	         var endItem=startItem+rowsShown;      //行數的結束=開始+每頁顯示的行
	         $('#id tr').hide();                 //全部行都隱藏
	         
	         //顯示從開始到結束的行
	         $('#id tr').slice(startItem,endItem).css('display','table-row');
	     });
	 });
	
	      
	 });

</script>
</body>

</html>