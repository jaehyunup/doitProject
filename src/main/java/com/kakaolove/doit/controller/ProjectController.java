package com.kakaolove.doit.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kakaolove.doit.api.APIParse;
import com.kakaolove.doit.service.projectService;
import com.kakaolove.doit.vo.projectVO;


@Controller
@RequestMapping("/project")
public class ProjectController {	
 
	//@Resource(name="projectService")
	@Inject
	private projectService service;
	
    @RequestMapping(value="/create",method=RequestMethod.GET)
    public void createGET(projectVO project, Model model) throws Exception{
        System.out.println(" /project/create �Դϴ�. GET방식");

    }
    
	@RequestMapping(value="/create",method=RequestMethod.POST)
    public String createPOST(projectVO project, RedirectAttributes rttr) throws Exception{
        System.out.println("POST방식 /project/create 입니다.");
        System.out.println(project.toString());

        service.create(project);
        
        rttr.addFlashAttribute("msg", "성공");
        return "redirect:/project/listAll";
    }
	
	@RequestMapping(value = "/listAll", method=RequestMethod.GET)
    public void listAll(Model model) throws Exception{
        
        System.out.println("굿");
        
        model.addAttribute("projectList", service.listAll());
    }
	
	@RequestMapping(value ="/detail", method = RequestMethod.GET)
    public void detail(@RequestParam("no") int no, Model model ) throws Exception{
        
        System.out.println("ㅁ"+no+"ㅁ");
        
        model.addAttribute(service.read(no));
    }
	
}
