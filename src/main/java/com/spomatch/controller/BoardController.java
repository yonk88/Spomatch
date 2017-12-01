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
	@Autowired MatchService mService;
	
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
			
			int endPage = 1;
			int countList = boaList.size();
			
			if(countList > 5){
				endPage = (int) Math.ceil(countList/5.0);
			}
						
			model.addAttribute("endPage", endPage);
			model.addAttribute("totalPage", countList);
			logger.info("boardList Num : " + Integer.toString(countList));
			logger.info("boardList Num : " + Integer.toString(endPage));
			
		}else{
			logger.info("=*=*=*=*MatCatg is NOT null=*=*=*=*");
			logger.info("Matlis NotNULL Param : " + request.getParameter("catg"));
			catg = request.getParameter("catg");
			session.setAttribute("catg", catg);
			logger.info("Session : " + session.getAttribute("catg"));
			//logger.info("Before : " + request.getParameter("catg"));
			List<MatchVo> boaList = boaService.boardList(catg);
			model.addAttribute("boaList", boaList);
			
			int endPage = 1;
			int countList = boaList.size();
			
			if(countList > 5){
				endPage = (int) Math.ceil(countList/5.0);
			}
			logger.info("boardList Num : " + Integer.toString(countList));
			logger.info("boardList Num : " + Integer.toString(endPage));
			model.addAttribute("endPage", endPage);
			model.addAttribute("totalPage", countList);
			
		}
			
		}
	@RequestMapping (value ="/spomatch/board/myBoard.do")
	public void myBoardAction(MatchVo matVo, TeamVo tVo, Model model, HttpSession session, HttpServletRequest request ){
		logger.info("_+_+_+ match Team +_+_+_");
		//logger.info("xVal : " + xVal + ", yVAl : " + yVal + ", ADDR : " + addr);
		logger.info(request.getParameter("addr"));
		String mem_Idx = "1711091111";
		logger.info(mem_Idx);
		//팀 리스트 가져오기
		request.setAttribute("mem_Idx", mem_Idx);
		String my_Write = "";
		List<TeamVo> tmList = mService.teamList(tVo, mem_Idx);
		List<MemberVo> memList = mService.getTeamCp(mem_Idx);

		logger.info("tmList : " + tmList);
		logger.info("memCAP : " + memList);
		
		model.addAttribute("tmList", tmList);
		model.addAttribute("memList", memList);
		
	}
	
	@RequestMapping (value = "/spomatch/board/myBoinfo.do")
	public String showMyWriteAction(){
		
		
	return null;	
	}
	/*@RequestMapping (value = "/spomatch/board/recruitList.do")
	public void recuruitListAction(RecruitVo rcVo, Model model, HttpSession session, HttpServletRequest request){
		
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
		
	}*/

}
