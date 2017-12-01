package com.spomatch.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.MatchDao;
import com.spomatch.dto.MatchVo;
import com.spomatch.dto.MemberVo;
import com.spomatch.dto.TeamVo;
import com.spomatch.dto.TmemVo;
import com.spomatch.service.MatchService;

@Service
public class MatchServiceImp implements MatchService{
	
	@Autowired MatchDao matDao;

	@Override
	public void insertTeamMatch(MatchVo matVo) {
		matDao.insertTeamMatch(matVo);
	}

	@Override
	public List teamList(TeamVo tVo, String mem_Idx) {
		return matDao.teamList(tVo, mem_Idx);
	}

	@Override
	public List getTeamCp(String mem_Idx) {
		return matDao.getTeamCp(mem_Idx);
	}

	@Override
	public MatchVo getMatchInfo(int mat_Idx) {
		return matDao.getMatchInfo(mat_Idx);
	}

	@Override
	public TeamVo getTeamInfo(int mat_Idx) {
		return matDao.getTeamInfo(mat_Idx);
	}

	@Override
	public MemberVo getPhoneCp(int mat_Idx) {
		return matDao.getPhoneCp(mat_Idx);
	}

}
