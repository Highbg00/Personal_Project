package lol;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class ParticipantsVO {
	private String summonerName, summonerId;
	private boolean win;
	private int championId, kills, deaths, assists, champLevel, item0, item1, item2, item3, item4, item5, item6, 
				totalDamageDealtToChampions, totalDamageTaken, summoner1Id, summoner2Id, visionScore, visionWardsBoughtInGame, goldEarned, 
				totalMinionsKilled, neutralMinionsKilled; //두개 합치면 총 CS 수임
	
	public String getSummonerName() {
		return summonerName;
	}
	public void setSummonerName(String summonerName) {
		this.summonerName = summonerName;
	}
	public String getSummonerId() {
		return summonerId;
	}
	public void setSummonerId(String summonerId) {
		this.summonerId = summonerId;
	}
	public boolean isWin() {
		return win;
	}
	public void setWin(boolean win) {
		this.win = win;
	}
	public int getChampionId() {
		return championId;
	}
	public void setChampionId(int championId) {
		this.championId = championId;
	}
	public int getKills() {
		return kills;
	}
	public void setKills(int kills) {
		this.kills = kills;
	}
	public int getDeaths() {
		return deaths;
	}
	public void setDeaths(int deaths) {
		this.deaths = deaths;
	}
	public int getAssists() {
		return assists;
	}
	public void setAssists(int assists) {
		this.assists = assists;
	}
	public int getChampLevel() {
		return champLevel;
	}
	public void setChampLevel(int champLevel) {
		this.champLevel = champLevel;
	}
	public int getItem0() {
		return item0;
	}
	public void setItem0(int item0) {
		this.item0 = item0;
	}
	public int getItem1() {
		return item1;
	}
	public void setItem1(int item1) {
		this.item1 = item1;
	}
	public int getItem2() {
		return item2;
	}
	public void setItem2(int item2) {
		this.item2 = item2;
	}
	public int getItem3() {
		return item3;
	}
	public void setItem3(int item3) {
		this.item3 = item3;
	}
	public int getItem4() {
		return item4;
	}
	public void setItem4(int item4) {
		this.item4 = item4;
	}
	public int getItem5() {
		return item5;
	}
	public void setItem5(int item5) {
		this.item5 = item5;
	}
	public int getItem6() {
		return item6;
	}
	public void setItem6(int item6) {
		this.item6 = item6;
	}
	public int getTotalDamageDealtToChampions() {
		return totalDamageDealtToChampions;
	}
	public void setTotalDamageDealtToChampions(int totalDamageDealtToChampions) {
		this.totalDamageDealtToChampions = totalDamageDealtToChampions;
	}
	public int getTotalDamageTaken() {
		return totalDamageTaken;
	}
	public void setTotalDamageTaken(int totalDamageTaken) {
		this.totalDamageTaken = totalDamageTaken;
	}
	public int getSummoner1Id() {
		return summoner1Id;
	}
	public void setSummoner1Id(int summoner1Id) {
		this.summoner1Id = summoner1Id;
	}
	public int getSummoner2Id() {
		return summoner2Id;
	}
	public void setSummoner2Id(int summoner2Id) {
		this.summoner2Id = summoner2Id;
	}
	public int getVisionScore() {
		return visionScore;
	}
	public void setVisionScore(int visionScore) {
		this.visionScore = visionScore;
	}
	public int getVisionWardsBoughtInGame() {
		return visionWardsBoughtInGame;
	}
	public void setVisionWardsBoughtInGame(int visionWardsBoughtInGame) {
		this.visionWardsBoughtInGame = visionWardsBoughtInGame;
	}
	public int getGoldEarned() {
		return goldEarned;
	}
	public void setGoldEarned(int goldEarned) {
		this.goldEarned = goldEarned;
	}
	public int getTotalMinionsKilled() {
		return totalMinionsKilled;
	}
	public void setTotalMinionsKilled(int totalMinionsKilled) {
		this.totalMinionsKilled = totalMinionsKilled;
	}
	public int getNeutralMinionsKilled() {
		return neutralMinionsKilled;
	}
	public void setNeutralMinionsKilled(int neutralMinionsKilled) {
		this.neutralMinionsKilled = neutralMinionsKilled;
	}
	
	
}
