package lol;

import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
public class LolDAO implements LolService {

	@Override
	public List<LolTierVO> Tier() {
		ObjectMapper om = new ObjectMapper();
		LolSummonerVO vo = null;
		
		String SummonerName = name.replaceAll(" ","%20");
		String reqeustURL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+ SummonerName + "?api_key=" + common.CommonVal.API_KEY;
		return null;
	}

}
