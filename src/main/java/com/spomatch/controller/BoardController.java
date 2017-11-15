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
	
	@RequestMapping (value = "/spomatch/board/boardList.do")
	public void boardListAction(MatchVo matVo, Model model, HttpSession session, HttpServletRequest request){
		logger.info("BoardList");

		List<MatchVo> boaList = boaService.boardList();
		int listLeng = boaList.size();
		
		logger.info("boardList Num : " + Integer.toString(listLeng));
		model.addAttribute("boaList", boaList);
		logger.info("boardList:" + matVo.toString());
		
	}
	
	@RequestMapping (value="/spomatch/board/boardPage.do")
	public void boardPageAction(Model model, HttpSession session, HttpServletRequest request){
		logger.info("boardPageParam: " + request.getParameter("catg"));
	}

}
