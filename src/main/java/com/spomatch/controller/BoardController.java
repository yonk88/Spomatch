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
import com.spomatch.service.BoardService;

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
			List<MatchVo> boaList = boaService.boardList(catg);
			model.addAttribute("boaList", boaList);
			int listLeng = boaList.size();	
			model.addAttribute("totalPage", listLeng);
			//logger.info("boardList Num : " + Integer.toString(listLeng));
		}else{
			logger.info("=*=*=*==*MatCatg is NOT null");
			logger.info(request.getParameter("catg"));
			catg = request.getParameter("catg");
			session.setAttribute("catg", catg);
			logger.info("Before : " + request.getParameter("catg"));
			List<MatchVo> boaList = boaService.boardList(catg);
			logger.info(String.valueOf(boaList.size()));
			model.addAttribute("boaList", boaList);
			logger.info("After : " + request.getParameter("catg"));
		}
		
	}
	
	//매치 신청
	@RequestMapping (value = "/spomatch/board/matchListProc.do")
	public String matchListProcAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		
		return "matchList.do";
	}
	
	@RequestMapping (value="/spomatch/board/boardPage.do")
	public void boardPageAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		
	}

}
