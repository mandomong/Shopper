package org.zerock.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.service.MemberService;

@Controller
public class RegisterController {
	
	@Inject
	private MemberService service;
	
	@RequestMapping("/register")
	public ModelAndView showRegister() throws Exception{
		
		System.out.println("[Server] : register Page");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("register");
		
		
		return mav;
	}
	
	@RequestMapping("/register/insert")
	public String insertRegister() throws Exception{
		
		System.out.println("[Server] : register insert Page");
		
		
		return "redirect:/index";
	}
	
}
