package com.spomatch.controller;

<<<<<<< HEAD
import java.util.List;
=======
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.aspectj.lang.annotation.Around;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spomatch.dto.MemberVo;
import com.spomatch.service.AccountService;
import com.spomatch.service.SideService;

@Controller
public class SideController {
	
	Logger logger = Logger.getLogger(SideController.class);
	
	@Autowired SideService sideService;
	
	@RequestMapping(value = "/spomatch/sideMenu/sideMenu.do")
	public void sideMenu() {
		logger.info("사이드메뉴 메인");
		
	}
	@RequestMapping(value = "/spomatch/sideMenu/teamInfo.do")
	public void teamInfo() {
		logger.info("나의 팀");
		
	}
	/*@RequestMapping(value = "/spomatch/sideMenu/sideMenu.do")
	public void sideMenu() {
		logger.info("사이드메뉴 메인");
		
	}*/

	@RequestMapping(value = "/spomatch/sideMenu/memberInfo.do"/*, method= RequestMethod.POST*/)
	public ModelAndView memberInfo(HttpSession session) {
		logger.info("사이드메뉴 회원정보 불러오기");
		ModelAndView mv = new ModelAndView();

		String mem_Idx = session.getAttribute("loginSession").toString();
		//logger.info(mem_Id);
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
		//logger.info(mem_Birth);
			
		logger.info(mv);
		
		return mv;
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/memberUpdate.do"/*, method= RequestMethod.POST*/)
	public ModelAndView memberUpdate(HttpSession session) {
		logger.info("사이드메뉴 회원정보 불러오기");
		ModelAndView mv = new ModelAndView();

		String mem_Idx = session.getAttribute("loginSession").toString();
		//logger.info(mem_Id);
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
		//logger.info(mem_Birth);
			
		logger.info(mv);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/setMemberUpdate.do", method = RequestMethod.POST)
	public String setMemberUpdate(MemberVo vo, HttpSession session, @RequestParam String mem_Pass, 
			@RequestParam String mem_Local ) {
		logger.info("멤버 DB업데이트");
		String mem_Idx = session.getAttribute("loginSession").toString();
		vo.setMem_Idx(mem_Idx);
		vo.setMem_Pass(mem_Pass);
		vo.setMem_Local(mem_Local);
		
		logger.info(vo);
		sideService.setMemberUpdate(vo);
		
		return "spomatch/sideMenu/sideMenu";
=======
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spomatch.dto.MemberVo;
import com.spomatch.dto.TeamVo;
import com.spomatch.dto.TmemVo;
import com.spomatch.service.AccountService;
import com.spomatch.service.SideService;

@Controller
public class SideController {
	
	Logger logger = Logger.getLogger(SideController.class);
	
	@Autowired SideService sideService;
	
	@RequestMapping(value = "/spomatch/sideMenu/sideMenu.do")
	public void sideMenu() {
		logger.info("사이드메뉴 메인");
		
	}
	@RequestMapping(value = "/spomatch/sideMenu/teamInfo.do")
	public void teamInfo(HttpSession session, Model model, TmemVo tmemVo) {
		logger.info("나의 팀정보 페이지");
		ModelAndView mv = new ModelAndView();
		String mem_Idx = session.getAttribute("loginSession").toString();
		List list = sideService.myTeam(mem_Idx);
		logger.info("팀정보 : "+list);
		model.addAttribute("list", list);

	}
	@RequestMapping(value = "teamInfoAJAX.do")
	@ResponseBody
	public TeamVo teamInfoAJAX(@RequestParam String team_Idx) {
		logger.info("팀정보 띄우기");
		TeamVo result = sideService.teamInfoAJAX(team_Idx);
		String mem_Name = sideService.teamCpName(team_Idx);
		result.setTeam_Cp(mem_Name);
		
		logger.info("AJAX : "+result);
		
		return result;
		
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/teamCreate.do")
	public void teamCreate() {
		logger.info("나의 팀만들기 페이지");
		
	}
	
	@RequestMapping(value = "teamCheck.do", method= RequestMethod.POST)
	@ResponseBody
	public boolean teamCheck(@RequestParam String team_Name) {
		logger.info("팀 이름 중복확인");
    	List list = sideService.teamCheck(team_Name);
    	logger.info(list);
		if(list.size()==0) {
			return true;
		}else {
			return false;
		}	
	}
	
	@RequestMapping(value = "teamCreateAction.do")
	public String teamCreateAction(TeamVo vo, @RequestParam String team_Cate, HttpSession session) {
		logger.info("나의 팀만들기");
		int ran = new Random().nextInt(90000) + 10000;
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
		Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());
		String team_Idx = strToday + team_Cate + ran;
		String team_Cp = session.getAttribute("loginSession").toString();
		
		vo.setTeam_Idx(team_Idx);
		vo.setTeam_Cp(team_Cp);
		
		logger.info(vo);
		
		sideService.teamCreateAction(vo);
		
		return "/spomatch/main/main";
		
		
	}
	@RequestMapping(value = "/spomatch/sideMenu/teamList.do")
	public void teamList(Model model) {
		logger.info("팀 목록 페이지");
		List list = sideService.teamList();
		logger.info("팀 목록: " + list);
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/selectTeam.do", method=RequestMethod.GET)
	//@ResponseBody
	public String selectTeam(Model model, @RequestParam String team_Idx) {
		//String team_Idx = "171130B88483";
		
		logger.info("팀 목록 페이지");
		logger.info(team_Idx);
		TeamVo result = sideService.teamInfoAJAX(team_Idx);
		String mem_Name = sideService.teamCpName(team_Idx);
		result.setTeam_Cp(mem_Name);
		logger.info(result);
		
		model.addAttribute("result", result);
		return "/spomatch/sideMenu/selectTeam.do";
		
	}

	@RequestMapping(value = "/spomatch/sideMenu/memberInfo.do"/*, method= RequestMethod.POST*/)
	public ModelAndView memberInfo(HttpSession session) {
		logger.info("사이드메뉴 회원정보 불러오기");
		ModelAndView mv = new ModelAndView();

		String mem_Idx = session.getAttribute("loginSession").toString();
		//logger.info(mem_Id);
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
		//logger.info(mem_Birth);
			
		//logger.info(mv);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/memberUpdate.do"/*, method= RequestMethod.POST*/)
	public ModelAndView memberUpdate(HttpSession session) {
		logger.info("사이드메뉴 회원정보 수정페이지");
		ModelAndView mv = new ModelAndView();

		String mem_Idx = session.getAttribute("loginSession").toString();
		//logger.info(mem_Id);
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
		//logger.info(mem_Birth);
			
		logger.info(mv);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/setMemberUpdate.do", method = RequestMethod.POST)
	public String setMemberUpdate(MemberVo vo, HttpSession session, @RequestParam String mem_Pass, 
			@RequestParam String mem_Local ) {
		logger.info("멤버 DB업데이트");
		String mem_Idx = session.getAttribute("loginSession").toString();
		vo.setMem_Idx(mem_Idx);
		vo.setMem_Pass(mem_Pass);
		vo.setMem_Local(mem_Local);
		
		logger.info(vo);
		sideService.setMemberUpdate(vo);
		
		return "/spomatch/main/main";
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
		
	}
	
	
}
