package com.spomatch.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccountController {
	
	Logger logger = Logger.getLogger(AccountController.class);
	
	@RequestMapping(value = "/spomatch/member/memberJoin.do", method = RequestMethod.GET)
	public void newIdAction() {
		logger.info("newIdAction");

	}
	
	@RequestMapping
	public String findIdAction() {
		return null;
		
	}
	
	@RequestMapping
	public String findPwAction() {
		return null;
		
	}
	
	@RequestMapping
	public String deleteIdAction() {
		return null;
		
	}
}
