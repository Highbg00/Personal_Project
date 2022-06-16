package lol;

import java.util.Arrays;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;


@Service
public class LolServiceImpl implements LolService {
	
	
	@Autowired private LolDAO dao;
	
	@Override
	public List<LolTierVO> Tier(String Id) {
		List<LolTierVO> list = null;
		ObjectMapper mapper = new ObjectMapper();
		
		String Id2 = Id.replaceAll(" ","%20");	
		String requestURL = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"+ Id2 + "?api_key=" + common.CommonVal.API_KEY;
		try {
			HttpClient client = HttpClientBuilder.create().build(); // HttpClient 생성
			HttpGet getRequest = new HttpGet(requestURL); //GET 메소드 URL 생성
			HttpResponse response = client.execute(getRequest);
			
			//Response 출력
			if (response.getStatusLine().getStatusCode() == 200) {
				ResponseHandler<String> handler = new BasicResponseHandler();
				String body = handler.handleResponse(response);
				System.out.println(body);
				list = Arrays.asList(mapper.readValue(body, LolTierVO[].class));
	        }
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
		return list;
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
				 
//				vo = mapper.readValue(body, LolSummonerVO.class);// String to Object로 변환
				//JSONObject  json  = mapper.readValue(body, new TypeReference<JSONObject>() {} );// String to Object로 변환
				//System.out.println("jsonL> "+json);
				
				vo = new Gson().fromJson(body, LolSummonerVO.class);
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
