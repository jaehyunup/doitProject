package com.kakaolove.doit.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kakaolove.doit.api.APIParse;
import com.kakaolove.doit.service.projectService;
import com.kakaolove.doit.service.userProfileService;
import com.kakaolove.doit.service.waitService;
import com.kakaolove.doit.vo.projectVO;
import com.kakaolove.doit.vo.userProfileVO;
import com.kakaolove.doit.vo.waitVO;


@Controller
public class ProjectController {	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	 
	//@Resource(name="projectService")
	
	@Inject
	private String uploadPath;
	
	@Inject
	private projectService service;
	@Inject
	private userProfileService upservice;
	@Inject 
	private waitService waitservice;
	
	@RequestMapping(value = "/project", method=RequestMethod.GET)
    public String listAll(Model model) throws Exception{
        model.addAttribute("projectList", service.listAll());
        return "project/listAll";
    }
	
    @RequestMapping(value="/create",method=RequestMethod.GET)
    public String createGET( Model model) throws Exception{
    	return "project/create";
    }
    
    @RequestMapping(value="/myproject",method=RequestMethod.GET)
    public String myproject(Principal principal,Locale locale,Model model) throws Exception{
    	Authentication authentication=SecurityContextHolder.getContext().getAuthentication(); // context 인증정보 받기
		
		if(authentication.getName()=="anonymousUser") { // 로그인되어있지않은(허가 되지않은) 사용자
			return "redirect:/login";
		}
		
		//authentication.getName() // 로그안한아
    	
    	
    	return "project/myproject";
    }
    
    
    @RequestMapping(value="/create",method=RequestMethod.POST)
    public String createPOST(@RequestParam("userid") String id, projectVO project,Model model,RedirectAttributes rttr) throws Exception{
      project.setLeader(upservice.getuserProfile(id).getNickname());  
        //logger.info("파일이름 :"+file.getOriginalFilename());
       // logger.info("파일크기 : "+file.getSize());
       // logger.info("컨텐트 타입 : "+file.getContentType());
        
      	MultipartFile mf=project.getUploadFile();
      
        
        
        logger.info("originalName: " + mf.getOriginalFilename());
		logger.info("size: " + mf.getSize());
		logger.info("contentType: " + mf.getContentType());

		String savedName = uploadFile(mf.getOriginalFilename(), mf.getBytes());

		model.addAttribute("savedName", savedName);

		return "uploadResult";
        
        
      
        
        try {
            mf.transferTo(new File(safeFile));
            project.setImg(safeFile);
           } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
          }
        
        
        service.create(project);
        
        rttr.addFlashAttribute("msg", "성공");
        return "redirect:project";
    }
	
    
	
	
    @RequestMapping(value ="/detail", method = RequestMethod.GET)
    public String detail(@RequestParam("no") int no, Principal principal,Model model ) throws Exception{   
    	
    	Authentication authentication=SecurityContextHolder.getContext().getAuthentication(); // context 인증정보 받기
		
		if(authentication.getName()!="anonymousUser") { // 로그인되어있지않은(허가 되지않은) 사용자
			 waitVO waitvo=new waitVO();
		        waitvo.setNo(no);
		        waitvo.setNickname(upservice.getuserProfile(authentication.getName()).getNickname());
		        
		        if(waitservice.checkWait(waitvo)==0) {
		        	model.addAttribute("checkjoin", 1); //결과없으면
		        }
		        else {
		        	model.addAttribute("checkjoin", 0); // 결과있으면
		        }
		       
		    	model.addAttribute("pVO",service.read(no));
		    	logger.info(authentication.getName());
		        return "project/detail";
		}
		
    	model.addAttribute("pVO",service.read(no));
		return "project/detail";
       
    }
   
   
    
    @RequestMapping(value ="/joinproject", method = RequestMethod.POST)
   public String detailPost(@RequestParam("userid") String id, waitVO vo, Model model ) throws Exception{
      vo.setNickname(upservice.getuserProfile(id).getNickname());
      
      if(waitservice.checkWait(vo)!=0) {
    	  logger.info(Integer.toString(waitservice.checkWait(vo)));
          model.addAttribute("msg", "이미 등록된 프로젝트입니다");

      }
      waitservice.create(vo);
      model.addAttribute("msg", "프로젝트 참여를 요청하였습니다.");
      model.addAttribute("pVO",service.read(vo.getNo()));
      
      return "redirect:project";
   }
    
    private String uploadFile(String originalName, byte[] fileData) throws Exception {

		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	
}
