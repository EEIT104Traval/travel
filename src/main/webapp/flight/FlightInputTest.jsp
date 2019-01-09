<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Baidu</title>
<style type="text/css">
.inputbox-text {
	folat: left;
	display: block;
	font-size: 12px;
	line-height: 28px;
	height: 28px;
	width: 70%;
	padding: 0;
	border: 0 solid #ccc;
	border-right: 0 solid #ccc;
	overflow: hidden;
	padding-left: 3px;
	margin: 0 auto;
	color: #444;
	box-sizing: border-box;
	padding: 0 5px;
}

.inputbox-text-border {
	border: 1px solid #dadada !important;
}

.inputbox-text {
	display: inline-block;
}

.d-search-container-2x .d-search-condition, .d-search-container-2x .d-search-condition-btn
	{
	padding: 0 0 0 190px;
	box-sizing: border-box;
}

.inputbox-text-readonly {
	background: #DDDDDD;
}

 
.d-search-condition-label {
	display: inline-block;
	font-size: 12px;
	text-align: right;
	width: 60px;
	folat: left;
	 
}
/* 必填项提示，红色* */
.input-required {
	
}

.d-search-autodiv {
	folat: left;
	display: block;
	font-size: 12px;
	line-height: 28px;
	position: fixed padding:0;
	border: 0 solid #ccc;
	border-right: 0 solid #ccc;
	background: #fff;
	overflow: hidden;
	padding-left: 3px;
	margin-left: 120px;
	color: #444;
	box-sizing: border-box;
	padding: 0 5px;
}

.d-search-autoselect {
	folat: left;
	display: block;
	font-size: 12px;
	line-height: 28px;
	padding: 0;
	border: 0 solid #ccc;
	border-right: 0 solid #ccc;
	background: #fff;
	overflow: hidden;
	padding-left: 3px;
	margin-left: 120px;
	color: #444;
	box-sizing: border-box;
	padding: 0 5px;
}
</style>
</head>
<body>
	<div class="d-search-condition">
		<label class="d-search-condition-label">出發地</label> <input
			type="text" id="zybrxm" name="zybrxm" maxlength="20"
			value="${zybrxm}" oninput="change()" required="required"
			 class="inputbox-text inputbox-text-border"> <label
			class="input-required">*</label>
	</div>
	<!-- 模糊查询匹配 -->
	<div id='brxmDiv' class="d-search-autodiv" onmouseleave="hide()"
		style="display: none;">
		  <select id='brxmSelect' size="3" onclick="checked()"
			style='margin-top: 0px;' class="d-search-autoselect">
		</select>

	</div>
	<script type="text/javascript">
		//模糊查询
		function change() {
			alert("change");
			var content = "";

			var sc = $("#zybrxm").val();

			//清空之前的模糊匹配信息
			document.getElementById("brxmSelect").options.length = 0;

			//显示div  设置显示的高度
			$("#brxmDiv").css("display", "block");
			var zybrxmWidth = $('#zybrxm').width();
			$("#brxmSelect").css("width", zybrxmWidth);

			//ajax 开始
			$.ajax({
				type : "POST",
				dataType : "JSON",
				url : '${pageContext.request.contextPath }/select',

				//参数
				data : {
					sc : sc
				},
				success : function(data) {

					//遍历返回的JsonArray
					$.each(data, function(index, data) {
						content += "<option value="+data['bh']+"> " + "["
								+ data['bh'] + "]" + data['mc'] + "</option>";
					});

					//动态将option 写入select
					document.getElementById("brxmSelect").innerHTML = content;
				}
			});
		}
		//模糊查询select选中事件 可以赋值或是进行其他操作
		function checked() {
			alert("checked");
			var myselect = document.getElementById("brxmSelect");
			var index = myselect.selectedIndex;
			$("#zybrbh").val(myselect.options[index].value);
			$("#zybrxm").val(myselect.options[index].text.split("]")[1]);
		}
		//鼠标滑出模糊查询div，隐藏div事件
		function hide() {
			alert("hide");
			$("#brxmDiv").css("display", "none");
		}
	</script>


</body>
</html>
