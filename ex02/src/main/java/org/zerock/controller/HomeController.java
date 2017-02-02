package org.zerock.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.domain.InventoryItemVO;
import org.zerock.service.InventoryItemService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private InventoryItemService service;

  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

  /**
   * Simply selects the home view to render by returning its name.
   */
  @RequestMapping(value = "/", method = RequestMethod.GET)
  public ModelAndView home(Locale locale, Model model) throws Exception{
    //logger.info("[Server] : Welcome index Page");
    System.out.println("[Server] : Welcome index Page");
    
    List<InventoryItemVO> resultMain;
    resultMain = service.listMain();
    
    ModelAndView mav = new ModelAndView();
    mav.setViewName("index");
    model.addAttribute("result", resultMain);
    
    return mav;
  }
  
}
