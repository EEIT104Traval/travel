<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
<!-- 		<link rel="stylesheet" href="bootstrap-3.3.7/dist/css/bootstrap.css" /> -->
<!-- 		<script type="text/javascript" src="js/jquery.min.js"></script> -->
<!-- 		<script type="text/javascript" src="bootstrap-3.3.7/dist/js/bootstrap.js"></script> -->
    	<link rel="stylesheet" href="<c:url value='/voyage/css/bootstrap.css' />">
		<script src="<c:url value='/voyage/js/jquery.min.js' />"></script>
		<script src="<c:url value='/voyage/js/bootstrap.min.js' />"></script>
	</head>
 
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-5 col-xs-12 col-md-offset-1">
					<div>
						<div class="col-md-4">
							<input class="form-control" type="text" id="zt_country" value="" readonly="readonly">
							<div></div>
						</div>
					</div>
				</div>
 
				<div class="container-fluid col-md-6 col-xs-12 zt_li" id="zt_countryTabs" tabindex="1" style="width: 550px;display: none; border: solid #C4E2F7 1px; background-color: #FFFFFF;">
					<ul class="nav nav-tabs">
						<li role="presentation" class="active zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-1" data-toggle="tab">1</a>
						</li>
						<li role="presentation" class="zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-2" data-toggle="tab">2</a>
						</li>
						<li role="presentation" class="zt_li">
							<a href="#destinationCountryName-dialog-countryTabs-3" data-toggle="tab">3</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane  active" id="destinationCountryName-dialog-countryTabs-1">
							<div class="col-lg-4 url_div">
								<a class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="标题1" data-code="标题1" style="text-decoration: none; border: 0px">标题1</a>
							</div>
 
						</div>
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs-2">
							<div class="col-lg-4 url_div">
								<a class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="标题2" data-code="标题2" style="text-decoration: none; border: 0px">标题2</a>
							</div>
 
						</div>
						<div class="tab-pane" id="destinationCountryName-dialog-countryTabs-3">
							<div class="col-lg-4 url_div">
								<a class="url-product country layui-btn layui-btn-primary " href="javascript: void(0);" title="标题3" data-code="标题3" style="text-decoration: none; border: 0px">标题3</a>
							</div>
						</div>
 
					</div>
 
				</div>
			</div>
		</div>
		<script type="text/javascript">
			//点击弹出div框
			$("#zt_country").focus(function() {
				var div = document.getElementById('zt_countryTabs');
				if(div.style.display == "none") {
					div.style.display = "block";
					div.style.position = "absolute";
					div.style.zIndex = "3",
						div.style.top = document.getElementById('zt_country').style.top + 36 + "px";
					div.style.left = "224px";
				} else {
					div.style.display = "none";
				}
			});
 
			//当点击a标签以后赋值给input框
			$(".country").click(function() {
				var zt_country = $(this).data('code');
				$("#zt_country").val(zt_country);
				var div = document.getElementById('zt_countryTabs');
				div.style.display = "none";
				$("#zt_country").blur();
				//赋值给全局变量
				consigneeCountry = zt_country;
				//每次选择都清空input的值
				$("#transport").val("");
			});
 
			//失去焦点时间，隔100毫秒执行，不然失去焦点会把上面的点击事件覆盖掉，导致赋值不上去
			$("#zt_country").blur(function() {
				setTimeout(function() {
					var div = document.getElementById('zt_countryTabs');
					div.style.display = "none";
				}, 100);
			});
			$(".zt_li").mousedown(function(event) {
				event.preventDefault();
			})
		</script>
 
	</body>
 
</html>
