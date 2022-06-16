package com.withlol.pp;


import java.io.IOException;
import java.net.URL;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lol.LolServiceImpl;
import lol.LolSummonerVO;
import lol.LolTierVO;

@Controller
public class LolController {
	@Autowired private LolServiceImpl service;
	
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
		
		return "record/record";
	}
	
}
