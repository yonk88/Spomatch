package com.spomatch.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.spomatch.dto.AdVo;


public interface AdService {
	public void newAd(AdVo adVo);

	public void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
}
