<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ECharts</title>
<!-- 引入 echarts.js -->
<link rel="stylesheet" href="css/gongchang-style.css" />
<script type="text/javascript" src="js/jQuery.js"></script>
<script src="js/echarts.js"></script>

</head>
<body onload="initdata()">

	<div class="grid-wrap">
		<div>
			<input type="text" id="nicheng" placeholder="搜索"> <input
				type="button" onclick="search()" value="搜索">

		</div>
		<div class="grid" id="grid1">
			<div class="grid-header" id="grid1">
				<span class="row-1">姓名</span>
				<!-- <span class="row-1">年龄</span> -->
				<!-- <span class="row-1">性别</span> -->
				<!-- <span class="row-1">手机号码</span> -->
				<!-- <span class="row-1">居住地址</span> -->
			</div>
			<div class="grid-body">
				<!-- <div class="grid-item">
<span class="row-1">zhangxing</span>
<span class="row-1">24</span>
<span class="row-1">男</span>
<span class="row-1">18772351259</span>
<span class="row-1">浙江西湖</span>
</div>

<div class="grid-item">
<span class="row-1">lisishan</span>
<span class="row-1">23</span>
<span class="row-1">女</span>
<span class="row-1">17682317584</span>
<span class="row-1">浙江余杭</span>
</div> -->

			</div>
		</div>
	</div>


	<script type="text/javascript">
		var name;
		var age;
		var sex;
		var phone;
		var address;

		/**初始函数
		 * [initdata description]
		 * @return {[type]} [description]
		 */
		function initdata() {

			alert("进来了");
			$
					.ajax({
						type : "get",
						url : "http://dajiu.ngrok.cc/userInfo/getUserInfo",
						success : function(data, textStatus) {
							alert(data.userInfoList[1].username);
							if (data.status == 1) {
								for (var i = 0; i < data.userInfoList.length; i++) {
									name = "name" + i;
									age = "age" + i;
									sex = "sex" + i;
									phone = "phone" + i;
									address = "address" + i;

									$(".grid-body")
											.append(
													'<div class="grid-item">\
<span class="row-1" id="'+name+'">lisishan</span>\
<span class="row-1" id="'+age+'">23</span>\
<span class="row-1" id="'+sex+'">女</span>\
<span class="row-1" id="'+phone+'">17682317584</span>\
<span class="row-1" id="'+address+'">浙江余杭</span>\
</div>');
									document.getElementById(name).innerHTML = data.userInfoList[i].username;
									document.getElementById(age).innerHTML = data.userInfoList[i].age;
									document.getElementById(sex).innerHTML = data.userInfoList[i].sex;
									document.getElementById(phone).innerHTML = data.userInfoList[i].phone;
									document.getElementById(address).innerHTML = data.userInfoList[i].address;

								}
							}

						},
						complete : function(XMLHttpRequest, textStatus) {

						},
						error : function() {
							alert("请求网络失败！。。。。。。");
						}
					});
		}

		/**模糊搜索
		 * [search description]
		 * @return {[type]} [description]
		 */
		function search() {
			var nicheng = document.getElementById("nicheng").value;
			$('.grid-item').remove();

			$
					.ajax({
						type : "get",
						url : "http://dajiu.ngrok.cc/userInfo/getUserInfoByName?username="
								+ nicheng,
						success : function(data, textStatus) {
							if (data.status == 1) {
								for (var j = 0; j < data.userlist.length; j++) {
									name = "name" + j;
									age = "age" + j;
									sex = "sex" + j;
									phone = "phone" + j;
									address = "address" + j;

									$(".grid-body")
											.append(
													'<div class="grid-item">\
<span class="row-1" id="'+name+'"></span>\
<span class="row-1" id="'+age+'"></span>\
<span class="row-1" id="'+sex+'"></span>\
<span class="row-1" id="'+phone+'"></span>\
<span class="row-1" id="'+address+'"></span>\
</div>');
									document.getElementById(name).innerHTML = data.userlist[j].username;
									document.getElementById(age).innerHTML = data.userlist[j].age;
									document.getElementById(sex).innerHTML = data.userlist[j].sex;
									document.getElementById(phone).innerHTML = data.userlist[j].phone;
									document.getElementById(address).innerHTML = data.userlist[j].address;

								}
							}

						},
						complete : function(XMLHttpRequest, textStatus) {

						},
						error : function() {
							alert("请求网络失败！。。。。。。");
						}
					});
		}
	</script>
</body>
</html>
