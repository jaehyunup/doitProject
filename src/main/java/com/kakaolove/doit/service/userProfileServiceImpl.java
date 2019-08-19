package com.kakaolove.doit.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kakaolove.doit.dao.userProfileDAO;
import com.kakaolove.doit.vo.userProfileVO;

@Service
public class userProfileServiceImpl implements userProfileService {
	@Inject
    private userProfileDAO dao;

	@Override
	public int insertuserProfile(userProfileVO userprofilevo) throws Exception {
		return dao.insertuserProfile(userprofilevo);
	}

	@Override
	public userProfileVO getuserProfile(String userid) throws Exception {
		
		return dao.getuserProfile(userid);
	}

	@Override
	public int modifyuserProfile(userProfileVO userid) throws Exception {
		return dao.modifyuserProfile(userid);
	}
	
}
