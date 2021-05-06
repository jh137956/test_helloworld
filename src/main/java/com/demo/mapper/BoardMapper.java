package com.demo.mapper;

import java.util.List;

import com.demo.domain.BoardVO;
import com.demo.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getList();
	
	public void insert(BoardVO board);
	
	public BoardVO read(Long bno);
	

}
