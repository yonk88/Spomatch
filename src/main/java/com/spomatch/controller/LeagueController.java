package com.spomatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spomatch.dto.LeagueVo;
import com.spomatch.service.LeagueService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class LeagueController {
	@Autowired LeagueService leaService;
	
	private static final Logger logger
	= LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value="/spomatch/league/leagueList.do")
	public void leagueListAction(LeagueVo leaVo, Model model, HttpSession session, HttpServletRequest request){
		logger.info("LeagueList");
		
		List<LeagueVo> leaList = leaService.leagueList();
		int listLeng = leaList.size();
		
		logger.info("leagueList Num = "+Integer.toString(listLeng));
		model.addAttribute("leaList", leaList);
		logger.info("leagueList : "+leaVo.toString());
	}

}
