package com.kakaolove.doit.security;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.authentication.AuthenticationProvider;

import org.springframework.security.authentication.BadCredentialsException;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;

import org.springframework.security.core.Authentication;

import org.springframework.security.core.AuthenticationException;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import com.kakaolove.doit.service.customUserDetailsService;

  

public class customAuthenticationProvider implements AuthenticationProvider{
	
	private static final Logger logger = LoggerFactory.getLogger(customAuthenticationProvider.class);

    @Autowired
    private customUserDetailsService userService;



    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

   

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException

    {

        String user_id = (String)authentication.getPrincipal();   
        String user_pw = (String)authentication.getCredentials();        
        customUserDetails user = (customUserDetails) userService.loadUserByUsername(user_id);

        logger.info("사용자 로그인정보: "+ user_id + "/" + user_pw);
        logger.info("사용자 DB 정보: "+ user.getUsername() + "/" + user.getPassword());

        // 화면에서 입력한 이용자의 비밀번호(평문)와 DB에서 가져온 이용자의 암호화된 비밀번호를 비교한다

        if(! passwordEncoder.matches(user_pw, user.getPassword())){

            throw new BadCredentialsException("Bad credentials");

        }

         

        return new UsernamePasswordAuthenticationToken(user_id, user_pw, user.getAuthorities());

    }

     

    @Override

    public boolean supports(Class<?> authentication)

    {

        return authentication.equals(UsernamePasswordAuthenticationToken.class);

    }

}



