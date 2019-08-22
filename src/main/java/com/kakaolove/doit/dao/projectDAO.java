package com.kakaolove.doit.dao;

import java.util.List;

import com.kakaolove.doit.vo.projectVO;

public interface projectDAO {

	public void create(projectVO vo) throws Exception;
	public List<projectVO> listAll() throws Exception;
	public projectVO read(Integer no) throws Exception;
	public void delete(Integer no) throws Exception;
	public void update(projectVO vo) throws Exception;
	public List<projectVO> listten() throws Exception;
	public List<projectVO> myProjectList(String nickname) throws Exception;
	public String getWaitList(int no) throws Exception;


}
