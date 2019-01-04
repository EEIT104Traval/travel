<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-tw">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="css/main.css" rel="stylesheet" type="text/css" />
  <title>後台管理者介面</title>
</head>

<style>
  td {
    padding-bottom: 20px;
     width: ˋ400px;
  }

  .tex {
    padding-left: 4px;
    border: 0.5px solid rgb(211, 211, 224);
    border-radius: 5px;
    width: 200px;
    height: 20px;
  }
</style>
<body>
	<jsp:include page="bindex.jsp" />
    <div class="">
        <form action="" method="get">
      <table class="table" >
        <tr>
          <td colspan="2" align="center">
            <h3>管理者帳號</h3>
          </td>
        </tr>
        <tr>
          <td>帳號：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>密碼：</td>
          <td>
            <input type="password" class="tex">
          </td>
        </tr>
        <tr>
          <td>密碼確認：</td>
          <td>
            <input type="password" class="tex">
          </td>
        </tr>
        <tr>
          <td>姓名：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>電話：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>權限：</td>
          <td>
           		<select name="option">
	    	<option value="L0"></option>
			<option value="L2">　　　　超級管理者　　　　</option>
			<option value="L1">　　　　一般管理者　　　　</option>
			<option value="L2">　　　　踢掉管理者　　　　</option>
			</select>
          </td>
           <tr>
          <td>金鑰密碼：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        </tr>
        <tr height="20px"></tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" value="送出">
            <input type="reset" value="重填">
          </td>
        </tr>
      </table>

    </form>

  </div>
</body>

