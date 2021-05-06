package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.domain.MemberVO;
import com.demo.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {

	private MemberService memberservice;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGet() {
	
		log.info("로그인 페이지 진입");
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void joinGet() {
	
		log.info("회원가입 페이지 진입");
	}
	
	//회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPost(MemberVO mvo) {
		
		log.info("join 진입");
		
		memberservice.memberJoin(mvo);
		
		return "redirect:/main";
	}
	
}
