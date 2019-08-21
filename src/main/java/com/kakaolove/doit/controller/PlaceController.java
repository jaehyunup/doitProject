package com.kakaolove.doit.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kakaolove.doit.api.APIParse;
import com.kakaolove.doit.service.projectService;
import com.kakaolove.doit.vo.projectVO;

@Controller

public class PlaceController {
   
   private static int start = 1;
   
    @RequestMapping(value="/place",method=RequestMethod.GET)
    public String placeGET(Model model) throws Exception{
        APIParse test = new APIParse();
        List<HashMap<String,Object>> list = test.facility(1, 8);
        model.addAttribute("placelist", list);
        model.addAttribute("pagenum", start);
        return "place/placelist";

    }
    
    @RequestMapping(value="/place",method=RequestMethod.POST)
    public String placePOST(Model model, @RequestParam("page") int start, @RequestParam("next") String next) throws Exception{
       
    	APIParse test = new APIParse();
        if(next.equals("다음")) start = start + 1;
        if(next.equals("이전") && start != 1) start = start - 1;
        if(next.equals("처음")) start = 1;
        
        List<HashMap<String,Object>> list = test.facility(1+(start*8), 8+(start*8));
        model.addAttribute("placelist", list);
        model.addAttribute("pagenum", start);
        return "place/placelist";
    }
    
}