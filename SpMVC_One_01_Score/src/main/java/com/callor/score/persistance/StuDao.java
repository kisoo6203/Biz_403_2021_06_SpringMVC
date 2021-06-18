package com.callor.score.persistance;

import java.util.List;

import com.callor.score.model.StuVO;

public interface StuDao extends GenericDao<StuVO, String>{
	
	public String findByMaxNum();
	public List<StuVO> findByname(String name);
	public List<StuVO> findBydept(String dept);
	public List<StuVO> findBygrade(String grade);
	public List<StuVO> findByTel(String ceo);

}
