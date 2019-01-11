<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>快來玩</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
<script>
		var url = location.href;
		var ary = {}
		var params ={}
		if(url.indexOf('?')!=-1)
		{
		    //在此直接將各自的參數資料切割放進ary中
		        ary = {}
		    	ary = url.split('tourNo=');
		    	params.tourNo = ary[1]
		    //此時ary的內容為：
// 			console.log(ary)
// 			alert(ary[1])
		}
		
		$(document).ready(function() {
			$.ajax({
					url : '/Travel/tour/display',
					contentType : 'application/json; charset=UTF-8',
					type : 'get',
					dataType : 'json',
					data:params,
			}).done(function(JData) {
					console.log(JData);
					console.log(JData.TourPictureBean[0].pictitle);
					$("#one div:first-child").append("<img src=images/"+JData.TourPictureBean[0].pic+" alt=/ height='500px'>");
					$("#one>header").append("<h2>"+JData.tourName+"</h2>");
// 					$("#one>div:eq(1)").append("<p>"+JData.TourPictureBean[0].picDetail+"</p>");
					$.each(JData.TourPictureBean, function(index, value) {
						if(index!=0){
							if(index % 2 != 0){
								$("#three").append(
									"<div class='spotlight'>"
										+"<div class='image flush'>"
											+"<img src=images/"+value.pic+">"
										+"</div>"
										+"<div class='inner'>"
											+"<h3>"+value.pictitle+"</h3>"
											+"<p>"+value.picDetail+"</p>"
										+"</div>"
									+"</div>"
									);
							}else{
								$("#three").append(
										"<div class='spotlight alt'>"
											+"<div class='image flush'>"
												+"<img src=images/"+value.pic+">"
											+"</div>"
											+"<div class='inner'>"
												+"<h3>"+value.pictitle+"</h3>"
												+"<p>"+value.picDetail+"</p>"
											+"</div>"
										+"</div>"
										);
							}
						}
					});
			})

		});
</script>	
	<body>

		<!-- Header -->
			<header id="header">
				<div class="logo"><a href="#">Caminar <span>Travel</span></a></div>
			</header>

		<!-- Main -->
			<section id="main">
				<div class="inner">

				<!-- One -->
					<section id="one" class="wrapper style1">

						<div class="image fit flush" id="display_img">
<!-- 							<img src="images/pic02.jpg" alt="" /> -->
						</div>
						<header class="special" >
<!-- 							<h2>Fringilla Fermentum Tellus</h2> -->
<!-- 							<p>vehicula urna sed justo bibendum</p> -->
						</header>
<!-- 						<div class="content"> -->
<!-- 							<p>Curabitur eget semper ante. Morbi eleifend ultricies est, a blandit diam vehicula vel. Vestibulum porttitor nisi quis viverra hendrerit. Suspendisse vel volutpat nibh, vel elementum lacus. Maecenas commodo pulvinar dui, at cursus metus imperdiet vel. Vestibulum et efficitur urna. Duis velit nulla, interdum sed felis sit amet, facilisis auctor nunc. Cras luctus urna at risus feugiat scelerisque nec sed diam. </p> -->
<!-- 							<p>Nunc fringilla metus odio, at rutrum augue tristique vel. Nulla ac tellus a neque ullamcorper porta a vitae ipsum. Morbi est sapien, hendrerit quis mi in, aliquam bibendum orci. Vestibulum imperdiet nibh vitae maximus posuere. Aenean sit amet nibh feugiat, condimentum tellus eu, malesuada nunc. Mauris ac pulvinar turpis, sit amet pharetra est. Ut bibendum justo condimentum, vehicula ex vel, venenatis libero. Etiam vehicula urna sed justo bibendum, ac lacinia nunc pulvinar. Integer nec velit orci. Vestibulum pellentesque varius dapibus. Morbi ullamcorper augue est, sed luctus orci fermentum dictum. Nunc tincidunt, nisl consequat convallis viverra, metus nisl ultricies dui, vitae dapibus ligula urna sit amet nibh. Duis ut venenatis enim.</p> -->
<!-- 						</div> -->
					</section>

				<!-- Two -->
<!-- 					<section id="two" class="wrapper style2"> -->
<!-- 						<header> -->
<!-- 							<h2>Vestibulum Convallis</h2> -->
<!-- 							<p>vehicula urna sed justo bibendum</p> -->
<!-- 						</header> -->
<!-- 						<div class="content"> -->
<!-- 							<div class="gallery"> -->
<!-- 								<div> -->
<!-- 									<div class="image fit flush"> -->
<!-- 										<a href="images/pic03.jpg"><img src="images/pic03.jpg" alt="" /></a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div> -->
<!-- 									<div class="image fit flush"> -->
<!-- 										<a href="images/pic01.jpg"><img src="images/pic01.jpg" alt="" /></a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div> -->
<!-- 									<div class="image fit flush"> -->
<!-- 										<a href="images/pic04.jpg"><img src="images/pic04.jpg" alt="" /></a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div> -->
<!-- 									<div class="image fit flush"> -->
<!-- 										<a href="images/pic05.jpg"><img src="images/pic05.jpg" alt="" /></a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</section> -->

				<!-- Three -->
					<section id="three" class="wrapper">
<!-- 						<div class="spotlight"> -->
<!-- 							<div class="image flush"> -->
<!-- 								<img src="images/pic06.jpg" alt="" /> -->
<!-- 							</div> -->
<!-- 							<div class="inner"> -->
<!-- 								<h3>Viverra Hendrerit</h3> -->
<!-- 								<p>Curabitur eget semper ante. Morbi eleifend ultricies est, a blandit diam vehicula vel. Vestibulum porttitor nisi quis viverra hendrerit. Suspendisse vel volutpat nibh, vel elementum lacus. Maecenas commodo pulvinar dui, at cursus metus imperdiet vel.</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
						
<!-- 						<div class="spotlight alt"> -->
<!-- 							<div class="image flush"> -->
<!-- 								<img src="images/pic07.jpg" alt="" /> -->
<!-- 							</div> -->
<!-- 							<div  class="inner"> -->
<!-- 								<h3>Curabitur Eget</h3> -->
<!-- 								<p>Curabitur eget semper ante. Morbi eleifend ultricies est, a blandit diam vehicula vel. Vestibulum porttitor nisi quis viverra hendrerit. Suspendisse vel volutpat nibh, vel elementum lacus. Maecenas commodo pulvinar dui, at cursus metus imperdiet vel.</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</section>

				</div>
			</section>



		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
<%-- 	<jsp:include page="/voyage/foo.jsp"></jsp:include> --%>

	</body>
</html>