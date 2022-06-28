package com.withlol.pp;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.MemberServiceImpl;
import member.MemberVO;

@Controller
public class MemberController {
	
	@Autowired private MemberServiceImpl service;
	
	@RequestMapping ("/join/join")
	public String member_join(MemberVO vo) {
		service.member_join(vo);
		return "redirect:/";
	}
	
	//아이디 중복확인 요청
	@ResponseBody
	@RequestMapping ("/id_check")
	public boolean id_check(String id) {
		return service.member_id_check(id);
	}
	
	@RequestMapping ("/join")
	public String member() {
		return "member/join";
	}
	
	// 로그인 처리 요청
	@ResponseBody
	@RequestMapping ("/memberLogin")
	public boolean login(String id, String pw, HttpSession session) {
		// 화면에서 전송한 아이디, 비밀번호가 일치하는 회원정보를 DB에서 조회
		// 매개변수 2개를 HashMap 형태롤 담아 service에 전달
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		MemberVO vo = service.member_login(map);
		
		session.setAttribute("loginInfo", vo);
		
		return vo == null ? false : true;
	}
	
	@RequestMapping ("/login")
	public String login() {

		return "member/login";
	}
	
	@RequestMapping ("/logout")
	public String logout(HttpSession session) {
		
		session.setAttribute("loginInfo", null);
		
		return "redirect:/";
	}
}
