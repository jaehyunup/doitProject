package com.kakaolove.doit.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kakaolove.doit.vo.projectVO;
import com.kakaolove.doit.vo.waitVO;

@Repository("waitDAO")
public class waitDAOImpl implements waitDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.kakaolove.doit.mappers.projectMapper";
	
	
	@Override
	public void create(waitVO vo) throws Exception {
		sqlSession.insert(namespace+".insertWait", vo);
	}

	@Override
	public List<waitVO> listAll() throws Exception {
		return sqlSession.selectList(namespace+".listProject");
	}

	@Override
	public waitVO read(Integer no) throws Exception {
		return sqlSession.selectOne(namespace+".readProject", no);
	}

	@Override
	public void delete(Integer no) throws Exception {
		sqlSession.delete(namespace+".deleteProject", no);
	}

	@Override
	public void update(waitVO vo) throws Exception {
		sqlSession.update(namespace+".updateProject", vo);
	}

	@Override
	public int checkWait(waitVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".checkWait",vo);
	}
	
	
}
