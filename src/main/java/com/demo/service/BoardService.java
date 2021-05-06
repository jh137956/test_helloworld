package com.demo.service;

import java.util.List;

import com.demo.domain.BoardVO;
import com.demo.domain.Criteria;

public interface BoardService {
	
	public List<BoardVO> getList();
	
	public void insert(BoardVO board);
	
	public BoardVO read(Long bod_num);
	

	


}
