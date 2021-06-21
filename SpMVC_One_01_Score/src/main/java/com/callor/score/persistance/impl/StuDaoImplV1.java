package com.callor.score.persistance.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.callor.score.model.ScVO;
import com.callor.score.model.StuVO;
import com.callor.score.persistance.StuDao;

@Repository("StuDao")
public class StuDaoImplV1 implements StuDao{

	@Autowired
	protected final JdbcTemplate jdbcTemplate;
	public StuDaoImplV1(JdbcTemplate jdbcTemplate) {
		// TODO Auto-generated constructor stub
		this.jdbcTemplate = jdbcTemplate;
	}	
	@Override
	public List<StuVO> selectAll() {
		// TODO Auto-generated method stub
		String sql = " SELECT * FROM view_성적처리 ";
		
		List<StuVO> vo = jdbcTemplate.query(sql, new BeanPropertyRowMapper<StuVO>()); 
		return vo;
	}

	@Override
	public StuVO findById(String pk) {
		// TODO Auto-generated method stub
		String sql = " SELECT * FROM view_성적처리 ";
		sql += " WHERE st_num ";
		Object[] params = new Object[] { pk };
		
		ScVO vo = (ScVO) jdbcTemplate.query(sql, new BeanPropertyRowMapper<ScVO>(ScVO.class));
		return null;
	}

	@Override
	public int insert(StuVO vo) {
		// TODO Auto-generated method stub
		String sql = " INSERT INTO tbl_student ";
		sql += " st_num, st_name, st_dept, st_grade, st_tel, st_addr ";
		sql += " VALUES( ?,?,?,?,?,? ) ";
		
		Object[] params = new Object[] {
				vo.getSt_num(),
				vo.getSt_name(),
				vo.getSt_dept(),
				vo.getSt_grade(),
				vo.getSt_tel(),
				vo.getSt_addr()
		};
		return jdbcTemplate.update(sql,params);
	}

	@Override
	public int update(StuVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String pk) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String findByMaxNum() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StuVO> findByname(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StuVO> findBydept(String dept) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StuVO> findBygrade(String grade) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StuVO> findByTel(String ceo) {
		// TODO Auto-generated method stub
		return null;
	}

}
