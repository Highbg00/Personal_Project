package lol;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.databind.ObjectMapper;


@Repository
public class LolDAO implements LolService  {

	@Override
	public List<LolTierVO> Tier(String name) {
		ObjectMapper om = new ObjectMapper();
		LolSummonerVO vo = null;
		
		String SummonerName = name.replaceAll(" ","%20");
		String reqeustURL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+ SummonerName + "?api_key=" + common.CommonVal.API_KEY;
		return null;
	}

	@Override
	public LolSummonerVO SummonerInfo(String Id) {
		
		return null;
	}
}


