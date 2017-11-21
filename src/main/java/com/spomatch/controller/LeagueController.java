package com.spomatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spomatch.dto.LeagueTmVo;
import com.spomatch.dto.LeagueVo;
import com.spomatch.dto.MatchVo;
import com.spomatch.service.LeagueService;
import com.spomatch.service.LeagueTmService;

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
	
	@RequestMapping(value="/spomatch/league/leagueList.do")	// 신청가능 대회
	public void leagueListAction(LeagueVo leaVo, Model model, HttpSession session, HttpServletRequest request){
		logger.info("LeagueList");
		String catg = request.getParameter("catg");
		
		List<LeagueVo> leaList = leaService.leagueList();
		int listLeng = leaList.size();
		
		logger.info("leagueList Num = "+Integer.toString(listLeng));
		model.addAttribute("leaList", leaList);
		logger.info("leagueList : "+leaVo.toString());
	}
	
	@Autowired LeagueTmService leaTmService;
	
	@RequestMapping(value="/spomatch/league/leagueTmt.do")
	public void leagueTmListAction(LeagueTmVo leaTmVo, Model model, 
			HttpSession session, HttpServletRequest request){
		List<LeagueTmVo> leaTmList = leaTmService.leagueTmList();
		int listLeng = leaTmList.size();
		
//		model.addAttribute("teamNum", "AAA");
		model.addAttribute("teamNum", listLeng);
		logger.info("leagueTmList Num : " + Integer.toString(leaTmList.size()));
		model.addAttribute("leaTmList", leaTmList);
		logger.info("leagueTmList:" + leaTmVo.toString());
	}
	
	@RequestMapping(value="/spomatch/league/leagueRank.do")
	public void leagueRkListAction(LeagueTmVo leaTmVo, Model model, 
			HttpSession session, HttpServletRequest request){
		List<LeagueTmVo> leaRkList = leaService.leagueRankList();

		model.addAttribute("teamNum", leaRkList.size());
		logger.info("leagueRkListNum = "+Integer.toString(leaRkList.size()));
		
		model.addAttribute("leaRkList", leaRkList);
		logger.info("leagueRkList = "+leaTmVo.toString());
	}
	
	@RequestMapping(value="/spomatch/league/leagueCreate.do")
	public void leagueCrtAction(LeagueVo leaVo, Model model,
			HttpSession session, HttpServletRequest request){
		
	}
	
	@RequestMapping(value="/spomatch/league/tmtTest.do")
	public void tmtTestAction(LeagueTmVo leaTmVo, Model model, 
			HttpSession session, HttpServletRequest request){
		List<LeagueTmVo> leaTmList = leaTmService.leagueTmList();
		int listLeng = leaTmList.size();
		
//		model.addAttribute("teamNum", "AAA");
		model.addAttribute("teamNum", listLeng);
		logger.info("leagueTmList Num : " + Integer.toString(leaTmList.size()));
		model.addAttribute("leaTmList", leaTmList);
		logger.info("leagueTmList:" + leaTmVo.toString());
	}
	
	@RequestMapping(value="/spomatch/league/leagueMyList.do")	// 내팀이 참가한 대회
	public void leagueMyListAction(LeagueVo leaVo, Model model, HttpSession session, 
			HttpServletRequest request){
		logger.info("LeagueMyList");
		
		List<LeagueVo> leaMyList = leaService.leagueMyList();
		int listLeng = leaMyList.size();
		
		logger.info("leagueMyList Num = "+Integer.toString(listLeng));
		model.addAttribute("leaMyList", leaMyList);
		logger.info("leagueMyList : "+leaVo.toString());
	}

}
