package com.demo.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private String mb_sex;
	private String mb_post;
	private String mb_addr;
	private String mb_addr2;
	private String mb_hp;
	private String mb_cp;
	private String mb_email;
	private Long mb_point;
	private Date mb_regdate;
	private Date mb_update_date;
	private Date mb_lastdate;
	
}
