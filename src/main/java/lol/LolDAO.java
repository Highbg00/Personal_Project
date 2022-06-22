package lol;

import java.util.List;

import org.json.JSONArray;
import org.springframework.stereotype.Repository;



@Repository
public class LolDAO implements LolService  {

	@Override
	public List<LolTierVO> Tier(String name) {
		return null;
	}

	@Override
	public LolSummonerVO SummonerInfo(String Id) {
		return null;
	}

	@Override
	public JSONArray LolRecord(String puuid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LolRecordVO RecordDetail(String matchId) {
		// TODO Auto-generated method stub
		return null;
	}


}


