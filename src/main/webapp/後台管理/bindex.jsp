<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>後臺管理者系統</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/main.css" rel="stylesheet" type="text/css" />

<script
  src="https://code.jquery.com/jquery-3.3.1.js"integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="crossorigin="anonymous"></script>
</head>
<script>
	$(document).ready(function() {
		$(":checkbox").click(function(){
			window.location.href="/Travel/voyage/index.jsp"		
		});
	})

</script>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<div class="container" id="main" role="main">
				<ul class="menu" style="padding-left: 130px">
					<li><a href="bindex.jsp">會員管理</a>
						<ul class="submenu">
							<li><a href="01_01.jsp">會員查詢</a></li>
							<li><a href="01_02.jsp">訂單查詢</a></li>
						</ul></li>
					<li><a href="bindex.jsp">報表資訊</a>
						<ul class="submenu">
							<li><a href="02_01.jsp">月份報表</a></li>
							<li><a href="02_02.jsp">歷史紀錄</a></li>
						</ul></li>
					<li><a href="bindex.jsp">行程管理</a>
						<ul class="submenu">
							<li><a href="03_01.jsp">新增行程</a></li>
							<li><a href="03_02.jsp">下架行程</a></li>
							<li><a href="03_03.jsp">修改行程</a></li>
							<li><a href="03_04.jsp">查詢行程</a></li>
						</ul></li>
					<li><a href="bindex.jsp">票券管理</a>
						<ul class="submenu">
							<li><a href="04_01.jsp">機票資訊</a></li>
							<li><a href="04_02.jsp">飯店資訊</a></li>
							<li><a href="04_03.jsp">門票資訊</a></li>
						</ul></li>
					<li><a href="bindex.jsp">版面管理</a>
						<ul class="submenu">
							<li><a href="05_01.jsp">跑馬廣告</a></li>
							<li><a href="05_02.jsp">問與答改</a></li>
							<li><a href="05_03.jsp">關於我改</a></li>
							<li><a href="05_04.jsp">圖片修改</a></li>
						</ul></li>
					<li><a href="bindex.jsp">管理者</a>
						<ul class="submenu">
							<li><a href="06_01.jsp">管理者帳號</a></li>
							<li><a href="#">登出</a></li>
						</ul></li>
					<li style="height:54px">
						<div class="switch_demo">
							<input type="checkbox" name="switch_demo" class="switch_demo-checkbox" id="switch_demo"	checked> 
							<label class="switch_demo-label" for="switch_demo">
								<span class="switch_demo-inner"></span>
								<span class="switch_demo-switch"></span>
							</label>
						</div>
					</li>
				</ul>
				<hr>
			</div>
		</div>
	</nav>
</body>
</html>