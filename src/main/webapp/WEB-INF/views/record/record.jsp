<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.sumicon{
		width: 170px;
		height: 170px;
	}
	.tier{
		width: 1500px; 
		border: 1px solid black; 
		margin: 0px auto;
	}
	.crawl{
		width: 700px;
		border: 1px solid black; 
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 1500px; border: 1px solid black; align: center;" class="tier">
		<div>
			<img class="sumicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/profileicon/${vo.profileIconId }.png"/>
			<p>${vo.name }</p>
			<p>소환사 레벨 : ${vo.summonerLevel }</p>
		</div>
		<div>
			<img src=""/>
		</div>
		<c:forEach items="${tier }" var="vo">	
			<c:choose>
				<c:when	test="${vo.queueType eq 'RANKED_TFT_DOUBLE_UP' }">
				</c:when>
				<c:otherwise>
					<div>
						<c:choose>
							<c:when test="${vo.tier eq 'IRON' }">
								<img src="resources/images/Emblem_Iron.png">
							</c:when>
							
							<c:when test="${vo.tier eq 'BRONZE' }">
								<img src="resources/images/Emblem_Bronze.png">
							</c:when>
							
							<c:when test="${vo.tier eq 'SILVER' }">
								<img src="resources/images/Emblem_Silver.png">
							</c:when>
							
							<c:when test="${vo.tier eq 'GOLD' }">
								<img src="resources/images/Emblem_Gold.png">
							</c:when>
							<c:when test="${vo.tier eq 'PLATINUM' }">
								<img src="resources/images/Emblem_Platinum.png">
							</c:when>
							
							<c:when test="${vo.tier eq 'DIAMOND' }">
								<img src="resources/images/Emblem_Diamond.png">
							</c:when>
							
							<c:when test="${vo.tier eq 'MASTER' }">
								<img src="resources/images/Emblem_Master.png">
							</c:when>
							
							<c:when test="${vo.tier eq 'GRANDMASTER' }">
								<img src="resources/images/Emblem_Grandmaster.png">
							</c:when>
							
							<c:when test="${vo.tier eq 'CHALLENGER' }">
								<img src="resources/images/Emblem_Challenger.png">
							</c:when>
						</c:choose>
						<p>${vo.tier } ${vo.rank }</p>
						<p>${vo.leaguePoints }점</p>
						<p>승리 수: ${vo.wins }  패배 수: ${vo.losses }</p>
					</div>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
	<div class="crawl">
		${crawl }
	</div>
</body>
</html>