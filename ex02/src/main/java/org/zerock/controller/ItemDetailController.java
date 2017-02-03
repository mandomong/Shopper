package org.zerock.controller;

import java.util.List;
import java.util.Map;

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
	public ModelAndView itemListPage(@RequestParam(value = "itemno", required=false) String itemno, @RequestParam(value = "category", required=false) String category) throws Exception{
		
		if(itemno != null){
		System.out.println("[Server] : productdetail Page");
		
		ModelAndView mav = new ModelAndView();
		
		InventoryItemVO result = service.read(itemno);
		
		System.out.println(result);
		
		mav.addObject("result", result);
		mav.setViewName("productdetail");
		return mav;
		}else{
			System.out.println("파라미터 없음");
		}
		return null;
	}
	
	/*
	@RequestMapping("/item/test")
	public void itemListPage() throws Exception{
		System.out.println("[Server] : item test");
		
		List<Map<String, Object>> result = service.jointest();
		System.out.println(result.toString());
	}
	*/
	
	
}
