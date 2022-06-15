package lol;

import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.HttpClientBuilder;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class LolServiceImpl implements LolService {
	
	@Autowired private LolDAO dao;
	
	@Override
	public List<LolTierVO> Tier(String name) {
		// TODO Auto-generated method stub
		return dao.Tier(name);
	}

	@Override
	public LolSummonerVO SummonerInfo(String Id) {
		LolSummonerVO vo = new LolSummonerVO();
		ObjectMapper mapper = new ObjectMapper();
		
		String SummonerName = Id.replaceAll(" ","%20");	
		String requestURL = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+ SummonerName + "?api_key=" + common.CommonVal.API_KEY;
		try {
			HttpClient client = HttpClientBuilder.create().build(); // HttpClient 생성
			HttpGet getRequest = new HttpGet(requestURL); //GET 메소드 URL 생성
			HttpResponse response = client.execute(getRequest);
			
			//Response 출력
			if (response.getStatusLine().getStatusCode() == 200) {
				ResponseHandler<String> handler = new BasicResponseHandler();
				String body = handler.handleResponse(response);
				System.out.println(body);
				
				JSONObject jobject = new JSONObject(body);
				vo.setName(jobject.getString("name"));
				vo.setAccountId(jobject.getString("accountId"));
				vo.setId(jobject.getString("id"));
				vo.setProfileIconId(jobject.getInt("profileIconId"));
				vo.setPuuid(jobject.getString("puuid"));
				vo.setRevisionDate(jobject.getInt("revisionDate"));
				vo.setSummonerLevel(jobject.getInt("summonerLevel"));
				 
//				vo = mapper.readValue(body, LolSummonerVO.class);// String to Object로 변환
				//JSONObject  json  = mapper.readValue(body, new TypeReference<JSONObject>() {} );// String to Object로 변환
				//System.out.println("jsonL> "+json);
		        }
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
		System.out.println(vo.getName());
		return vo;
	}

}
