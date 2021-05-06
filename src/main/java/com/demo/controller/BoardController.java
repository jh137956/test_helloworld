package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.domain.Criteria;
import com.demo.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor // 클래스의 모든필드를 대상으로 파라미터를 구성하여, 생성자메서드 생성
public class BoardController {

	
	private BoardService service;
	
	/* 
	  스프링 4.3 이후 단일생성자의 묵시적 자동주입.(page 67참고)
	@AutoWired 생략됨. 
	public BoardController(BoardService service) {
		this.service = service;
	}
	*/
	@GetMapping("/index")
	public String boardIndex() {
		
		log.info("called boardIndex()");
		return "/index";
	}
	
	// 리스트. 주소? /board/list
//	@GetMapping("/list")
	@RequestMapping(value = "/list", method = {RequestMethod.GET, RequestMethod.POST})
	public void list(@ModelAttribute("cri") Criteria cri, Model model) {
		
		log.info("리스트 진입" + cri);

		
		
		
		
			
	}
	
	
	
	
}
