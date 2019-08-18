package com.kakaolove.doit.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.kakaolove.doit.security.customUserDetails;

@Repository("userAuthDAO")
public class userAuthDAO{
	/* 로그인인증을 위한 DAO */
	@Inject
	protected SqlSessionTemplate sqlSession;
	
	private String namespace="userMapper";
	
	public customUserDetails selectUser(String id) {
		return sqlSession.selectOne(namespace+".selectUser",id);
		
	}
	
	public int insertUser(customUserDetails userdetails) throws Exception { 
		return sqlSession.insert(namespace+".insertUser", userdetails); 
		}
	public int updateUser(customUserDetails userdetails) throws Exception {
		return sqlSession.update(namespace+".updateUser", userdetails); 
		}
	public int deleteUser(String id) throws Exception { 
		return sqlSession.delete(namespace+".deleteUser", id);
	}


}
