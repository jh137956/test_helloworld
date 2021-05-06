package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.domain.MemberVO;
import com.demo.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/shop/*")
@AllArgsConstructor
public class mainController {

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPage() {
		
		log.info("메인페이지 진입");
	}
	
	
	
}
