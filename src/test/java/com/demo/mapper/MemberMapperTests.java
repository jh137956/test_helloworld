package com.demo.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.demo.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper membermapper;
	
	
	@Test
	public void memberJoin() {
		
		MemberVO member = new MemberVO();
		
		member.setMb_id("test");
		member.setMb_pw("test");
		member.setMb_name("test");
		member.setMb_sex("test");
		member.setMb_post("test");
		member.setMb_addr("test");
		member.setMb_addr2("test");
		member.setMb_cp("test");
		member.setMb_hp("test");
		member.setMb_email("test");
		
		membermapper.memberJoin(member);
		
		
		
	}
	
}
