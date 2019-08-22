package com.kakaolove.doit.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kakaolove.doit.vo.userProfileVO;


@Repository("userProfileDAO")
public class userProfileDAOImpl implements userProfileDAO {
	@Inject
	protected SqlSessionTemplate sqlSession;
	private String namespace="profileMapper"; 
	
	@Override
	public int insertuserProfile(userProfileVO userprofilevo) throws Exception {
			
		return sqlSession.insert(namespace+".insertuserprofile",userprofilevo);
		
	}
	
	@Override
	public int modifyuserProfile(userProfileVO userprofilevo) throws Exception {
		return sqlSession.update(namespace+".modifyuserProfile",userprofilevo);
	}

	
	@Override
	public userProfileVO getuserProfile(String id) throws Exception {
		return sqlSession.selectOne(namespace+".selectuserProfile",id);
	}





}
