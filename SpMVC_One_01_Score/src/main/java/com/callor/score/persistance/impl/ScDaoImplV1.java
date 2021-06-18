package com.callor.score.persistance.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.callor.score.model.ScVO;
import com.callor.score.model.StuVO;
import com.callor.score.persistance.ScDao;

public class ScDaoImplV1 implements ScDao {

	protected final JdbcTemplate jdbcTemplate;
	public ScDaoImplV1(JdbcTemplate jdbcTemplate) {
		// TODO Auto-generated constructor stub
		this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public List<ScVO> selectAll() {
		// TODO Auto-generated method stub
		String sql = " SELECT * FROM tbl_score ";
		
		List<ScVO> scList =
				jdbcTemplate.query(sql, new BeanPropertyRowMapper<ScVO>(ScVO.class));
		
		return scList;
	}

	@Override
	public ScVO findById(String pk) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(ScVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ScVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String pk) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String findByMaxSeq() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StuVO> findByStNum(String stnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StuVO> findBySubject(String subject) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StuVO> findByScore(String score) {
		// TODO Auto-generated method stub
		return null;
	}

}
