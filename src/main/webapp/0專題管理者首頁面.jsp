
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="author" content="Script Tutorials" />
    <title>Whirling dropdown menu | Script Tutorials</title>

    <!-- add styles -->
    <link href="css/main.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <div class="container" id="main" role="main">
        <ul class="menu">
            <li><a href="#">會員管理</a>
                <ul class="submenu">
                    <li><a href="#">會員查詢</a></li>
                    <li><a href="#">奧客管理</a></li>
                    <li><a href="#">紅利管理</a></li>
                </ul>
            </li>
            <li><a href="#s1">行程管理</a>
                <ul class="submenu">
                    <li><a href="#">新增行程</a></li>
                    <li><a href="#">行程修改</a></li>
                    <li><a href="#">上架行程</a></li>
                    <li><a href="#">下架行程</a></li>
                </ul>
            </li>
            <li><a href="#">行程細項</a>
                <ul class="submenu">
                    <li><a href="#">行程廣告</a></li>
                    <li><a href="#">行程評價</a></li>
                    <li><a href="#">行程費用</a></li>
                    <li><a href="#">行程備註</a></li>
                    <li><a href="#">報名須知</a></li>
                    <li><a href="#">常見問題</a></li>
                </ul>
            </li>
            <li class="active"><a href="#s2">訂票系統</a>
                <ul class="submenu">
                    <li><a href="#">機票</a></li>
                    <li><a href="#">飯店</a></li>
                    <li><a href="#">門票</a></li>
                </ul>
            </li>
            <li><a href="#">主題控</a>
                <ul class="submenu">
                    <li><a href="#">新增主題內容</a></li>
                    <li><a href="#">修改主題內容</a></li>
                    <li><a href="#">刪除主題內容</a></li>
                </ul>
            </li>
            <li><a href="#">報表查詢</a>
                <ul class="submenu">
                    <li><a href="#">上月出團總數</a></li>
                    <li><a href="#">上月即將成團</a></li>
                    <li><a href="#">上月售票總數</a></li>
                    <li><a href="#">本月出團總數</a></li>
                    <li><a href="#">本月即將成團</a></li>
                    <li><a href="#">本月售票總數</a></li>
                </ul>
            </li>
            <li>
                <a href="#">管理者</a>
                <ul class="submenu">
                    <li><a href="#">新增管理者</a></li>
                    <li><a href="#">管理者權限</a></li>
                    <li><a href="#">登出</a></li>
                </ul>
            </li>
            <li>
                <div class="switch_demo">
                    <a href="#"></a>
                    <input type="checkbox" name="switch_demo" class="switch_demo-checkbox" id="switch_demo" checked>
                    <label class="switch_demo-label" for="switch_demo">
                        <span class="switch_demo-inner"></span>
                        <span class="switch_demo-switch"></span>
                    </label>
                </div>
        </li>
        </ul>
    </div>
  
    </body>

</html>