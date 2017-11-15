package com.spomatch.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spomatch.dto.MemberVo;
import com.spomatch.service.AccountService;

@Controller
public class AccountController {
	
	Logger logger = Logger.getLogger(AccountController.class);
	
	@Autowired AccountService aService;
	
	@RequestMapping(value = "/spomatch/member/memberJoin.do", method = RequestMethod.GET)
	public void newIdMain() {
		logger.info("newIdMain");

	}
	
	@RequestMapping(value = "/spomatch/member/memberJoinAction.do", method = RequestMethod.GET)
	public String newIdAction(MemberVo vo) {
		logger.info("memberJoinAction");
		aService.memberJoin(vo);
		
		return null;

	}
	
	
}
