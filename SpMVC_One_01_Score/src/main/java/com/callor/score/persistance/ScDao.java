package com.callor.score.persistance;

import java.util.List;

import com.callor.score.model.ScVO;
import com.callor.score.model.StuVO;

public interface ScDao extends GenericDao<ScVO, String>{
	
	public String findByMaxSeq();
	public List<StuVO> findByStNum(String stnum);
	public List<StuVO> findBySubject(String subject);
	public List<StuVO> findByScore(String score);
	
}
