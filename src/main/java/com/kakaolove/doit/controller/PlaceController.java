package com.kakaolove.doit.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kakaolove.doit.api.APIParse;
import com.kakaolove.doit.service.projectService;
import com.kakaolove.doit.vo.projectVO;

@Controller
@RequestMapping("/place")
public class PlaceController {
	
    @RequestMapping(value="/placelist",method=RequestMethod.GET)
    public String placeGET(Model model) throws Exception{
    	
        APIParse test = new APIParse();
        
        int start = 1;
        int end = 5;
        
        List<HashMap<String,Object>> list = test.facility(start, end);
        model.addAttribute("placelist", list);
        return "place/placelist";
    }
}
