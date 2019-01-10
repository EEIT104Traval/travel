<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

<body>

<table border="1">
              <thead>                 <!--加個thead方便過濾表頭，不要將其隱藏-->
                 <tr>
                     <th>表頭1</th>
                     <th>表頭2</th>
                 </tr>                
              </thead>
              <tbody id="data">       <!--加個id方便獲取表格主體的行進行顯示和隱藏-->
                 <tr>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>4</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>5</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>6</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>7</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>8</td>
                </tr>
                </tbody>
         </table>
         <div id="nav"></div>      <!--此處為顯示頁碼-->

</body>
<script>

$(document).ready(function() {
	      var rowsShown=3;                             //每頁顯示的行
	      var rowsTotal=$('#data tr').length;          //獲取總共的行
	      var numPages=Math.ceil(rowsTotal/rowsShown); //計算出有多少頁
	      alert(numPages);
	      //顯示頁碼，將頁面加入#nav內
	      for(var i=0;i<numPages;i++){
	          var pageNum=i+1;
	         $('#nav').append('<a href="#" rel="'+i+'">'+pageNum+'</a>&nbsp;');
	     }
	     
// 	     /* 初次分頁操作
// 	14      * 先將全部行隱藏
// 	15      * 再顯示第一頁應該顯示的行數(本示例為3)
// 	16      * 為第一個頁碼加一個值為active的class屬性，方便加樣式
// 	17      * */
	     $('#data tr').hide();
	     $('#data tr').slice(0,rowsShown).show();
	     $('#nav a:first').addClass('active');
	     
	     //頁碼點擊事件
	     $('#nav a').bind('click',function(){
	         $('#nav a').removeClass('active');    //移除所有頁碼的active類
	         $(this).addClass('active');           //為當前頁碼加入active類
	         var currPage=$(this).attr('rel');     //取出頁碼上的值
	         var startItem=currPage*rowsShown;     //行數的開始=頁碼*每頁顯示的行
	         var endItem=startItem+rowsShown;      //行數的結束=開始+每頁顯示的行
	         $('#data tr').hide();                 //全部行都隱藏
	         
	         //顯示從開始到結束的行
	         $('#data tr').slice(startItem,endItem).css('display','table-row');
	     });
	 });

</script>
</html>