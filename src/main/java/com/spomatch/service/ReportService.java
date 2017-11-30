package com.spomatch.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.spomatch.dto.ReportVo;


public interface ReportService {
	public List<Map<String, Object>> reportBoardList(HttpSession session) throws Exception;
	
	public List<Map<String, Object>> reportBoardList2(HttpSession session) throws Exception;
	
	public void newReport(ReportVo repVo);
	
	public int getIdxById(String id);
	
	public int SuspendByIdx(int mem_Idx);
	
}
