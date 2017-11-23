package com.spomatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class AdController {
	
	private static final Logger logger
	= LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="/spomatch/ad/ad.do")
	public void mainAction(){
		logger.info("ad");
	}

}