package com.spomatch.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spomatch.dto.MemberVo;
import com.spomatch.service.MailService;

@Controller
public class MailController {
	Logger logger = Logger.getLogger(MailController.class);

    @Autowired
    private MailService mailService;
 
    // 회원가입 이메일 전송
    @RequestMapping(value = "/spomatch/member/emailVerify.do", method = RequestMethod.POST)
    @ResponseBody
    public boolean emailVerify(HttpSession session, @RequestParam String mem_Id) {
        int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
        String joinCode = String.valueOf(ran);
        session.setAttribute("joinCode", joinCode);
        logger.info("메일 컨트롤러");
        logger.info("아이디 : "+ mem_Id);
 
        String subject = "회원가입 인증 코드 발급 안내 입니다.";
        StringBuilder sb = new StringBuilder();
        sb.append("귀하의 인증 코드는 " + joinCode + " 입니다.");
        
        logger.info(sb.toString());

        boolean result = mailService.send(subject, sb.toString(), "spomatch12@gmail.com", mem_Id, null);
        return result;
    }
    
    //이메일 중복확인
    @RequestMapping(value = "/spomatch/member/emailCheck.do", method = RequestMethod.POST)
    @ResponseBody
    public int emailCheck(HttpServletRequest request, @RequestParam String mem_Id) {
    	logger.info("메일 중복확인");
    	List list = mailService.emailCheck(mem_Id);
    	logger.info(list);
		if(list.size()==0) {
			return -1;
		}else {
			return 1;
		}
    }
    
}