package com.kakaolove.doit.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.kakaolove.doit.dao.userAuthDAO;
import com.kakaolove.doit.security.customUserDetails;

@Service
public class customUserDetailsService implements UserDetailsService {
	private static final Logger logger = LoggerFactory.getLogger(customUserDetailsService.class);
	@Inject
	BCryptPasswordEncoder passwordEncoder;
	@Autowired
    private userAuthDAO userAuthDAO;
 
    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        customUserDetails user = userAuthDAO.selectUser(id);
		
        if(user==null) {
            throw new UsernameNotFoundException(id);
        }
        
        return user;
    }
    
    public int insertUser(customUserDetails userdetails) throws Exception {
    	customUserDetails userdetailsAuth=new customUserDetails();
    	/* 중요정보 암호화 */
    	userdetailsAuth.setId(userdetails.getId());
    	userdetailsAuth.setPw(passwordEncoder.encode(userdetails.getPw())); 
    	userdetailsAuth.setNickname(userdetails.getNickname());
    	int ret=userAuthDAO.insertUser(userdetailsAuth);
    	return ret;
    }
    
    public int updateUser(customUserDetails userdetails) throws Exception {
		return userAuthDAO.updateUser(userdetails); 
		}
    
	public int deleteUser(String id) throws Exception { 
		return userAuthDAO.deleteUser(id);
	}
    

	public customUserDetails dupchecktUser(String id) {
		return userAuthDAO.dupchecktUser(id);		
	}
}


