package com.kakaolove.doit.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kakaolove.doit.vo.projectVO;

@Repository("projectDAO")
public class projectDAOImpl implements projectDAO {
	
	@Inject
	private SqlSession sqlSession;

    
	private static String namespace = "com.kakaolove.doit.mappers.projectMapper";
	
	@Override
	   public void create(projectVO vo) throws Exception {
	      sqlSession.insert(namespace+".insertProject", vo);
	      sqlSession.insert(namespace+".insertProjectSub", vo);
	   }

	@Override
	public List<projectVO> listAll() throws Exception {
		return sqlSession.selectList(namespace+".listProject");
	}

	@Override
	public projectVO read(Integer no) throws Exception {
		return sqlSession.selectOne(namespace+".readProject", no);
	}

	@Override
	public void delete(Integer no) throws Exception {
		sqlSession.delete(namespace+".deleteProject", no);
	}

	@Override
	public void update(projectVO vo) throws Exception {
		sqlSession.update(namespace+".updateProject", vo);
	}

	@Override
	public List<projectVO> listten() throws Exception {
		return sqlSession.selectList(namespace+".listten");
	}

	@Override
	public List<projectVO> myProjectList(String nickname) throws Exception {
		return sqlSession.selectList(namespace+".myProjectList",nickname);
	}

	@Override
	public String getWaitList(int no) throws Exception {
		return sqlSession.selectOne(namespace+".getWaitList",no);
	}

}
