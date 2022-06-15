package lol;

import java.util.List;

public interface LolService {
	List<LolTierVO> Tier(String name);
	
	LolSummonerVO	SummonerInfo(String name);
}
