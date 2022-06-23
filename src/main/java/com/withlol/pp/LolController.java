package com.withlol.pp;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lol.InfoVO;
import lol.LolRecordVO;
import lol.LolServiceImpl;
import lol.LolSummonerVO;
import lol.LolTierVO;
import lol.ParticipantsVO;

@Controller
public class LolController {
	@Autowired private LolServiceImpl service;

	@SuppressWarnings("null")
	@RequestMapping("/record/{Id}")
	public String record(@PathVariable String Id, Model model) {
		System.out.println(Id);
		String str = null;
		LolSummonerVO vo = service.SummonerInfo(Id);
		model.addAttribute("vo", vo);
		
		List<LolTierVO> list = service.Tier(vo.getId());
		model.addAttribute("tier", list);
		
		
		Id = Id.trim();
		String url = "https://www.op.gg/summoners/kr/"+Id;
		try {
			Document doc = Jsoup.connect(url).get();
			Elements elem = doc.select("div[class=\"css-e9xk5o e1g7spwk3\"]");
			for(Element e: elem.select("div")) {
				str += e.html();
				break;
			}
			System.out.println(str.indexOf("null"));
			System.out.println(str.indexOf("</ul>"));
			str = str.substring(1461);
			model.addAttribute("crawl",str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JSONArray array = service.LolRecord(vo.getPuuid());
		List<LolRecordVO> record_list = new ArrayList<LolRecordVO>();
		List<InfoVO> gametype = new ArrayList<InfoVO>();
		List<ParticipantsVO> record = new ArrayList<ParticipantsVO>();	//내 전적
		for(int i = 0; i < array.length(); i++) {
			record_list.add(i, service.RecordDetail(array.get(i).toString()));
		}
		System.out.println(record_list.get(1).getInfo().getParticipants().get(1));
		for(int i = 0; i < record_list.size(); i++) {
			gametype.add(record_list.get(i).getInfo());
			List<ParticipantsVO> vo2 = record_list.get(i).getInfo().getParticipants();	//한 게임의 전체 플레이어 전적
			for(int y = 0; y < vo2.size(); y++) {
				if(vo.getName().equals(vo2.get(y).getSummonerName())) {
					record.add(vo2.get(y));
				}
			}
		}
		model.addAttribute("gametype", gametype);
		model.addAttribute("record", record);
		
		
		
		return "record/record";
	}
	
}
