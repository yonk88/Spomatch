package com.spomatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class MainController {

	private static final Logger logger
	= LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value="/spomatch/main/main.do")
	public void mainAction(){
		logger.info("SpoMain");

	}

	@RequestMapping(value="/spomatch/main/sideMenu.do")
	public void sideAction(){
		logger.info("SpoSide");

	}
	
	@RequestMapping(value="/spomatch/main/teamInfo.do")
	public void teamAction(){
		logger.info("SpoTeamI");

	}

}
