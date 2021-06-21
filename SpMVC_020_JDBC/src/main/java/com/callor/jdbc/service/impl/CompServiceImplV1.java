package com.callor.jdbc.service.impl;

import java.util.List;

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
	@Override
	public List<CompVO> findByCName(String cp_code) {
		
		// 전달받은 출판사 이름에서 앞뒤의 빈칸을 제거하고
		// Dao에게 토스한 후
		// 출판사 리스트를 받아 다시 return하기
		return compDao.findByCName(cp_code.trim());
	}
	@Override
	public List<CompVO> selectAll() {

		return compDao.selectAll();
	}
	@Override
	public CompVO findByCCode(String cp_code) {

		return compDao.findById(cp_code.trim());
	}

}
