package com.withlol.pp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lol.LolServiceImpl;

@Controller
public class LolController {
	@Autowired private LolServiceImpl service;
	
	@RequestMapping("/record/{Id}")
	public String record(@PathVariable String Id, Model model) {
		System.out.println(Id);
		model.addAttribute("vo", service.SummonerInfo(Id));
		
		return "record/record";
	}
	
}
