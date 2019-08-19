package com.kakaolove.doit.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kakaolove.doit.security.customUserDetails;
import com.kakaolove.doit.service.customUserDetailsService;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Inject
	private customUserDetailsService service; 
	
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale,Model model) {
	        
    	return "login"; // login.jsp(Custom Login Page)
	}    
    
    @RequestMapping(value = "/register", method = RequestMethod.GET)
	public String createpage(Locale locale,Model model) {
	        
    	return "register"; // login.jsp(Custom Login Page)
	}  
    
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
	public String create(customUserDetails userDetails,Locale locale,Model model) throws Exception {
    		logger.info("가입시도");
    		if(service.insertUser(userDetails)==1) { //가입 성공
    			logger.info("가입성공");
    	    	return "registerok"; // login.jsp(Custom Login Page)
    		}
    		else { // 실패시
    	    	model.addAttribute("registerresult","false");
    	    	logger.info("가입실패");
    	    	return "login";
    		}
	}
	
	
}
