package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.domain.Criteria;
import org.zerock.domain.InventoryItemVO;
import org.zerock.service.InventoryItemService;

@Controller
public class IndexController {
	
	@Inject
	private InventoryItemService service;
	
	@RequestMapping("/index")
	public ModelAndView showIndex() throws Exception{
		
		System.out.println("[Server] : index Page ");
		
		ModelAndView mav = new ModelAndView();
		Criteria cri = new Criteria();
	    cri.setStartNum(1);
	    cri.setEndNum(4);
	    
	    List<InventoryItemVO> result1;
	    result1 = service.listBeetween(cri);
	    mav.addObject("result1", result1);
	    
	    cri.setStartNum(5);
	    cri.setEndNum(8);
	    
	    
	    List<InventoryItemVO> result2;
	    result2 = service.listBeetween(cri);
	    mav.addObject("result2", result2);
	    
	    
	    mav.setViewName("index");
	    
	    return mav;
		
	}
	
	
}
