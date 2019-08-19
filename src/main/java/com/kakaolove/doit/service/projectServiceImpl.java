package com.kakaolove.doit.service;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kakaolove.doit.dao.projectDAO;
import com.kakaolove.doit.vo.projectVO;

@Service("projectService")
public class projectServiceImpl implements projectService{
	
	//@Resource(name="projectDAO")
	@Inject
	private projectDAO dao; // 데이터 엑세스 오브젝트 (VO를 가지고실질적 데이터에 접근함)
	
	
	@Override
	public void create(projectVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<projectVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public projectVO read(Integer no) throws Exception {
		return dao.read(no);
	}

	@Override
	public void delete(Integer no) throws Exception {
		dao.delete(no);
	}

	@Override
	public void update(projectVO vo) throws Exception {
		dao.update(vo);
	}

}
