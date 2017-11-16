package com.spomatch.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import java.util.Calendar;
import java.util.List;
import java.text.SimpleDateFormat;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.SybaseCallMetaDataProvider;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spomatch.dto.MemberVo;
import com.spomatch.service.AccountService;



@Controller
public class AccountController {

	Logger logger = Logger.getLogger(AccountController.class);

	@Autowired
	AccountService aService;
	
	//로그인 메인페이지
	@RequestMapping(value = "memberLogin.do")
	public void loginMain() {
		
	}

	//회원가입 메인페이지
	@RequestMapping(value = "/spomatch/member/memberJoin.do", method = RequestMethod.GET)
	public void newIdMain() {
		logger.info("newIdMain");

	}
	
	//이메일 인증번호 처리
	@RequestMapping(value = "/spomatch/member/joincodeCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public boolean joincodeCheck(HttpSession session, @RequestParam String joincode) {
		logger.info("이메일 인증번호 처리");
		String emailJoincode = session.getAttribute("joinCode").toString();
		logger.info("세션 인증코드 : "+emailJoincode);
		logger.info("입력 인증코드 : "+joincode);
		
		if(emailJoincode.equals(joincode)) {
			return true;
		}else {
			return false;
		}
	}
	
	//회원가입 처리
	@RequestMapping(value = "/spomatch/member/memberJoinAction.do", method = RequestMethod.POST)
	public String memberJoinAction(MemberVo vo, @RequestParam String mem_Pass2) {
		logger.info("멤버 : memberJoinAction");
		
		int ran = new Random().nextInt(10000) + 1000;
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
		Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());
		String mem_Idx = strToday+ran;
		List list = aService.idxCheck(mem_Idx);

		while (list.size() != 0) {
			ran = new Random().nextInt(10000) + 1000;
			list = aService.idxCheck(mem_Idx);
		}
		vo.setMem_Idx(mem_Idx);
		
		if(!vo.getMem_Pass().equals(mem_Pass2)) {
			
			
		}
		
		logger.info(vo);
		aService.memberJoinAction(vo);
		
		return "redirect:/memberLogin.do";

	}
	
	//로그인
	@RequestMapping(value = "loginAction.do", method = RequestMethod.POST)
	public String loginAction(HttpSession session, @RequestParam String mem_Id, @RequestParam String mem_Pass) {
		
		MemberVo vo = new MemberVo();
		vo.setMem_Id(mem_Id);
		vo.setMem_Pass(mem_Pass);
		
		logger.info("Ver1");
		logger.info("입력 ID:" + mem_Id);
		logger.info("입력 PW:" + mem_Pass);
		MemberVo result = aService.loginAction(vo);
		logger.info("result:" + result);
		
		if(mem_Id.equals(result.getMem_Id()) && mem_Pass.equals(result.getMem_Pass())) {
			session.setAttribute("sessionid", mem_Id);
			return "redirect:/spomatch/main/main.do";
		}else {
			return "redirect:/login/loginMain.do";
		}
		
	}

}
