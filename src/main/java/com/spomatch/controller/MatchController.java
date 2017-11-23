package com.spomatch.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spomatch.dto.MatchVo;
import com.spomatch.dto.RecruitVo;
import com.spomatch.service.MatchService;

@Controller
public class MatchController {

	@Autowired MatchService mService;
	
	private static final Logger logger
	= LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping (value = "/spomatch/match/matchTeam.do")
	public void insertTeamMatAction(MatchVo matVo){
		logger.info(matVo.toString());
	}

	@RequestMapping (value = "/spomatch/match/matchTeamProc.do", method=RequestMethod.POST)
	public String insertTeamMatProcAction(MatchVo matVo){
		logger.info(matVo.toString());
		
		return "redirect:/spomatch/main/main.do";
	}
	
	@RequestMapping (value = "/spomatch/recruit/recruit.do")
	public void insertRecuMatAction(){
		
	}
	
}