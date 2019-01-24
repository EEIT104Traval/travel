<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
    <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/list.js/1.5.0/list.min.js"></script>
<body>
  <div id="a">
  	<!-- 
  		// 屬性設定[註2]
  		data-sort: 指定排序的項目
  	-->
  	<button class="sort" data-sort="name">Sort by name</button>
  	<button class="sort" data-sort="age">Sort by age</button>
  	<input type="text" class="fuzzy-search" />
  	<hr />
<!--   	<ol class="list"> -->
  	<div class="list">
  	<div>
  		<span class="name">Tom</span>
  			<em class="age">25</em>
  	</div>
  	
    <div>
  			<span class="name">Mike</span>
  			<em class="age">30</em>
   </div>
  	<div><span class="name">Jack</span>
  			<em class="age">15</em>
  	</div>
  	</div>		
<!--   	</ul> -->
  </div>
  <script>
  	var example = new List( "a", {
  		// 參數設定[註1]
  		valueNames: [ "name", "age" ] // 項目
  	});
  </script>
</body>
</html>