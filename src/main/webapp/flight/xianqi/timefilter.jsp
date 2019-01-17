<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
dd {
    display: block;
    margin-inline-start: 40px;
}
ul, menu, dir {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}



</style>
</head>
<body>
	<dl class="filter">
		<dt class="filter-header">
			<a class="filter-clear">清除篩選</a>
			<h3 class="c-filter-common__subtit">時間</h3>
		</dt>
		<dd style="margin-top: 5px;">
			<h4 class="c-filter-times__tit">出發時間</h4>
			<ul class="c-filter-table u-clearfix condition-group">
				<li class="c-filter-table__item" data-code="0"><div
						class="c-filter-table__label  ">
						0:00
						<p>-</p>
						6: 00
					</div></li>
				<li class="c-filter-table__item" data-code="1"><div
						class="c-filter-table__label  ">
						6:00
						<p>-</p>
						12: 00
					</div></li>
				<li class="c-filter-table__item" data-code="2"><div
						class="c-filter-table__label  ">
						12:00
						<p>-</p>
						18: 00
					</div></li>
				<li class="c-filter-table__item" data-code="3"><div
						class="c-filter-table__label  ">
						18:00
						<p>-</p>
						24: 00
					</div></li>
			</ul>
		</dd>
		<dd style="margin-top: 5px;">
			<h4 class="c-filter-times__tit">到達時間</h4>
			<ul class="c-filter-table u-clearfix condition-group">
				<li class="c-filter-table__item" data-code="0"><div
						class="c-filter-table__label  is-disabled">
						0:00
						<p>-</p>
						6: 00
					</div></li>
				<li class="c-filter-table__item" data-code="1"><div
						class="c-filter-table__label  ">
						6:00
						<p>-</p>
						12: 00
					</div></li>
				<li class="c-filter-table__item" data-code="2"><div
						class="c-filter-table__label  ">
						12:00
						<p>-</p>
						18: 00
					</div></li>
				<li class="c-filter-table__item" data-code="3"><div
						class="c-filter-table__label  ">
						18:00
						<p>-</p>
						24: 00
					</div></li>
			</ul>
		</dd>
	</dl>
</body>
</html>