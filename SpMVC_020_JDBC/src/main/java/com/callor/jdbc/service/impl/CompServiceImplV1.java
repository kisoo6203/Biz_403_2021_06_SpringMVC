package com.callor.jdbc.service.impl;

import org.springframework.stereotype.Service;

import com.callor.jdbc.model.CompVO;
import com.callor.jdbc.persistance.CompDao;
import com.callor.jdbc.service.CompService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("compServiceV1")
public class CompServiceImplV1 implements CompService {

	protected final CompDao compDao;
	public CompServiceImplV1(CompDao compDao) {
		this.compDao = compDao;
	}
	@Override
	public int insert(CompVO vo) {
		String cpcode = compDao.findByMaxCode();
		log.debug("cpcode {} ", cpcode);
		
		if(cpcode == null || cpcode.equals("")) {
			// C00001
			cpcode = String.format("C%04d", 1);
		} else {
			// 영문 접두사 C를 자르고 숫자만 추출
			String _code = cpcode.substring(1);
			Integer intCode = Integer.valueOf(_code) + 1;
			
			cpcode = String.format("C%04d", intCode);
		}
		vo.setCp_code(cpcode);
		compDao.insert(vo);
		
		return 0;
	}

}
