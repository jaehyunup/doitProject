package com.kakaolove.doit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kakaolove.doit.dao.waitDAO;
import com.kakaolove.doit.vo.waitVO;

@Service("waitService")
public class waitServiceImpl implements waitService{
	
	//@Resource(name="waitDAO")
	@Inject
	private waitDAO dao;

	@Override
	public void create(waitVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<waitVO> listAll() throws Exception {
		return null;
	}

	@Override
	public waitVO read(Integer no) throws Exception {
		return null;
	}

	@Override
	public void delete(Integer no) throws Exception {
	}

	@Override
	public void update(waitVO vo) throws Exception {
	}

	@Override
	public int checkWait(waitVO vo) throws Exception {
		
		return dao.checkWait(vo);
	} 
	
	
}

