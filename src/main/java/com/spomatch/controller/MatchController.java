package com.spomatch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MatchController {
	
	@RequestMapping (value = "/spomatch/match/match.do")
	public void insertMatchTAction(){
		
	}

	@RequestMapping (value = "/spomatch/recruit/recruit.do")
	public void insertMatchRAction(){
		
	}
}