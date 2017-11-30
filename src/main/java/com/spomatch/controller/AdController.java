package com.spomatch.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spomatch.dto.AdVo;
import com.spomatch.service.AdService;
 



@Controller
public class AdController {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired AdService adService;

	@RequestMapping(value="/spomatch/ad/ad.do")
	public void adAction(){
		logger.info("ad");
	}

	@RequestMapping(value="/spomatch/ad/newAd.do", method = RequestMethod.POST)
	public ModelAndView newAdAction(HttpSession session, @RequestParam String name, @RequestParam String comp, @RequestParam String email, @RequestParam String url, @RequestParam String startDate, @RequestParam String endDate, @RequestParam String ad_Type, @RequestParam String adImage, @RequestParam String phone){
		AdVo adVo = new AdVo();
		adVo.setAd_Name(name);
		adVo.setAd_Comp(comp);
		adVo.setAd_Email(email);
		adVo.setAd_Url(url);
		adVo.setAd_Start(Date.valueOf(startDate));
		adVo.setAd_End(Date.valueOf(endDate));
		adVo.setAd_Phone(phone);
		char ad_Cate = 0;
		if(ad_Type.equals("축구")) {
			ad_Cate = 'S';
		}else if(ad_Type.equals("야구")) {
			ad_Cate = 'B';
		}else if(ad_Type.equals("게임")) {
			ad_Cate = 'G';
		}else if(ad_Type.equals("상관없음")) {
			ad_Cate = 'E';
		}
		adVo.setAd_Cate(ad_Cate);
		
		adService.newAd(adVo);
		ModelAndView mv = new ModelAndView("redirect:/spomatch/main/main.do");
		logger.info("NewAd");
		return mv;
	}
	
	
	
	/*@RequestMapping(value="/spomatch/ad/newAd.do", method = RequestMethod.POST)
	public ModelAndView newAdAction2(Map<String, Object> commandMap, HttpServletRequest request) throws Exception{
		adService.insertBoard(commandMap, request);

		ModelAndView mv = new ModelAndView("redirect:/spomatch/ad/ad.do");
		logger.info("NewAd");
		return mv;
	}*/
}