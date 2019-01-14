<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="custom-popup/custom.popup-v1.3.1.css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="custom-popup/jquery.custom.popup-v1.3.1.js"></script>
</head>
<body>
	<script>
		var mypops = new Array(40);
		mypops[20] = $.initPopup(
		{	content: "#content",
			targetSelector : "#btn20",
			insideOrFollow : "follow",
			relativePosition : "bottom"
		})
// 		.addButton("确定", function() {
// 			         alert("点击了确定");
// 			//          $(this).parent("div").hide();    
// // 			$('#87').hide();
// 		})

		//         .addButton("确定", function () {
		//             alert("点击了确定");
		//         }).addButton("取消");

		function showPopup(index, content) {
			mypops[index].showPopup(content);
		}
		//         function hidePopup(index, content) {        	
		//         	mypops[index].hidePopup(content);        	        	
		//         }
	</script>
	<div id="87">
		<input type="button" id="btn20" value="在我下方"
			onclick="showPopup(20);">
	</div>
	<div id="content">
   		 我的选择器是 类：content
    <h1>内容是可以自定义样式的，只是弹框把这部分节点嵌到弹框里而已</h1>
</div>
</body>
</html>