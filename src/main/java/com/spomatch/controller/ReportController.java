package com.spomatch.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spomatch.dto.MemberVo;
import com.spomatch.dto.ReportVo;
import com.spomatch.service.AccountService;
import com.spomatch.service.ReportService;
import com.spomatch.service.SideService;

@Controller
public class ReportController {
	
	@Autowired ReportService repService;

	@Autowired AccountService aService;
	
	@Autowired SideService sideService;
	
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//신고게시판
	@RequestMapping (value="/spomatch/board/openReportPage.do")
	public ModelAndView reportPageAction(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/spomatch/board/reportPage");
		List<Map<String,Object>> list = repService.reportBoardList(session);
		List<Map<String,Object>> list2 = repService.reportBoardList2(session);
		String mem_Idx = session.getAttribute("loginSession").toString();
		MemberVo result = sideService.getMemberInfo(mem_Idx);
		String mem_Birth = result.getMem_Birth();
		String birth = mem_Birth.substring(0, 6);
		String gender = mem_Birth.substring(6, 7);
		int mem_Lv = result.getMem_Lv();
		
		mv.addObject("birth", birth);
		
		if(gender.equals("1") || gender.equals("3")) {
			mv.addObject("gender", "남자");
		}else {
			mv.addObject("gender", "여자");
		}
		
		if(mem_Lv == 0)
			mv.addObject("level", "최상위 관리자");
		if(mem_Lv == 1)
			mv.addObject("level", "관리자");
		if(mem_Lv == 2)
			mv.addObject("level", "일반회원");
		if(mem_Lv == 3)
			mv.addObject("level", "대회 운영자");
		
		//logger.info(result);
		mv.addObject("result", result);
		mv.addObject("list", list);
		mv.addObject("list2", list2);
		logger.info("신고건수: "+ String.valueOf(list.size()));
		return mv;
	}



	@RequestMapping (value="/spomatch/board/newReport.do", method = RequestMethod.POST)
	public ModelAndView newReportAction(HttpSession session, @RequestParam String rep_Content, @RequestParam String rep_Widx, @RequestParam String rep_Type, @RequestParam String rep_Ptn) throws Exception{
		logger.info("rep_Content: "+rep_Content+"  rep_Widx: "+rep_Widx+"  rep_Type: "+rep_Type+"  rep_Ptn"+rep_Ptn);
		ReportVo repVo = new ReportVo();
		String mem_Idx = session.getAttribute("loginSession").toString();
		repVo.setRep_Midx(mem_Idx);
		repVo.setRep_Content(rep_Content);
		repVo.setRep_Widx(String.valueOf(repService.getIdxById(rep_Widx)));
		char r_Type = 0;
		if(rep_Type.equals("사기")){
			r_Type='F';
		}else if(rep_Type.equals("노쇼(no show)")){
			r_Type='N';
		}else if(rep_Type.equals("불량")){
			r_Type='B';
		}
		repVo.setRep_Type(r_Type);
		
		char r_Ptn =0;
		if(rep_Ptn.equals("개인")){
			r_Ptn='P';
		}else if(rep_Ptn.equals("팀")){
			r_Ptn='T';
		}
		repVo.setRep_Ptn(r_Ptn);
		repService.newReport(repVo);
		
		
		ModelAndView mv = new ModelAndView("redirect:/spomatch/main/main.do");
		mv.addObject("test", "testValue");
		return mv;
	}
	@RequestMapping (value="/spomatch/board/suspend.do", method = RequestMethod.POST)
	public ModelAndView suspendAction(HttpSession session, @RequestParam String mem_Idx) throws Exception{
		
		repService.SuspendByIdx(Integer.valueOf(mem_Idx));
		
		ModelAndView mv = new ModelAndView("redirect:/spomatch/main/main.do");
		mv.addObject("test", "testValue");
		return mv;
	}
	
	
	
}
