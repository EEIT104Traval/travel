<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>TestPopup</title>
<style>
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
}
</style>
<link type="text/css" rel="stylesheet" href="<c:url value='/flight/彈窗/custom-popup/custom.popup-v1.3.1.css'/>">
<!-- <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> -->
<script src="<c:url value='/voyage/js/jquery.min.js' />"></script>
<script src="<c:url value='/flight/彈窗/custom-popup/jquery.custom.popup-v1.3.1.js'/>"></script>

<script>
        var mypops = new Array(40);

        $(function () {
            mypops[33] = $.initPopup({content: "#content",targetSelector: "#btn33",
                insideOrFollow: "follow",
                relativePosition: "bottom"})
                .addButton("确定")
            //---------------------------
            //---------------------------
            //---------------------------

            //---------------------------
            //---------------------------

        });


        function showPopup(index, content) {
           
            mypops[index].showPopup(content);
        }

        
    </script>
</head>
<body>
<!-- 	<table style="width: 100%; height: 70%; text-align: center"> -->
<!-- 		<tbody> -->
<!-- 			<tr> -->
<!-- 				<td><input type="button" id="btn0" value="默认" -->
<!-- 					onclick="showPopup(0,'可以使用键盘的Esc按键关闭弹框');"></td> -->
<!-- 				<td><input type="button" id="btn1" value="一个按键" -->
<!-- 					onclick="showPopup(1,'一个按键');"></td> -->
<!-- 				<td><input type="button" id="btn2" value="两个按键" -->
<!-- 					onclick="showPopup(2,'两个按键');"></td> -->
<!-- 				<td><input type="button" id="btn3" value="三个按键" -->
<!-- 					onclick="showPopup(3,'三个按键');"></td> -->
<!-- 				<td><input type="button" id="btn4" value="四个按键" -->
<!-- 					onclick="showPopup(4,'四个按键');"></td> -->
<!-- 				<td><input type="button" id="btn5" value="五个按键" -->
<!-- 					onclick="showPopup(5,'按键添加是不限制的，想添加多少就多少');"></td> -->
<!-- 				<td><input type="button" id="btn6" value="直角" -->
<!-- 					onclick="showPopup(6,'没错，边框的圆角肯定也要能够设置');"></td> -->
<!-- 				<td><select id="colors"> -->
<!-- 						<option value="red">红色</option> -->
<!-- 						<option value="orange">橙色</option> -->
<!-- 						<option value="yellow">黄色</option> -->
<!-- 						<option value="green">绿色</option> -->
<!-- 						<option value="blue">蓝色</option> -->
<!-- 						<option value="purple">紫色</option> -->
<!-- 				</select> <input type="button" id="btn7" value="颜色主题" -->
<!-- 					onclick="showPopup(7,'主题颜色也是可以自定义的');"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td><input type="button" id="btn8" value="模糊背景" -->
<!-- 					onclick="showPopup(8,'有时候我们希望弹框弹出时，用户不能再点击操作其他部分，让他注意力全集中到弹框上');"></td> -->
<!-- 				<td><input type="button" id="btn9" value="隐藏图标" -->
<!-- 					onclick="showPopup(9,'右上角图标有时候我们不希望它显示');"></td> -->
<!-- 				<td><input type="button" id="btn10" value="更换图标" -->
<!-- 					onclick="showPopup(10,'因为不知道会用到什么图标，所有让大家自定义，我就没在插件里预设');"> -->
<!-- 				</td> -->
<!-- 				<td><input type="button" id="btn11" value="按键左对齐" -->
<!-- 					onclick="showPopup(11,'按键的对齐方式默认为右对齐');"></td> -->
<!-- 				<td><input type="button" id="btn12" value="按键中对齐" -->
<!-- 					onclick="showPopup(12,'按键的对齐方式默认为右对齐');"></td> -->
<!-- 				<td><input type="button" id="btn13" value="按键右对齐" -->
<!-- 					onclick="showPopup(13,'按键的对齐方式默认为右对齐');"></td> -->
<!-- 				<td><input type="button" id="btn14" value="可以拖动" -->
<!-- 					onclick="showPopup(14,'弹框添加可以拖动，虽然这个功能作用不大，但作者我还是想加上去');"></td> -->
<!-- 				<td><select id="size"> -->
<!-- 						<option value="300&200">300*200</option> -->
<!-- 						<option value="400&300">400*300</option> -->
<!-- 						<option value="500&400">500*400</option> -->
<!-- 						<option value="600&350">600*350</option> -->
<!-- 						<option value="500&250">500*250</option> -->
<!-- 				</select> <input type="button" id="btn15" value="宽高" -->
<!-- 					onclick="showPopup(15,'');"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td><input type="button" id="btn16" value="在我上方" -->
<!-- 					onclick="showPopup(16,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 				<td><input type="button" id="btn17" value="在我右上" -->
<!-- 					onclick="showPopup(17,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 				<td><input type="button" id="btn18" value="在我右方" -->
<!-- 					onclick="showPopup(18,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 				<td><input type="button" id="btn19" value="在我右下" -->
<!-- 					onclick="showPopup(19,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 				<td><input type="button" id="btn20" value="在我下方" -->
<!-- 					onclick="showPopup(20,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 				<td><input type="button" id="btn21" value="在我左下" -->
<!-- 					onclick="showPopup(21,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 				<td><input type="button" id="btn22" value="在我左方" -->
<!-- 					onclick="showPopup(22,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 				<td><input type="button" id="btn23" value="在我左上" -->
<!-- 					onclick="showPopup(23,'有时候我们希望弹框弹出的位置不是在中间，而是出现在我们指定的某个节点附近，同时弹框和指定节点的距离也是可以设置的');"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td><input type="button" id="btn24" value="屏幕左方" -->
<!-- 					onclick="showPopup(24,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 				<td><input type="button" id="btn25" value="屏幕左上" -->
<!-- 					onclick="showPopup(25,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 				<td><input type="button" id="btn26" value="屏幕左下" -->
<!-- 					onclick="showPopup(26,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 				<td><input type="button" id="btn27" value="屏幕上方" -->
<!-- 					onclick="showPopup(27,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 				<td><input type="button" id="btn28" value="屏幕下方" -->
<!-- 					onclick="showPopup(28,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 				<td><input type="button" id="btn29" value="屏幕右下" -->
<!-- 					onclick="showPopup(29,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 				<td><input type="button" id="btn30" value="屏幕右上" -->
<!-- 					onclick="showPopup(30,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 				<td><input type="button" id="btn31" value="屏幕右方" -->
<!-- 					onclick="showPopup(31,'有时候我们希望弹框弹出的位置不是在中间，而是指定在某个位置');"></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td><input type="button" id="btn32" value="节点作内容1" -->
<!-- 					onclick="showPopup(32);"></td> -->
<!-- 				<td><input type="button" id="btn33" value="节点作内容2" -->
<!-- 					onclick="showPopup(33);"></td> -->
<!-- 				<td><input type="button" id="btn34" value="节点作内容3" -->
<!-- 					onclick="showPopup(34);"></td> -->
<!-- 				<td><input type="button" id="btn35" value="放大全屏" -->
<!-- 					onclick="showPopup(35,'放大全屏功能是一位热心网友建议，感谢这位网友！');"></td> -->
<!-- 				<td><select id="themeStyle"> -->
<!-- 						<option value="default">默认</option> -->
<!-- 						<option value="dimnav">淡色</option> -->
<!-- 				</select> <input type="button" id="btn36" value="弹框风格" -->
<!-- 					onclick="showPopup(36,'弹框风格');"></td> -->
<!-- 				<td colspan="2"><span>X:</span> <input type="text" -->
<!-- 					style="width: 25px;" value="200" id="pos_x"> <span>Y:</span> -->
<!-- 					<input type="text" style="width: 25px;" value="200" id="pos_y"> -->
<!-- 					<input type="button" id="btn37" value="自定义位置" -->
<!-- 					onclick="showPopup(37,'只要在内嵌的时候自定义位置有效');"></td> -->

<!-- 				<td><select id="animation"> -->
<!-- 						<option value="1">弹出</option> -->
<!-- 						<option value="2">收缩</option> -->
<!-- 						<option value="3">旋转</option> -->
<!-- 						<option value="4">下滑</option> -->
<!-- 						<option value="5">上滑</option> -->
<!-- 						<option value="6">抖动</option> -->
<!-- 				</select> <input type="button" id="btn38" value="弹出风格" -->
<!-- 					onclick="showPopup(38,'弹框弹出风格动画');"></td> -->
<!-- 			</tr> -->

<!-- 			<tr> -->
<!-- 				<td><input type="button" id="btn39" value="多重弹框" -->
<!-- 					onclick="showPopup(39,'打开我的子弹框');"></td> -->
<!-- 			</tr> -->
<!-- 		</tbody> -->
<!-- 	</table> -->
<input type="button" id="btn33" value="节点作内容2"
					onclick="showPopup(33);">
	<div class="content">
		我的选择器是 类：content
		<h1>内容是可以自定义样式的，只是弹框把这部分节点嵌到弹框里而已</h1>
	</div>
	<div id="content" class="test">
		<div >
		<span>成人數量</span>
		<input type="image" src="../../voyage/images/MIN.png" class="min"
			width="8%"> 
		<input type="text" value="1" placeholder="0" id="adultcount"
			class="text_box" readonly="readonly"
			style="text-align: center; height: 30px; width: 40px; margin: 0; border: 0px;">
		<input type="image" src="../../voyage/images/PL.png" class="add"
			width="8%">
		<span>(年滿 16 歲)</span>
		</div>
		<div>
		<span>兒童數量</span>
		<input type="image" src="../../voyage/images/MIN.png" class="min"
			width="8%"> 
		<input type="text" value="" placeholder="0" id="childcount"
			class="text_box" readonly="readonly"
			style="text-align: center; height: 30px; width: 40px; margin: 0; border: 0px;">
		<input type="image" src="../../voyage/images/PL.png" class="add"
			width="8%">
		<span>(2~15 歲)</span>
		</div>
		<div>
		<span>嬰兒數量</span>
		<input type="image" src="../../voyage/images/MIN.png" class="min"
			width="8%"> 
		<input type="text" value="" placeholder="0" id="babycount"
			class="text_box" readonly="readonly"
			style="text-align: center; height: 30px; width: 40px; margin: 0; border: 0px;">
		<input type="image" src="../../voyage/images/PL.png" class="add"
			width="8%">
		<span>(0~2 歲)</span>
		</div>
		<div class="description">旅行時，您須符合預訂規定的年齡層。航空公司對於未滿 18 歲單獨旅行的乘客有限制規定。</div>

		<div class="description">年齡限制與攜兒童旅行的政策可能不同，請先向航空公司確認，然後再進行預訂。</div>
	</div>
	<script>
	$(document).ready(function() {
		peoplechoose();
	});
				function peoplechoose(){				
						$("#content").on("click",".add",function(){ 
		                    var t = $(this).parent().find('input[class*=text_box]');  
		                    if(t.val()==""||undefined||null){  
		                        t.val(0);  
		                    }  
		                    t.val(parseInt(t.val()) + 1)  
		                })  
		                $("#content").on("click",".min",function(){ 
		                    var t = $(this).parent().find('input[class*=text_box]');  
		                    if(t.val()==""||undefined||null){  
		                        t.val(0);  
		                    }  
		                    t.val(parseInt(t.val()) - 1)  
		                    if(parseInt(t.val()) < 0) {  
		                        t.val(0);  
		                    }  
					})
				}      

</script>
</body>
</html>