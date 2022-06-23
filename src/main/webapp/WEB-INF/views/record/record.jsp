<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.tierimg{
		width: 200px;
		height: 200px;
	}
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
		align-self: center;
		width: 700px;
		border: 1px solid black; 
	}
	.record{
		align: center;
		display: inline-block;
		width: 700px;
		border: 1px solid black; 
	}
	.champicon{
		width: 50px;
		height: 50px
	}
	.spellicon{
		width: 25px;
		height: 25px;
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
		<p>솔로 랭크</p>
		<c:forEach items="${tier }" var="vo">	
			<c:choose>
				<c:when test="${vo.queueType eq 'RANKED_SOLO_5x5' }">
				<c:choose>
					<c:when	test="${vo.queueType eq 'RANKED_TFT_DOUBLE_UP' }">
					</c:when>
					<c:otherwise>
						<div>
							<c:choose>
								<c:when test="${vo.tier eq 'IRON' }">
									<img class="tierimg" src="../resources/images/Emblem_Iron.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'BRONZE' }">
									<img class="tierimg" src="../resources/images/Emblem_Bronze.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'SILVER' }">
									<img class="tierimg" src="../resources/images/Emblem_Silver.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'GOLD' }">
									<img class="tierimg" src="../resources/images/Emblem_Gold.png">
								</c:when>
								<c:when test="${vo.tier eq 'PLATINUM' }">
									<img class="tierimg" src="../resources/images/Emblem_Platinum.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'DIAMOND' }">
									<img class="tierimg" src="../resources/images/Emblem_Diamond.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'MASTER' }">
									<img class="tierimg" src="../resources/images/Emblem_Master.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'GRANDMASTER' }">
									<img class="tierimg" src="../resources/images/Emblem_Grandmaster.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'CHALLENGER' }">
									<img class="tierimg" src="../resources/images/Emblem_Challenger.png">
								</c:when>
							</c:choose>
							<p>${vo.tier } ${vo.rank }</p>
							<p>${vo.leaguePoints }점</p>
							<p>승리 수: ${vo.wins }  패배 수: ${vo.losses }</p>
						</div>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<p>자유 랭크</p>
		<c:forEach items="${tier }" var="vo">	
			<c:choose>
				<c:when test="${vo.queueType eq 'RANKED_FLEX_SR' }">
				<c:choose>
					<c:when	test="${vo.queueType eq 'RANKED_TFT_DOUBLE_UP' }">
					</c:when>
					<c:otherwise>
						<div>
							<c:choose>
								<c:when test="${vo.tier eq 'IRON' }">
									<img class="tierimg" src="../resources/images/Emblem_Iron.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'BRONZE' }">
									<img class="tierimg" src="../resources/images/Emblem_Bronze.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'SILVER' }">
									<img class="tierimg" src="../resources/images/Emblem_Silver.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'GOLD' }">
									<img class="tierimg" src="../resources/images/Emblem_Gold.png">
								</c:when>
								<c:when test="${vo.tier eq 'PLATINUM' }">
									<img class="tierimg" src="../resources/images/Emblem_Platinum.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'DIAMOND' }">
									<img class="tierimg" src="../resources/images/Emblem_Diamond.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'MASTER' }">
									<img class="tierimg" src="../resources/images/Emblem_Master.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'GRANDMASTER' }">
									<img class="tierimg" src="../resources/images/Emblem_Grandmaster.png">
								</c:when>
								
								<c:when test="${vo.tier eq 'CHALLENGER' }">
									<img class="tierimg" src="../resources/images/Emblem_Challenger.png">
								</c:when>
							</c:choose>
							<p>${vo.tier } ${vo.rank }</p>
							<p>${vo.leaguePoints }점</p>
							<p>승리 수: ${vo.wins }  패배 수: ${vo.losses }</p>
						</div>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
	<div class="crawl">
		${crawl }
	</div>
	<div class="record">
		<c:forEach items="${record}" var="part" varStatus="status">
			<div class="box">
				<p><img class="champicon" src="https://ddragon.leagueoflegends.com/cdn/12.11.1/img/champion/${part.championName }.png"/></p>
				<c:choose>
					<c:when test="${part.summoner1Id eq 12 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerTeleport.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 32 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerSnowball.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 11 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerSmite.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 13 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerMana.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 7 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerHeal.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 6 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerHaste.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 3 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerExhaust.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 14 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerDot.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 21 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerBarrier.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 1 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerBoost.png"/></p>
					</c:when>
					<c:when test="${part.summoner1Id eq 4 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerFlash.png"/></p>
					</c:when>
				</c:choose>
				
				<c:choose>
					<c:when test="${part.summoner2Id eq 12 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerTeleport.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 32 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerSnowball.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 11 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerSmite.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 13 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerMana.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 7 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerHeal.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 6 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerHaste.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 3 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerExhaust.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 14 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerDot.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 21 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerBarrier.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 1 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerBoost.png"/></p>
					</c:when>
					<c:when test="${part.summoner2Id eq 4 }">
						<p><img class="spellicon" src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/spell/SummonerFlash.png"/></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${gametype[status.index].queueId eq 420 }">
						<p>솔로 랭크</p>
					</c:when>
					<c:when test="${gametype[status.index].queueId eq 430 }">
						<p>일반 게임</p>
					</c:when>
					<c:when test="${gametype[status.index].queueId eq 440 }">
						<p>자유 5:5 랭크</p>
					</c:when>
					<c:when test="${gametype[status.index].queueId eq 450 }">
						<p>무작위 총력전</p>
					</c:when>
				</c:choose>
				<p>${part.kills }/${part.deaths }/${part.assists}</p>
				<p>	
					<c:choose>
						<c:when test="${part.item0 eq 0 }">
						</c:when>
						<c:otherwise>
							<img src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/${part.item0 }.png"/>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${part.item1 eq 0 }">
						</c:when>
						<c:otherwise>
							<img src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/${part.item1 }.png"/>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${part.item2 eq 0 }">
						</c:when>
						<c:otherwise>
							<img src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/${part.item2 }.png"/>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${part.item3 eq 0 }">
						</c:when>
						<c:otherwise>
							<img src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/${part.item3 }.png"/>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${part.item4 eq 0 }">
						</c:when>
						<c:otherwise>
							<img src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/${part.item4 }.png"/>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${part.item5 eq 0 }">
						</c:when>
						<c:otherwise>
							<img src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/${part.item5 }.png"/>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${part.item6 eq 0 }">
						</c:when>
						<c:otherwise>
							<img src="http://ddragon.leagueoflegends.com/cdn/12.11.1/img/item/${part.item6 }.png"/>
						</c:otherwise>
					</c:choose>
				</p>
				<p>챔피언에게 가한 피해량 : ${part.totalDamageDealtToChampions }</p>
				<p>받은 피해량 : ${part.totalDamageTaken }</p>
				<p>얻은 골드 : ${part.goldEarned }</p>
				<p>CS : ${part.totalMinionsKilled + part.neutralMinionsKilled }</p>
				<p>시야 점수 : ${part.visionScore }</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>