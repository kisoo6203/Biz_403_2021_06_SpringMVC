package com.callor.score.service.impl;

import org.springframework.stereotype.Service;

import com.callor.score.model.StuVO;
import com.callor.score.persistance.StuDao;
import com.callor.score.service.StuService;

@Service
public class StuServiceImplV1 implements StuService{

	protected final StuDao stuDao;
	public StuServiceImplV1(StuDao stuDao) {
		this.stuDao = stuDao;
	}
	@Override
	public int insert(StuVO vo) {
		// TODO Auto-generated method stub
		
		String stNum = stuDao.findByMaxNum();
		
		if(stNum == null || stNum.equals("")) {
			stNum = String.format("2021%04d", 1);
		} else {
			Integer intNum = Integer.valueOf(stNum);
		}
		vo.setSt_num(stNum);
		stuDao.insert(vo);
		
		return 0;
	}

}
