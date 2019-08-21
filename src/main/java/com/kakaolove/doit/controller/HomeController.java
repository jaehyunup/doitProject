package com.kakaolove.doit.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kakaolove.doit.service.projectService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	projectService projectservice;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) throws Exception { 
    	model.addAttribute("projectList", projectservice.listten());
    	return "home";
    }
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String homere(Locale locale, Model model) {    	
        return "redirect:/";
    }
   
}
