package com.spomatch.serviceImp;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.ReportDao;
import com.spomatch.dto.ReportVo;
import com.spomatch.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService{
	
	@Autowired ReportDao repDao;

	@Override
	public List<Map<String, Object>> reportBoardList(HttpSession session) throws Exception {
		return repDao.reportBoardList(session);
	}
	@Override
	public List<Map<String, Object>> reportBoardList2(HttpSession session) throws Exception {
		return repDao.reportBoardList2(session);
	}

	@Override
	public void newReport(ReportVo repVo) {
		repDao.newReport(repVo);
	}

	@Override
	public int getIdxById(String id) {
		return repDao.getIdxById(id);
	}
	@Override
	public int SuspendByIdx(int mem_Idx) {
		return repDao.SuspendByIdx(mem_Idx);
	}
}
