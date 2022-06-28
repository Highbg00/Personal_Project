<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
		.main_logo {
			margin-top: 150px;
		}
	</style>
</head>
<body>
<form action="record" method="post">
<div class="main_logo">
	<img src="resources/images/logo.png"/>
	
	<p style="margin-top: 50px;">
		<input type="text" placeholder="소환사명을 입력하십시오." name="userid"/>
		<a class='btn-fill' onclick="$('form').submit()">검색</a>
	</p>
</div>
</form>
</body>
</html>