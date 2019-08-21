package com.kakaolove.doit.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kakaolove.doit.api.APIParse;
import com.kakaolove.doit.service.projectService;
import com.kakaolove.doit.vo.projectVO;


@Controller
public class ProjectController {	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	 private static final String SAVE_PATH = "D:\temp";
	 
	//@Resource(name="projectService")
	@Inject
	private projectService service;
	
	@RequestMapping(value = "/project", method=RequestMethod.GET)
    public String listAll(Model model) throws Exception{
        model.addAttribute("projectList", service.listAll());
        return "project/listAll";
    }
	
    @RequestMapping(value="/create",method=RequestMethod.GET)
    public void createGET(projectVO project, Model model) throws Exception{

    }
    
    @RequestMapping(value="/myproject",method=RequestMethod.GET)
    public String myproject(projectVO project, Model model) throws Exception{
    	return "project/myproject";
    }
    
    
	@RequestMapping(value="/create",method=RequestMethod.POST)
    public String createPOST(projectVO project, RedirectAttributes rttr) throws Exception{
        logger.info("파일이름:"+project.getUploadFile().getOriginalFilename());
        //logger.info("파일이름 :"+file.getOriginalFilename());
       // logger.info("파일크기 : "+file.getSize());
       // logger.info("컨텐트 타입 : "+file.getContentType());
        MultipartFile mf=project.getUploadFile();
        String originalFileName = mf.getOriginalFilename();
        long fileSize = mf.getSize();
        String safeFile = SAVE_PATH + System.currentTimeMillis() + originalFileName;
        logger.info(originalFileName);
        
        try {
            mf.transferTo(new File(safeFile));

           } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
          }
        service.create(project);
        rttr.addFlashAttribute("msg", "성공");
        return "redirect:/project";
    }
	
	
	
	@RequestMapping(value ="/detail", method = RequestMethod.GET)
    public void detail(@RequestParam("no") int no, Model model ) throws Exception{        
        model.addAttribute("pVO",service.read(no));
    }
	
}
