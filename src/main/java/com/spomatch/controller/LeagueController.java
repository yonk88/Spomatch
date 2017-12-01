package com.spomatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		//String mem_Idx = session.getAttribute("loginSession").toString();
		String mem_Idx ="1711211777";
		if(catg==null){
			logger.info("NONONONOCATG");
			catg="S";
			List<LeagueVo> leaList = leaService.leagueList(catg);
			model.addAttribute("leaList", leaList);
			model.addAttribute("mem_Idx", mem_Idx);
			model.addAttribute("catg", catg);
		}else{
			logger.info("got CATG : " + catg);
			catg = request.getParameter("catg");
			logger.info("got CATG2 : " + catg);
			List<LeagueVo> leaList = leaService.leagueList(catg);
			int listLeng = leaList.size();
			logger.info("leagueList Num = "+Integer.toString(listLeng));
			model.addAttribute("leaList", leaList);
			logger.info("leagueList : "+leaVo.toString());
			model.addAttribute("mem_Idx", mem_Idx);
			model.addAttribute("catg", catg);
		}
	}
	
	@Autowired LeagueTmService leaTmService;
	
	@RequestMapping(value="/spomatch/league/leagueTmt.do")
	public void leagueTmListAction(LeagueTmVo leaTmVo, Model model, 
			HttpSession session, HttpServletRequest request){
		
		String lea_Idx = request.getParameter("lea_Idx");
		List<LeagueTmVo> leaTmList = leaTmService.leagueTmList(lea_Idx);
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
		String lea_Idx = request.getParameter("lea_Idx");
		
		List<LeagueTmVo> leaRkList = leaService.leagueRankList(lea_Idx);

		model.addAttribute("teamNum", leaRkList.size());
		logger.info("leagueRkListNum = "+Integer.toString(leaRkList.size()));
		
		model.addAttribute("leaRkList", leaRkList);
		logger.info("leagueRkList = "+leaTmVo.toString());
	}
	
	@RequestMapping(value="/spomatch/league/leagueCreate.do")
	public void leagueCrtAction(LeagueVo leaVo, Model model,
			HttpSession session, HttpServletRequest request){
		
	}
	
	//얘가 토너먼트 본체임!!
	@RequestMapping(value="/spomatch/league/tmtTest.do")
	public void tmtTest(LeagueVo leaVo, LeagueTmVo leaTmVo, Model model, 
			HttpSession session, HttpServletRequest request){
		String lea_Idx = request.getParameter("lea_Idx");
		//String lea_Host = leaService.leagueHost(lea_Idx);
		leaVo = leaService.leagueHost(lea_Idx);
		//String mem_Idx = session.getAttribute("loginSession").toString();
		String mem_Idx ="1711211777";
		List<LeagueTmVo> leaTmList = leaTmService.leagueTmList(lea_Idx);
		int listLeng = leaTmList.size();
		
		model.addAttribute("leaVo", leaVo);
		model.addAttribute("mem_Idx", mem_Idx);
		model.addAttribute("teamNum", listLeng);
		model.addAttribute("lea_Idx", lea_Idx);
		logger.info("leagueTmList Num : " + Integer.toString(leaTmList.size()));
		model.addAttribute("leaTmList", leaTmList);
		logger.info("leagueTmList:" + leaTmVo.toString());
	}
	
	@RequestMapping(value="/spomatch/league/leagueWinnerAction.do", method = RequestMethod.POST)
	public @ResponseBody void leagueWinnerAction(LeagueTmVo ltVo, LeagueVo leaVo, Model model, 
			HttpSession session, HttpServletRequest request){
		logger.info("winnerUpdateltList : "+ltVo.toString());
		leaService.winnerUpdate(ltVo);
		
		//return "redirect:/league/tmtTest.do?lea_Idx="+ltVo.getLea_Idx();
	}
	
	@RequestMapping(value="/spomatch/league/leagueTmtAction.do", method = RequestMethod.POST)
	public @ResponseBody void leagueTmtAction(LeagueTmVo ltVo, LeagueVo leaVo, Model model, 
			HttpSession session, HttpServletRequest request){
		logger.info("leaTmList : "+ltVo.toString());
		leaService.tmtUpdate(ltVo);
		
		//return "redirect:/league/tmtTest.do?lea_Idx="+ltVo.getLea_Idx();
	}
	
	@RequestMapping(value="/spomatch/league/leagueFinAction.do", method = RequestMethod.POST)
	public String leagueFinAction(String lea_Idx, LeagueVo leaVo, Model model, 
			HttpSession session, HttpServletRequest request){
		logger.info("leaStList : "+leaVo);
		leaService.leaFinUpdate(leaVo);
		
		//return "redirect:/spomatch/main/main.do";
		return "redirect:/spomatch/league/tmtTest.do?lea_Idx="+lea_Idx;
	}
	
	@RequestMapping(value="/spomatch/league/leagueStAction.do", method = RequestMethod.POST)
	public String leagueStAction(String lea_Idx, LeagueVo leaVo, Model model, 
			HttpSession session, HttpServletRequest request){
		logger.info("leaStList : "+lea_Idx);
		leaService.leaStUpdate(lea_Idx);
		
		//return "redirect:/spomatch/main/main.do";
		return "redirect:/spomatch/league/tmtTest.do?lea_Idx="+lea_Idx;
	}
	
	@RequestMapping(value="/spomatch/league/leagueStsAction.do", method = RequestMethod.POST)
	public String leagueStsAction(String lea_Idx, LeagueVo leaVo, Model model, 
			HttpSession session, HttpServletRequest request){
		logger.info("leaStList : "+leaVo);
		leaService.leaStsUpdate(leaVo);
		
		//return "redirect:/spomatch/main/main.do";
		return "redirect:/spomatch/league/tmtTest.do?lea_Idx="+lea_Idx;
	}
	
	@RequestMapping(value="/spomatch/league/leagueMyList.do")	// 내팀이 참가한 대회
	public void leagueMyListAction(LeagueVo leaVo, Model model, HttpSession session, 
			HttpServletRequest request){
		logger.info("LeagueMyList");
		//String mem_Idx = session.getAttribute("loginSession").toString();
		String mem_Idx ="1711211777";
		List<LeagueVo> leaMyList = leaService.leagueMyList(mem_Idx);
		int listLeng = leaMyList.size();
		
		//model.addAttribute("mem_Idx", mem_Idx);
		logger.info("leagueMyList Num = "+Integer.toString(listLeng));
		model.addAttribute("leaMyList", leaMyList);
		logger.info("leagueMyList : "+leaVo.toString());
	}

}
