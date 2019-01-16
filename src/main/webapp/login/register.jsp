<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>會員專區</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" /> <!--20151202.Todd4142.預設IE文件模式為最新版本-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <link href="/StarTravel.Web.NewServiceCenter/Content/jquery-ui.css" rel="stylesheet" />
    <link href="/StarTravel.Web.NewServiceCenter/Content/header.css" rel="stylesheet" />
    <link href="/StarTravel.Web.NewServiceCenter/Content/footer.css" rel="stylesheet" />
    <link href="/StarTravel.Web.NewServiceCenter/Content/Shared.css" rel="stylesheet" />
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/jquery-ui.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/jquery.base64.js"></script>
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/carousel.js"></script>
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/jquery.blockUI.js"></script>
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/ajaxorurlsharedvariables.js"></script>
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/Shared.js"></script>
    <script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/AddrJson.js"></script>  
    
    <!-- google追蹤碼 -->
    <script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-19370322-1', 'auto');
    ga('send', 'pageview');

    </script>

    <style type="text/css">
        .FixedDiv {
            z-index: 2000;
            right: 0%;
            padding: 0px;
            display: block;
            position: fixed;
            float: right;
            /*background: #d9edf7;*/
        }
        /* IE並不認識fixed，而FF認識 */
        * html .FixedDiv {
            position: absolute;
            float: right;
        }
        /* 這個只有IE認識 */
    </style>

	<!--AutoInsert-->
	<script src="https://www.startravel.com.tw/js/google-new.js" type="text/javascript"></script>
</head>

<body class="Newbody">
    <div class="Newhead1-1"></div>
    <div class="Newhead1">
        <script src="//www.startravel.com.tw/header/09_header_pro.js"></script>
    </div>

       

    

<script type="text/javascript">
    function showPW()
    {
        var tpw = $('#txtpassword');
        var pc = $('#pincdoe');

        if ($('#showPWbtn').prop("checked"))
        {
            $tpwInput = $($("<div />").append(tpw.clone()).html().replace('type="password"', 'type="text"'));
            $pcInput = $($("<div />").append(pc.clone()).html().replace('type="password"', 'type="text"'));
        }
        else
        {
            $tpwInput = $($("<div />").append(tpw.clone()).html().replace('type="text"', 'type="password"'));
            $pcInput = $($("<div />").append(pc.clone()).html().replace('type="text"', 'type="password"'));
        }

        $tpwInput.val(tpw.val());
        $pcInput.val(pc.val());

        tpw.replaceWith($tpwInput);
        pc.replaceWith($pcInput);
    }

    function showModel() {
        if (event.preventDefault) {
            event.preventDefault();
        } else {
            event.returnValue = false; //因為 IE10 不支援，所以改用此方式
        };

        $('#GAD').modal('show')
    }

    //遮罩登入畫面
    function calllogin(st1, st2, st3) {
        if (event.preventDefault) {
            event.preventDefault();
        } else {
            event.returnValue = false; //因為 IE10 不支援，所以改用此方式
        };

        //debugger;
        
        $.ajax({
            type: "post",
            url: '/StarTravel.Web.NewServiceCenter/login/CheckLogin',
            data: {},
            async: false,
            success: function (data) {
                if (data == false) {

                    changeImg();
                    $('#txtImgCode').val("");

                    var bigmenuchoose = $('.NewOptions > ul > li > ul > li:nth-child(1n+2)');
                    $(bigmenuchoose).attr("data-toggle", "modal");
                    $(bigmenuchoose).attr("data-target", ".bd-example-modal-2g");

                    var smallmenuchoose = $('.littleNewOptions table:nth-child(2) tr td');
                    $(smallmenuchoose).attr("data-toggle", "modal");
                    $(smallmenuchoose).attr("data-target", ".bd-example-modal-2g");

                    $('.Newloggin').css("display", "block");
                    //觸發版面切換 會員登入、(非會員)付款登入
                    //var choice = $("<input type='button' style='display:none;' onclick='return  changepincodeoraccount(" + st1 + ");'/>");
                    //$(choice).click();
                    changepincodeoraccount(st1);

                    //ESC鍵解除登入遮罩頁
                    $(window).keyup(function (e) {
                        if (e.keyCode == 27) {
                            //$.unblockUI();
                            $('#txtidno').val("");
                            $('#txtpassword').val("");
                            $('#order_no').val("");
                            $('#pincdoe').val("");
                            $('#txtImgCode').val("");
                        }
                    });

                    //Enter鍵登入
                    $(window).keyup(function (e) {
                        if (e.keyCode == 13) {
                            if (st1 == 1) {
                                $('#payinto').click();
                            } else if (st1 == 2) {
                                $('#into').click();
                            }
                        }
                    });

                    //判斷登入頁面分別為　會員登入、資料修改、編輯旅客常用名單
                    $('#into').attr('onclick', 'return checklogin(' + st2 + ',' + st3 + ')');
                }
                else {
                    BACKUI(0);
                    postPay(st3);
                }
            }, error: function (xhr) {
                alert("尚未登入" + xhr);
            }
        });
    }

    //20160426.Todd4142.會員登出
    function signout() {
        location.href = '/StarTravel.Web.NewServiceCenter/login/Logout'
        //var form = $("<form id='st' style='display:none;'>");
        //$(form).attr("method", "post");
        //$(form).attr("action", ajaxShared);
        //var imp1 = $("<input type='text' style='display:none;' name='stsignout' value='stsignout' >");
        //$(form).append(imp1);
        //$(form).appendTo("body");
        //$(form).submit();
    }
</script>

<div class="NewOptions">
    <ul>
        <li>
            <ul>
                <li><input type="button" value="會員功能與(網路)訂單付款" /></li>
                        <li><input id="bigmemberloginmenubtn" type="button" value="會員登入" onclick="return calllogin(2, 1, 1);" /></li>
                        <li><input id="bigmemberaddmenubtn" type="button" value="會員註冊" onclick="location.href='/StarTravel.Web.NewServiceCenter/register/Newregister';" /></li>
                <li><input type="button" value="查詢密碼" onclick="return searchpassword();" /></li>
                <li><input type="button" value="會員優惠專區" onclick="location.href='/project/ST/2017member_only/index.aspx'" /></li>
            </ul>
        </li>
        <li>
            <ul>
                <li><input type="button" value="電話(門市)訂單付款" /></li>
                <li>
                        <input id="bigpaymenubtn" type="button" value="（非網路會員）付款登入" onclick="return calllogin(1, 2, 0);" />
                </li>
            </ul>
        </li>
        <li>
            <ul>
                <li><input type="button" value="客服服務" /></li>
                <li><a href="/smail/index.html" target="_blank">聯絡客服</a></li>
                <li><a href="/StarTravel.Web.NewServiceCenter/Epaper/NotMemberEpaper">非會員電子報</a></li>
            </ul>
        </li>
    </ul>
</div>

<div class="littleNewOptions">
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>
                <button id="littlemenubutton">
                    <div class="littlemenubutton">
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </button>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <button id="closelittlemenubutton">
                    <div class="littlemenubutton">
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </button>
            </td>
        </tr>
    </table>
    <table>
                <tr>
                    <td><input type="button" id="smallpaymenubtn" class="menubutton" value="電話(門市訂單)付款登入" onclick="return calllogin(1, 2, 0);" /></td>
                </tr>
                <tr>
                    <td><input type="button" id="smallmemberloginmenubtn" class="menubutton" value="會員登入" onclick="return calllogin(2, 1, 1);" /></td>
                </tr>
                <tr>
                    <td><input type="button" id="smallmemberaddmenubtn" class="menubutton" value="會員註冊" onclick="location.href='/StarTravel.Web.NewServiceCenter/register/Newregister';" /></td>
                </tr>
        <tr>
            <td><input type="button" class="menubutton" value="查詢密碼" onclick="return searchpassword();" /></td>
        </tr>
        <tr>
            <td><input type="button" class="menubutton" value="會員優惠專區" onclick="location.href='/project/ST/2017member_only/index.aspx'" /></td>
        </tr>
        <tr>
            <td><input type="button" class="menubutton" value="客服服務" onclick="return smail();" /></td>
        </tr>
    </table>
</div>

<div style="margin:auto;height:43px;width:100%;font-size:18px;text-align:center;padding-top:4px;">
    <label id="checktitle">您好！尚未登入！</label>
</div>

<div id="GAD" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-2g">
        <div class="modal-content" style="margin: 0;padding: 0;background-color: #fff;">
            <div style="width: 680px;height: 380px;background-image: url('//www.startravel.com.tw/images/newmember/popup_bg.jpg');padding: 0px;color: #000;font-family: '微軟正黑體', Arial;display: block;overflow: hidden;">
                <button type="button" class="close ui-icon-close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h1 style="font-size: 28px;font-weight: bold;letter-spacing: 10px;text-align: center;margin-top: 162px;color: #d90074;"></h1>

                    <a href="https://www.tkec.com.tw/events_net/201701tk3c_vip/map/index.aspx" target="_blank">
                        <div style="background-image: url('//www.startravel.com.tw/images/newmember/go.jpg');width: 376px;height: 52px;margin: 40px auto 0px auto;display: block;overflow: hidden;"></div>
                    </a>
                    <p style="font-size: 16px;line-height: 1.2;text-align: center;margin-top: 30px;">
                        <a href="https://www.tkec.com.tw/events_net/201701tk3c_vip/map/info.aspx" target="_blank">※活動說明</a>
                    </p>
            </div>
        </div>
    </div>
</div>

<div id="modalLogin" class="modal fade bd-example-modal-2g" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-2g">
        <div class="modal-content">
            <div class="Newloggin">
                <table>
                    <tr><td>燦星會員登入</td></tr>
                    <tr style="display:none; background:#657F00;"><td>電話(門市)訂單付款</td></tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <label>會員帳號</label>
                            <label style="display:none;">訂單編號</label>
                        </td>
                        <td>
                            <input type="text" id="txtidno" tabIndex="1" /><br />
                            <p id="loginP">請輸入身分證字號，未持有中華民國身份證請輸入「護照」號碼</p>
                            <input type="text" id="order_no" size="15" maxlength="15" style="display:none; border-color:#657F00;" />
                            
                            <p id="orderP" style="display:none;"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>密　　碼</label>
                            <label style="display:none;">付款登入碼</label>
                        </td>
                        <td>
                            <input type="password" id="txtpassword" size="10" maxlength="10" tabIndex="2"/>
                            <input type="password" id="pincdoe" size="12" maxlength="8" style="display:none; border-color:#657F00;" />
                            <label style="font-size:16px"><input type="checkbox" id="showPWbtn" onchange="showPW()" tabIndex="3" />顯示密碼</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <iframe id="ImgCheck" scrolling="no" src="/StarTravel.Web.NewServiceCenter/captcha/CAPTCHA" width="80" height="30" align="top" frameborder="0"></iframe>
                        </td>
                        <td>
                            <a id="research" onclick="return changeImg()">換一張圖</a>
                            <input type="text" id="txtImgCode" size="4" maxlength="4" tabIndex="4" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td><input type="button" class="bul" value="加入會員" onclick="return addmember()" /></td>
                        <td>
                            <input type="button" id="into" class="bul" value="會員登入" data-dismiss='' onclick="return checklogin();" />
                            <input type="button" id="payinto" class="bul" data-dismiss='' style="display:none; background:#657F00;" value="付款登入" onclick="return checklogin(2, 0);" />
                            &nbsp;<a href="/StarTravel.Web.NewServiceCenter/register/PwQuery" target="_blank">忘記密碼</a>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <input type="button" class="bul" style="background:#657F00;" onclick="return changepincodeoraccount(1);" value="電話(門市)訂單付款" />
                            <input type="button" class="bul" style="display:none;" onclick="return changepincodeoraccount(2);" value="會　員　管　理" />
                            <button style="font-size:20px;" type="button" class="btn btn-primary" data-dismiss="modal">關閉</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>


    

<script type="text/javascript">
    $(function () {
        $('#checktitle').text('');
    });

    $(function () {
        $("#notNe").hide();
        $("#close").hide();
        $("#conNe").click(function () {

            $("#notNe").stop().fadeToggle(500);
            $("#open").fadeToggle();
            $("#close").fadeToggle();
        })

    });
</script>

<link href="/StarTravel.Web.NewServiceCenter/Content/Newregister.css" rel="stylesheet" />
<link href="/StarTravel.Web.NewServiceCenter/Content/join.css" rel="stylesheet" />

<div class="content">
    <h1><span></span>會員註冊</h1>
    <form>
        <div class="zone1">
            <h3></h3>
            <table class="joinList" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                    <tr>
                        <td class="join1">會員帳號 <span class="fc-f09">*</span></td>
                        <td class="join2"><input type="text" class="input1 wt50" id="addidno" placeholder="請輸入您的身分證字號/護照號碼"></td>
                    </tr>
                    <tr>
                        <td class="join1">中文姓名 <span class="fc-f09">*</span></td>
                        <td class="join2">
                            <input type="text" class="input1 wt30" id="firstname" size="4" maxlength="4" placeholder="請輸入您的中文姓">
                            <input type="text" class="input1 wt40" id="lastname" size="6" maxlength="6" placeholder="請輸入您的中文名">
                        </td>
                    </tr>
                    <tr>
                        <td class="join1">性別 <span class="fc-f09">*</span></td>
                        <td class="join2">
                            <select id="sex" class="input1">
                                <option value="1" selected="selected">男</option>
                                <option value="0">女</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="join1">出生日期 <span class="fc-f09">*</span></td>
                        <td class="join2"><input type="date" class="input1 hasDatepicker wt40" id="birthdate" size="10" maxlength="10"></td>
                    </tr>
                    <tr>
                        <td class="join1">電子信箱 <span class="fc-f09">*</span></td>
                        <td class="join2"><input type="email" class="input1 wt70" id="email" style="text-transform:lowercase" placeholder="請輸入您常用的EMAIL"></td>
                    </tr>
                    <tr>
                        <td class="join1">行動電話 <span class="fc-f09">*</span></td>
                        <td class="join2"><input type="tel" class="input1 wt50" id="phonenumber" placeholder="請輸入聯絡得到您的行動電話"><input type="hidden" id="contactphone"></td>
                    </tr>
                    <tr>
                        <td class="join1">密碼 <span class="fc-f09">*</span></td>
                        <td class="join2"><input type="password" class="input1 wt50" id="addpassword" size="10" maxlength="10" placeholder="密碼格式：英文加數字(6-10位)"></td>
                    </tr>
                    <tr>
                        <td class="join1">密碼確認 <span class="fc-f09">*</span></td>
                        <td class="join2"><input type="password" class="input1 wt50" id="checkpassword" size="10" maxlength="10" placeholder="請再次輸入您的會員密碼"><input type="hidden" id="passwordhint"></td>
                    </tr>
                    <tr>
                        <td class="join1">居住地區 <span class="fc-f09">*</span></td>
                        <td class="join2"><select class="select" id="choosecity"><option value="0" selected="selected">請選擇縣市</option></select> <select class="select" id="chooseczip"><option value="000" selected>請選擇鄉鎮</option></select><input type="hidden" id="showzip" /></td>
                    </tr>
                    <tr>
                        <td class="join1" style="border-bottom:1px solid #7e1083;">同意推薦好康 <span class="fc-f09">*</span></td>
                        <td class="join2" style="border-bottom:1px solid #7e1083;">
                            <select id="epaper_type" class="input1">
                                <option value="1" selected="selected">同意</option>
                                <option value="0">不同意</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="zone2">
            <h3 id="conNe"><img src="//www.startravel.com.tw/test/memberjoin/images/a1.png" alt="展開"><img src="//www.startravel.com.tw/test/memberjoin/images/a2.png" id="close" alt="收合" style="display: none;">填寫更多資料</h3>
            <div id="notNe">
                <table class="joinList" border="0" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td class="join1">英文姓名</td>
                            <td class="join2">
                                <input type="text" class="input1 wt30" id="elastname" style="text-transform:uppercase;" placeholder="Last Name (英文姓)">
                                <input type="text" class="input1 wt40" id="efirstname" style="text-transform:uppercase;" placeholder="First Name (英文名)">
                            </td>
                        </tr>
                        <tr>
                            <td class="join1">詳細聯絡地址</td>
                            <td class="join2"><input type="text" class="input1 wt80" id="address" placeholder="請輸入您的聯絡地址"></td>
                        </tr>
                        <tr>
                            <td class="join1">推薦人薪號</td>
                            <td class="join2"><input type="text" class="input1 wt40" id="recommend_man" size="8" maxlength="8" placeholder="請輸入推薦人薪號"></td>
                        </tr>
                        <tr>
                            <td class="join1">教育程度</td>
                            <td class="join2"><select class="input1" id="educationlevel"><option value="" selected="selected">請選擇</option><option value="1">研究所或以上</option><option value="2">大學</option><option value="3">專科</option><option value="4">高中/高職</option><option value="5">國中或以下</option></select></td>
                        </tr>
                        <tr>
                            <td class="join1">月收入</td>
                            <td class="join2"><select class="input1" id="income"><option value="" selected="selected">請選擇</option><option value="1">20,000以下</option><option value="2">20,001~30,000</option><option value="3">30,001~50,000</option><option value="4">50,001~70,000</option><option value="5">70,001以上</option></select></td>
                        </tr>
                        <tr>
                            <td class="join1">婚姻狀況</td>
                            <td class="join2"><select class="input1" id="drpmarriage"><option value="" selected="selected">請選擇</option><option value="0">未婚</option><option value="1">已婚</option></select></td>
                        </tr>
                        <tr>
                            <td class="join1">工作內容</td>
                            <td class="join2"><select class="input1" id="work"><option value="" selected="selected">請選擇</option><option value="1">資訊科技業</option><option value="2">金融保險業</option><option value="3">服務業</option><option value="4">營造業</option><option value="5">軍警公務員</option><option value="6">教育學術</option><option value="7">製造業</option><option value="8">自由業</option><option value="9">學生</option><option value="A">家管</option><option value="Z">其他</option></select></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="zone3">
            <input type="checkbox" id="agree" name="news1"> 我同意接受<a href="https://www.startravel.com.tw/member/index9_2menber.html" target="_blank">燦星旅遊會員服務條款</a><br>
            <input type="checkbox" id="agree2" name="news2"> 我同意<a href="https://www.startravel.com.tw/member/index9_3menber.html" target="_blank">燦星旅遊會員個資使用同意聲明</a><br><br>
            &nbsp;驗證碼 <span class="fc-f09">*</span>：
            <input type="text" id="imagecode2" size="4" maxlength="4">
            <iframe id="ImgCheck2" scrolling="no" src="/StarTravel.Web.NewServiceCenter/CAPTCHA/captcha2" width="60" height="30" align="top" frameborder="0"></iframe>
            <input type="button" class="btn btn-primary" onclick="return changeImg2()" value="重取驗證碼"><br><br>

            <input type="button" id="senddata" class="inputButton" value="送出資料" />
        </div>
    </form>
</div>


<script type="text/javascript" src="/StarTravel.Web.NewServiceCenter/Scripts/Newregister.js"></script>
<input id="nowtime" name="nowtime" style="display:none;" type="text" value="2019-01-16" />
<input id="defaulttime" name="defaulttime" style="display:none;" type="text" value="1989-01-16" />
<input id="maxtime" name="maxtime" style="display:none;" type="text" value="1919-01-16" />
    
    <div class="footer"></div>   
</body>
</html>
