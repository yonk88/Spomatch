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
import com.spomatch.dto.MemberVo;
import com.spomatch.dto.RecruitVo;
import com.spomatch.dto.TeamVo;
import com.spomatch.service.BoardService;
import com.spomatch.service.MatchService;

@Controller
public class BoardController {
	
	@Autowired BoardService boaService;
	
	private static final Logger logger
	= LoggerFactory.getLogger(BoardController.class);


	//메치 리스트 가져오기
	
	@RequestMapping (value = "/spomatch/board/matchList.do")
	public void matchListAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		logger.info("MatchList");
		String catg = request.getParameter("catg");
		/*List<MatchVo> boaList = boaService.boardList();
		model.addAttribute("boaList", boaList);
		int listLeng = boaList.size();*/
		
		if(catg == (null)){
			logger.info("////MatCatg is null//////");
			catg = "S";
			session.setAttribute("catg", catg);
			logger.info("Session : " + session.getAttribute("catg"));
			List<MatchVo> boaList = boaService.boardList(catg);
			model.addAttribute("boaList", boaList);
			
			int listLeng = boaList.size();	
			model.addAttribute("totalPage", listLeng);
			//logger.info("boardList Num : " + Integer.toString(listLeng));
		}else{
			logger.info("=*=*=*=*MatCatg is NOT null=*=*=*=*");
			logger.info("Matlis NotNULL Param : " + request.getParameter("catg"));
			catg = request.getParameter("catg");
			session.setAttribute("catg", catg);
			logger.info("Session : " + session.getAttribute("catg"));
			//logger.info("Before : " + request.getParameter("catg"));
			List<MatchVo> boaList = boaService.boardList(catg);
			model.addAttribute("boaList", boaList);
		}
		
	}
	
	@RequestMapping (value = "/spomatch/board/recruitList.do")
	public void recuruitListAction(RecruitVo rcVo, Model model, HttpSession session, HttpServletRequest request){

	@RequestMapping (value = "/spomatch/board/matchListProc.do")
	public String matchListProcAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		
		logger.info("////=*=Recruit=*=//////");
		String catg = request.getParameter("catg");
		
		if(catg == (null)){
			logger.info("////Recruit Catg is null//////");
			catg = "S";
			List<RecruitVo> rcList = boaService.rcList(catg);
			model.addAttribute("rcList", rcList);
			
		}else{
			logger.info("=*=*=*=*Recruit is NOT null=*=*=*=*");
			//logger.info(request.getParameter("catg"));
			catg = request.getParameter("catg");
			List<RecruitVo> rcList = boaService.rcList(catg);
			model.addAttribute("rcList", rcList);
		}
		
	}
	
	

	@RequestMapping (value="/spomatch/board/reportPage.do")
	public void reportPageAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		
	}
	


}
