package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.service.CartServiceImpl;


@Controller
public class CartController {
	
	@Inject
	private CartServiceImpl service;
	
	@RequestMapping("/cart")
	public ModelAndView listCart() throws Exception{
		
		System.out.println("[Cart] : cart Page ");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart");
        
        @SuppressWarnings("rawtypes")
		List list = service.listCart();
        //List<ProductVO> list = dao.getProductList();
        System.out.println("¿©±â: "+ list.toString());
    
        
        return mav;
	}
	
	
}
