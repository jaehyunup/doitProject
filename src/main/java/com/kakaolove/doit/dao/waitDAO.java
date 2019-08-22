package com.kakaolove.doit.dao;

import java.util.List;

import com.kakaolove.doit.vo.waitVO;

public interface waitDAO {
	public void create(waitVO vo) throws Exception;
	public List<waitVO> listAll() throws Exception;
	public waitVO read(Integer no) throws Exception;
	public void delete(Integer no) throws Exception;
	public void update(waitVO vo) throws Exception;
	public int checkWait(waitVO vo) throws Exception;
}
