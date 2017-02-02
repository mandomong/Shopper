package org.zerock.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.domain.InventoryItemVO;
import org.zerock.service.InventoryItemService;

@Controller
public class ItemDetailController {

	@Inject
	private InventoryItemService service;
	
	@RequestMapping("/item")
	public ModelAndView itemListPage(@RequestParam("itemno") String itemno) throws Exception{
		
		System.out.println("[Server] : productdetail Page");
		
		ModelAndView mav = new ModelAndView();
		
		InventoryItemVO result = service.read(itemno);
		
		System.out.println(result);
		
		mav.addObject("result", result);
		mav.setViewName("productdetail");
		return mav;
	}
	
	
}
