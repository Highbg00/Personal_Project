package lol;

import java.util.List;

import org.json.JSONArray;

public interface LolService {
	List<LolTierVO> Tier(String name);
	
	LolSummonerVO	SummonerInfo(String name);
	
	JSONArray LolRecord(String puuid); 
	
	LolRecordVO RecordDetail(String matchId);
}
