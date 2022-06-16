package lol;

import java.util.List;

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
}


