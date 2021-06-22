package com.callor.jdbc.service;

import java.util.List;

import com.callor.jdbc.model.CompVO;

public interface CompService {
	
	public int insert(CompVO vo);
	public List<CompVO> findByCName(String cp_code);
	public List<CompVO> selectAll();
	public CompVO findByCCode(String cp_code); // Primary Key 이기때문에 데이터는 한개만올라옴
	public List<CompVO> findByTitleAndCeoAndTel(String text);

}
