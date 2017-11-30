package com.spomatch.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.aspectj.lang.annotation.Around;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		logger.info("���̵�޴� ����");
		
	}
	@RequestMapping(value = "/spomatch/sideMenu/teamInfo.do")
	public void teamInfo() {
		logger.info("���� ��");
		
	}
	/*@RequestMapping(value = "/spomatch/sideMenu/sideMenu.do")
	public void sideMenu() {
		logger.info("���̵�޴� ����");
		
	}*/

	@RequestMapping(value = "/spomatch/sideMenu/memberInfo.do"/*, method= RequestMethod.POST*/)
	public ModelAndView memberInfo(HttpSession session) {
		logger.info("���̵�޴� ȸ������ �ҷ�����");
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
			mv.addObject("gender", "����");
		}else {
			mv.addObject("gender", "����");
		}
		
		if(mem_Lv == 0)
			mv.addObject("level", "�ֻ��� ������");
		if(mem_Lv == 1)
			mv.addObject("level", "������");
		if(mem_Lv == 2)
			mv.addObject("level", "�Ϲ�ȸ��");
		if(mem_Lv == 3)
			mv.addObject("level", "��ȸ ���");
		
		//logger.info(result);
		mv.addObject("result", result);
		//logger.info(mem_Birth);
			
		logger.info(mv);
		
		return mv;
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/memberUpdate.do"/*, method= RequestMethod.POST*/)
	public ModelAndView memberUpdate(HttpSession session) {
		logger.info("���̵�޴� ȸ������ �ҷ�����");
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
			mv.addObject("gender", "����");
		}else {
			mv.addObject("gender", "����");
		}
		
		if(mem_Lv == 0)
			mv.addObject("level", "�ֻ��� ������");
		if(mem_Lv == 1)
			mv.addObject("level", "������");
		if(mem_Lv == 2)
			mv.addObject("level", "�Ϲ�ȸ��");
		if(mem_Lv == 3)
			mv.addObject("level", "��ȸ ���");
		
		//logger.info(result);
		mv.addObject("result", result);
		//logger.info(mem_Birth);
			
		logger.info(mv);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/spomatch/sideMenu/setMemberUpdate.do", method = RequestMethod.POST)
	public String setMemberUpdate(MemberVo vo, HttpSession session, @RequestParam String mem_Pass, 
			@RequestParam String mem_Local ) {
		logger.info("��� DB������Ʈ");
		String mem_Idx = session.getAttribute("loginSession").toString();
		vo.setMem_Idx(mem_Idx);
		vo.setMem_Pass(mem_Pass);
		vo.setMem_Local(mem_Local);
		
		logger.info(vo);
		sideService.setMemberUpdate(vo);
		
		return "spomatch/sideMenu/sideMenu";
		
	}
	
	
}
