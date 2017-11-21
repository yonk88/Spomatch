package com.spomatch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class AdminController {
	
	private static final Logger logger
	= LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/spomatch/admin/adminMain.do")
	public void adminMainAction(){
		
	}

}
