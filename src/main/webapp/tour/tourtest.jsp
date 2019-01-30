<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
    <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/linq.js/2.2.0.2/jquery.linq.min.js">  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/linq.js/2.2.0.2/linq.min.js">  </script>
    <body>
        <h1>各國旅遊資訊</h1>
 
        <div id="DropDownList">
            請選擇：<select id="SelectCategory"></select> 
            <select id="SelectSubCategory"></select> 
            <select id="SelectViewpoint"></select> 
        </div>
 
 
        <div id="map" style="width:800px; height:600px"></div>
    
<!--         <script type="text/javascript" src="scripts/jquery-1.7.2.min.js"></script> -->
<!--         <script type="text/javascript" src="scripts/jquery.xml2json.js"></script> -->
<!--         <script type="text/javascript" src="scripts/JSLINQ.js"></script> -->
        <script type="text/javascript">
        
        
        
            var jsonScenery = [];
            var jsonHotel = [];    
 
 
            $(document).ready(function()
            {
                Page_Init();
            });
 
            function Page_Init()
            {
//                 var jsonData =
//                 [
//                     {
//                         "categoryId": "2",
//                         "categoryName": "歐洲"
//                     },
//                     {
//                         "categoryId": "1",
//                         "categoryName": "美洲"
//                     }
//                 ];
				$.getJSON('data/State.txt',function(data){
					console.log("data = "+data);
	                $('#SelectCategory').empty().append($('<option></option>').val('').text('------'));
	 
	                $.each(data, function (i, item)
	                {
	                    $('#SelectCategory').append($('<option></option>').val(item.categoryId).text(item.categoryName));
	                });  
				});
   
 
                $('#SelectSubCategory').empty().append($('<option></option>').val('').text('------'));
                $('#SelectViewpoint').empty().append($('<option></option>').val('').text('------'));    
//                 $('#LabelViewpoint').text('景點'); //
 
                $('#SelectCategory').change(function(){
                    ChangeCategory();
                });
 
                $('#SelectSubCategory').change(function(){
                    ChangeSubCategory();
                });                
 
                GetSceneryJsonData();
                GetHotelJsonData();
            }
 
            function GetSceneryJsonData()
            {
//                 $.get('data/scenery.xml', function(xml) 
//                 {
//                     jsonScenery = $.xml2json(xml);
//                 });
            jsonScenery =
                [
                    {
                        "SERIAL_NO": "A02515150",
                        "stitle": "安安你好"
                    },
                    {
                        "SERIAL_NO": "B025813025",
                        "stitle": "早睡早起精神好"
                    }
                ];
                return jsonScenery;
            }    
 
            function GetHotelJsonData()
            {
//                 $.get('data/hotel.xml', function(xml) 
//                 {
//                     jsonHotel = $.xml2json(xml);
//                 });
            jsonHotel =
                [
                    {
                        "SERIAL_NO": "V02515150",
                        "stitle": "0001安安你好"
                    },
                    {
                        "SERIAL_NO": "N025813025",
                        "stitle": "0002早睡早起精神好"
                    }
                ];
                return jsonHotel;
            }
 
            function ChangeCategory()
            {
                //變動第一個下拉選單
 
                $('#SelectSubCategory').empty().append($('<option></option>').val('').text('------'));
                $('#SelectViewpoint').empty().append($('<option></option>').val('').text('------'));            
 
                var categoryId = $.trim($('#SelectCategory option:selected').val());
                
                var jsonData = [];
                
                if(categoryId == '1')
                {
                    jsonData =
                    [
                        {
                            "subCategoryId": "S01",
                            "subCategoryName": "美國"
                        },
                        {
                            "subCategoryId": "S02",
                            "subCategoryName": "加拿大"
                        },                       
                        {
                            "subCategoryId": "S03",
                            "subCategoryName": "巴西"
                        }
                    ];
                }
                else if(categoryId == '2')
                {
                    jsonData =
                    [
                        {
                            "subCategoryId": "H01",
                            "subCategoryName": "英國"
                        },
                        {
                            "subCategoryId": "H02",
                            "subCategoryName": "法國"
                        },
                        {
                            "subCategoryId": "H03",
                            "subCategoryName": "荷蘭"
                        }
                    ];                
                }
                
                
                if(categoryId.length != 0)
                {
                    $.each(jsonData , function(i, item){
                        $('#SelectSubCategory').append($('<option></option>').val(item.subCategoryId).text(item.subCategoryName));
                    });
 
 
//                     if(categoryId == '1') //
//                     {
//                         $('#LabelViewpoint').text("景點");
//                     }
//                     else
//                     {
//                         $('#LabelViewpoint').text("旅館");
//                     }                    
                }
            }
 
            function ChangeSubCategory()
            {
                //變動第二個下拉選單
 
                $('#SelectViewpoint').empty().append($('<option></option>').val('').text('------'));
 
                var categoryId = $.trim($('#SelectCategory option:selected').val());
                var categoryName = $.trim($('#SelectCategory option:selected').text());
                var subCategoryName = $.trim($('#SelectSubCategory option:selected').text());
                
                if(categoryId == '1')
                {
                    //景點
//                     var result = new JSLINQ(this.jsonScenery.Section)
//                         .Where(function (item) { return item.CAT1 == categoryName && item.CAT2 == subCategoryName; })
//                         .Select(function (item) { return item; }).ToArray();
 
                    $.each(result, function(i, item)
                    {
                        $('#SelectViewpoint').append($('<option></option>').val(item["SERIAL_NO"]).text(item["stitle"]));
                    });
                }
                else if(categoryId == '2')
                {
                    //住宿
                    var result = new JSLINQ(this.jsonHotel.Section)
                        .Where(function (item) { return item.CAT1 == categoryName && item.CAT2 == subCategoryName; })
                        .Select(function (item) { return item; }).ToArray();
 
                    $.each(result, function(i, item)
                    {
                     $('#SelectViewpoint').append($('<option></option>').val(item["SERIAL_NO"]).text(item["stitle"]));
                    });
                }
            };
        
        </script>
        
    </body>
</html>