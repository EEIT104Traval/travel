<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-tw">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>

<style>
  td {
    padding-bottom: 20px;
  }

  .div {
    width: 800;
    border: 2px blue solid;
    padding: 20px;
    margin: 20px;
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
    <div class="div">
        <form action="" method="get">
      <table class="table" align="center">
        <tr>
          <td colspan="2" align="center">
            <h3>會員註冊</h3>
          </td>
        </tr>
        <tr>
          <td>帳　　號：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>密　　碼：</td>
          <td>
            <input type="password" class="tex">
          </td>
        </tr>
        <tr>
          <td>密碼確認~：</td>
          <td>
            <input type="password" class="tex">
          </td>
        </tr>
        <tr>
          <td>姓　　名：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>暱　　稱：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>生　　日：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>電　　話：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>地　　址：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>身分證號：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>地　　址：</td>
          <td>
            <input type="text" class="tex">
          </td>
        </tr>
        <tr>
          <td>電子郵件~：</td>
          <td>
            <input type="text" class="tex">
          </td>
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

