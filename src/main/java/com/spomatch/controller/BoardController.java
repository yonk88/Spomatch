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
	
	@RequestMapping (value = "/spomatch/board/matchList.do")
	public void matchListAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		logger.info("MatchList");
		String catg = request.getParameter("catg");
		
		if(catg == (null)){
			catg = "S";
			List<MatchVo> boaList = boaService.boardList(catg);
			int listLeng = boaList.size();	
			model.addAttribute("totalPage", listLeng);
			//logger.info("boardList Num : " + Integer.toString(listLeng));
			model.addAttribute("boaList", boaList);
			logger.info("boardList:" + matVo.toString());
			model.addAttribute("catg", catg);
		}else{
			logger.info("=*=*=*==*MatCatg is NOT null");
			logger.info(request.getParameter("catg"));
			catg = "B";
			model.addAttribute("catg", catg);
			List<MatchVo> boaList = boaService.boardList(catg);
			model.addAttribute("catg", catg);
		}
		
	}
	
	@RequestMapping (value = "/spomatch/board/matchListProc.do")
	public String matchListProcAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		
		return "matchList.do";
	}
	
	@RequestMapping (value="/spomatch/board/boardPage.do")
	public void boardPageAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		
	}

}
