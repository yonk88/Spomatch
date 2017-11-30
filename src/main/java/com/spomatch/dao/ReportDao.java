package com.spomatch.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.spomatch.dto.ReportVo;

public interface ReportDao {

	
	public ReportVo reportVerify(ReportVo vo);
	
	public ReportVo reportViewByIdx(String rep_idx);

	public void newReport(ReportVo vo);

	//public void findPassword(String mem_Pass, String mem_Id);

	public List<Map<String, Object>> reportBoardList(HttpSession session) throws Exception;
	
	public List<Map<String, Object>> reportBoardList2(HttpSession session) throws Exception;
	
	public int getIdxById(String id);
	
	public int SuspendByIdx(int mem_Idx);
}
