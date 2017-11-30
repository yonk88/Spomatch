package com.spomatch.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapApiController {
	
	private static final Logger logger
	= LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value= "/spomatch/mapApi/mapApi.do")
	public void getMapApiAcition(){
		
	}

}
