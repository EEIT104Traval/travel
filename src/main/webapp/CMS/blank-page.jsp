<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
</head>

<style>
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+TC&subset=chinese-traditional');

 body {
        font-family: 'Noto Sans TC', sans-serif;
      }
</style>
<script>
	$(document).ready(function() {
		$(":checkbox").click(function(){			
			window.location.href="/Travel/voyage/index.jsp"			
		});
		
	})
	function signout() {
		$.ajax({
			url : '/Travel/secure/log_out.controller',
			type : 'get',
			dataType : 'text',
		}).done(function(e) {
			alert("登出成功")
			window.location="/Travel/voyage/index.jsp";
		})
	}
</script>
<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="/Travel/CMS/blank-page.jsp" style="font-family: Noto Sans TC">後台管理系統</a>
        <a class="navbar-brand brand-logo-mini" href="/Travel/CMS/blank-page.jsp" style="font-family: Noto Sans TC">後台管理系統</a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <div class="search-field d-none d-md-block">
          <form class="d-flex align-items-center h-100" action="#">
            <div class="input-group">
              <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>                
              </div>
              <input type="text" class="form-control bg-transparent border-0" style="font-family: Noto Sans TC" placeholder='搜尋'>
            </div>
          </form>
        </div>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
<!--               <div class="nav-profile-img"> -->
<!--                 <img src="/images/faces/face1.jpg" alt="image"> -->
<!--                 <span class="availability-status online"></span>              -->
<!--               </div> -->
              <div class="nav-profile-text">
                <p class="mb-1 text-black" style="font-family: Noto Sans TC">${accountName}</p>
              </div>
            </a>   
          </li>
          <li class="nav-item d-none d-lg-block full-screen-link">
            <a class="nav-link">
              <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
            </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi mdi-email-outline"></i>
              <span class="count-symbol bg-warning"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
              <h6 class="p-3 mb-0">Messages</h6>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark send you a message</h6>
                  <p class="text-gray mb-0">
                    1 Minutes ago
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh send you a message</h6>
                  <p class="text-gray mb-0">
                    15 Minutes ago
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
                  <p class="text-gray mb-0">
                    18 Minutes ago
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <h6 class="p-3 mb-0 text-center">4 new messages</h6>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-bell-outline"></i>
              <span class="count-symbol bg-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <h6 class="p-3 mb-0">Notifications</h6>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-success">
                    <i class="mdi mdi-calendar"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                  <p class="text-gray ellipsis mb-0">
                    Just a reminder that you have an event today
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-warning">
                    <i class="mdi mdi-settings"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                  <p class="text-gray ellipsis mb-0">
                    Update dashboard
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="mdi mdi-link-variant"></i>
                  </div>
                </div>
                <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                  <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                  <p class="text-gray ellipsis mb-0">
                    New admin wow!
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <h6 class="p-3 mb-0 text-center">See all notifications</h6>
            </div>
          </li>
          <li class="nav-item nav-logout d-none d-lg-block">
            <a onclick="signout()" class="nav-link" href="##">
              <i class="mdi mdi-power"></i>
            </a>
          </li>
          <li class="nav-item nav-settings d-none d-lg-block">
            <a class="nav-link" href="#">
              <i class="mdi mdi-format-line-spacing"></i>
            </a>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="<c:url value='/voyage/index.jsp'/>">
              <span class="menu-title" style="font-family: Noto Sans TC">Time To Travel 首頁</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#member" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title" style="font-family: Noto Sans TC">會員管理</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-account-card-details"></i>
            </a>
            <div class="collapse" id="member">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" style="font-family: Noto Sans TC" href="01_01.jsp">會員查詢</a></li>
                <li class="nav-item"><a class="nav-link" style="font-family: Noto Sans TC" href="01_02.jsp">訂單查詢</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#lql" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title" style="font-family: Noto Sans TC">報表管理</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-account-card-details"></i>
            </a>
            <div class="collapse" id="lql">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"><a class="nav-link" style="font-family: Noto Sans TC" href="02_01.jsp">報表查詢</a></li>
                <li class="nav-item"><a class="nav-link" style="font-family: Noto Sans TC" href="02_02.jsp">歷史查詢</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ticket" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title" style="font-family: Noto Sans TC">票券管理</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-ticket-confirmation"></i>
            </a>
            <div class="collapse" id="ticket">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="03_01.jsp">票券新增</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="03_02.jsp">票券修改</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="03_03.jsp">票券下架</a></li>
              </ul>
            </div>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#tour" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title" style="font-family: Noto Sans TC">行程管理</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-beach menu-icon"></i>
            </a>
            <div class="collapse" id="tour">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/buttons.html">新增行程</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/typography.html">下架行程</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/typography.html">修改行程</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/typography.html">查詢行程</a></li>
              </ul>
            </div>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#face" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title" style="font-family: Noto Sans TC">版面管理</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-folder-image menu-icon"></i>
            </a>
            <div class="collapse" id="face">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/buttons.html">跑馬廣告</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/typography.html">問與答改</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/typography.html">關於我改</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/typography.html">圖片修改</a></li>
              </ul>
            </div>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#manager" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title" style="font-family: Noto Sans TC">管理者</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-account-key"></i>
            </a>
            <div class="collapse" id="manager">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" style="font-family: Noto Sans TC" href="/pages/ui-features/buttons.html">管理者帳號</a></li>
                <li class="nav-item"> <a onclick="signout()" class="dropdown-item" href="##">登出</a></li>
              </ul>
            </div>
          </li>
          
<!--   ---------------------------------------------------------------------------------------------------------------------------------------     -->
          
          <li class="nav-item sidebar-actions">
            <span class="nav-link">
              <div class="border-bottom">
                <h6 class="font-weight-normal mb-3" style="font-family: Noto Sans TC">專案</h6>                
              </div>
              <button class="btn btn-block btn-lg btn-gradient-primary mt-4" style="font-family: Noto Sans TC">+ 新增專案</button>
              <div class="mt-4">
                <div class="border-bottom">
                  <p class="text-secondary" style="font-family: Noto Sans TC">分類</p>                  
                </div>
                <ul class="gradient-bullet-list mt-4" style="font-family: Noto Sans TC">
                  <li>免費</li>
                  <li>專業</li>
                </ul>
              </div>
            </span>
          </li>
        </ul>
      </nav>
     
</body>

</html>