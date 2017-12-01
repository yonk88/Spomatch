package com.spomatch.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import com.spomatch.service.MailService;

@Controller
public class AccountController {

	Logger logger = Logger.getLogger(AccountController.class);

	@Autowired
	AccountService aService;

	@Autowired
	MailService mailService;

	// 로그인 메인페이지
	@RequestMapping(value = "/memberLogin.do")
	public void loginMain() {

	}

	// 회원가입 메인페이지
	@RequestMapping(value = "/spomatch/member/memberJoin.do", method = RequestMethod.GET)
	public void newIdMain() {
		logger.info("newIdMain");

	}

	// 이메일 인증번호 처리
	@RequestMapping(value = "/spomatch/member/joincodeCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public boolean joincodeCheck(HttpSession session, @RequestParam String joincode) {
		logger.info("이메일 인증번호 처리");
		String emailJoincode = session.getAttribute("joinCode").toString();
		logger.info("세션 인증코드 : " + emailJoincode);
		logger.info("입력 인증코드 : " + joincode);

		if (emailJoincode.equals(joincode)) {
			return true;
		} else {
			return false;
		}
	}

	// 회원가입 처리
	@RequestMapping(value = "/spomatch/member/memberJoinAction.do", method = RequestMethod.POST)
	public String memberJoinAction(HttpSession session ,MemberVo vo, @RequestParam String mem_Pass2) {
		logger.info("멤버 : memberJoinAction");
		//Map<String, String> map = new HashMap<String, String>();

		int ran = new Random().nextInt(90000) + 10000;
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
		Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());
		String mem_Idx = strToday + ran;
		List list = aService.idxCheck(mem_Idx);

		while (list.size() != 0) {
			ran = new Random().nextInt(10000) + 1000;
			list = aService.idxCheck(mem_Idx);
		}
		vo.setMem_Idx(mem_Idx);
		aService.memberJoinAction(vo);
		session.removeAttribute("joinCode");
		
		return "redirect:/memberLogin.do";

	}

	// 로그인
	@RequestMapping(value = "/loginAction.do", method = RequestMethod.POST)
	@ResponseBody
	public boolean loginAction(HttpSession session, @RequestParam String mem_Id, @RequestParam String mem_Pass) {

		MemberVo vo = new MemberVo();
		vo.setMem_Id(mem_Id);
		vo.setMem_Pass(mem_Pass);

		logger.info("입력 ID:" + mem_Id);
		logger.info("입력 PW:" + mem_Pass);
		MemberVo result = aService.loginAction(vo);
		String mem_Idx = result.getMem_Idx();
		logger.info("result:" + result);

		if (result != null) {
			if (mem_Pass.equals(result.getMem_Pass())) {
				session.setAttribute("loginSession", mem_Idx);
				return true;
			}
		}
			
		return false;
	}

	// 이메일 찾기
	@RequestMapping(value = "findEmail.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> findEmail(@RequestParam String mem_Name, @RequestParam String mem_Phone) {

		MemberVo vo = new MemberVo();
		vo.setMem_Name(mem_Name);
		vo.setMem_Phone(mem_Phone);

		logger.info("이메일 찾기");
		logger.info("입력 이름:" + mem_Name);
		logger.info("입력 전화번호:" + mem_Phone);
		MemberVo result = aService.findEmail(vo);
		Map<String, String> map = new HashMap<String, String>();
		if (result != null) {
			if (mem_Name.equals(result.getMem_Name()))
				map.put("mem_Id", result.getMem_Id());
			logger.info("result:" + result);
		}
		return map;
	}

	// 비밀번호 찾기
	@RequestMapping(value = "findPassword.do", method = RequestMethod.POST)
	@ResponseBody
	public boolean findPassword(MemberVo vo, @RequestParam String mem_Id) {
		logger.info("비밀번호 찾기");

		int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
		String mem_Pass = String.valueOf(ran);
		
		vo.setMem_Id(mem_Id);
		vo.setMem_Pass(mem_Pass);
		
		List list = mailService.emailCheck(mem_Id);
		logger.info("list : "+ list);
		
		if(list.size() != 0) {
			logger.info(mem_Pass);
			aService.findPassword(vo); // 해당 유저의 DB정보 변경
			String subject = "Spomatch 임시 비밀번호 발급 안내 입니다.";
			StringBuilder sb = new StringBuilder();
			sb.append("귀하의 임시 비밀번호는 " + mem_Pass + " 입니다.");
			mailService.send(subject, sb.toString(), "spomatch12@gmail.com", mem_Id, null);
			return true;
		}else {
			return false;
		}

	}

}
