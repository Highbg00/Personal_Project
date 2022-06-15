<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.sumicon{
		width: 170px;
		height: 170px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 1500px; border: 1px solid black;" class="tier">
		<div>
			<img class="sumicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/profileicon/${vo.profileIconId }.png"/>
			<p>${vo.name }</p>
			<p>소환사 레벨 : ${vo.summonerLevel }</p>
		</div>
		<div>
			<img src=""/>
			<p>${tier. }</p>
		</div>
	</div>
</body>
</html>