package com.spomatch.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.spomatch.dto.AdVo;

public interface AdDao {
	public void newAd(AdVo advo);
	
	public void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;
}
