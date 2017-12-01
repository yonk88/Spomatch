package com.spomatch.controller;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spomatch.dto.MatchVo;
import com.spomatch.dto.MemberVo;
import com.spomatch.dto.RecruitVo;
import com.spomatch.dto.TeamVo;
import com.spomatch.dto.TmemVo;
import com.spomatch.service.MatchService;

@Controller
public class MatchController {

	@Autowired MatchService mService;
	
	private static final Logger logger
	= LoggerFactory.getLogger(MatchController.class);
	
	@RequestMapping (value = "/spomatch/match/matchTeam.do")
	public void insertTeamMatAction(MemberVo mVo, TeamVo tVo, MatchVo matVo, Model model
			,HttpServletRequest request, HttpSession session){
		logger.info("_+_+_+ match Team +_+_+_");
		//logger.info("xVal : " + xVal + ", yVAl : " + yVal + ", ADDR : " + addr);
		logger.info(request.getParameter("addr"));
		String mem_Idx = "1711091111";
		logger.info(mem_Idx);
		//팀 리스트 가져오기
		request.setAttribute("mem_Idx", mem_Idx);
		
		List<TeamVo> tmList = mService.teamList(tVo, mem_Idx);
		List<MemberVo> memList = mService.getTeamCp(mem_Idx);

		logger.info("tmList : " + tmList);
		logger.info("memCAP : " + memList);
		
		model.addAttribute("tmList", tmList);
		model.addAttribute("memList", memList);
		
	}

	@RequestMapping (value = "/spomatch/match/matchTeamProc.do", method=RequestMethod.GET)
	public String insertTeamMatProcAction(MatchVo matVo, Model model, HttpServletRequest request, HttpSession session){
		logger.info("_+_*-= MatchProc =-*_+_");
		
		if(request.getParameter("xVal").toString().equals("") || request.getParameter("yVal").toString().equals("")){
			matVo.setMat_Local(request.getParameter("mat_Local"));
			matVo.setMat_Cate(request.getParameter("mat_Cate"));
			matVo.setMat_MatchDay(request.getParameter("mat_MatchDay"));
			matVo.setMat_Host(request.getParameter("mat_Host"));
			matVo.setMat_Lv(request.getParameter("mat_Lv"));
			matVo.setMat_Stime(request.getParameter("mat_Stime"));
			matVo.setMat_Ftime(request.getParameter("mat_Ftime"));
			matVo.setMat_Ampm(request.getParameter("mat_Ampm"));
			matVo.setMat_Comment(request.getParameter("mat_Comment"));
			
			logger.info(matVo.toString());
			mService.insertTeamMatch(matVo);
			
			return "redirect:/spomatch/board/matchList.do";
		}else{
			String tempXval = request.getParameter("xVal").toString();
			String tempYval = request.getParameter("yVal").toString();
			//logger.info(tempXval);
			double xVal = Double.valueOf (tempXval).doubleValue();
			double yVal = Double.valueOf (tempYval).doubleValue();
			
			logger.info("mat_Xval : " + request.getParameter("xVal"));
			logger.info("mat_Yval : " + request.getParameter("yVal"));
			logger.info("mat_Local : " + request.getParameter("mat_Local"));
			logger.info("mat_Cate : " + request.getParameter("mat_Cate"));
			logger.info("mat_Matchday : " + request.getParameter("mat_MatchDay"));
			logger.info("mat_Host : " + request.getParameter("mat_Host"));
			logger.info("mat_Lv : " + request.getParameter("mat_Lv"));
			logger.info("mat_Stime : " + request.getParameter("mat_Stime"));
			logger.info("mat_Ftime : " + request.getParameter("mat_Ftime"));
			logger.info("mat_Ampm : " + request.getParameter("mat_Ampm"));
			logger.info("mat_Fsize : " + request.getParameter("mat_Fsize"));
			logger.info("mat_Comment : " + request.getParameter("mat_Comment"));
			
			matVo.setMat_Xval(xVal);
			matVo.setMat_Yval(yVal);
			matVo.setMat_Local(request.getParameter("mat_Local"));
			matVo.setMat_Cate(request.getParameter("mat_Cate"));
			matVo.setMat_MatchDay(request.getParameter("mat_MatchDay"));
			matVo.setMat_Host(request.getParameter("mat_Host"));
			matVo.setMat_Lv(request.getParameter("mat_Lv"));
			matVo.setMat_Stime(request.getParameter("mat_Stime"));
			matVo.setMat_Ftime(request.getParameter("mat_Ftime"));
			matVo.setMat_Ampm(request.getParameter("mat_Ampm"));
			matVo.setMat_Fsize(request.getParameter("mat_Fsize"));
			matVo.setMat_Comment(request.getParameter("mat_Comment"));
			
			logger.info(matVo.toString());
			mService.insertTeamMatch(matVo);
			
			return "redirect:/spomatch/board/matchList.do";
		}
		
	}	
	
	@RequestMapping (value = "/spomatch/board/matchInfo.do")
	public void matchInfoAction(TeamVo tVo, MatchVo matVo, MemberVo mVo, Model model
			,HttpServletRequest request, HttpSession session, @RequestParam int idx){
		logger.info("_+_+_+ matchINFO +_+_+_");
		logger.info("mat_IDX : " + request.getParameter("idx"));
		String mem_Idx = "1711091111";
		int mat_Idx = Integer.parseInt(request.getParameter("idx"));
		String searchVal="";
		
		tVo = mService.getTeamInfo(mat_Idx);
		matVo = mService.getMatchInfo(mat_Idx);
		mVo = mService.getPhoneCp(mat_Idx);
		logger.info(tVo.toString());
		model.addAttribute("tVo", tVo);
		model.addAttribute("matVo", matVo);
		model.addAttribute("mVo", mVo);
	}
	
	/*@RequestMapping (value = "/spomatch/board/matchInfoProc.do")
	public void matchInfoProcAction(TeamVo tVo, MatchVo matVo, MemberVo mVo, Model model
			,HttpServletRequest request, HttpSession session, @RequestParam int idx){
		logger.info("_+_+_+ matchINFO +_+_+_");
		logger.info("mat_IDX : " + request.getParameter("idx"));
		String mem_Idx = "1711091111";
		int mat_Idx = Integer.parseInt(request.getParameter("idx"));
		String searchVal="";
		
		tVo = mService.getTeamInfo(mat_Idx);
		matVo = mService.getMatchInfo(mat_Idx);
		mVo = mService.getPhoneCp(mat_Idx);
		
		model.addAttribute("tVo", tVo);
		model.addAttribute("matVo", matVo);
		model.addAttribute("mVo", mVo);
	}*/
	
	/*@RequestMapping (value = "/spomatch/recruit/recruit.do")
	public void insertRecuMatAction(){
		
	}*/
	
<<<<<<< HEAD
=======
	@RequestMapping (value = "/spomatch/recruit/recruitList.do")
	public void recuruitListAction(){
		
	}
	
	@RequestMapping (value = "/spomatch/recruit/recruitProc.do", method=RequestMethod.POST)
	public String insertRecuMatProcAction(MatchVo matVo){
		logger.info(matVo.toString());
		
		return "redirect:/spomatch/main/main.do";
	}

>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
}