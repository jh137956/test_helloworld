package com.demo.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private	Long bod_num;  // 글번호 예> 게시물 조회. 참조형 : 기본형 null. 기본형 long : null
	private String bod_title;
	private String bod_content;
	private String mb_id;
	private Date bod_regdate;
	private Date bod_update_date;

	
}
