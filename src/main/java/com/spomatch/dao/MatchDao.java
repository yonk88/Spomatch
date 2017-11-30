package com.spomatch.dao;

import java.util.List;

import com.spomatch.dto.MatchVo;
import com.spomatch.dto.MemberVo;
import com.spomatch.dto.TeamVo;
import com.spomatch.dto.TmemVo;

public interface MatchDao {
	
	public void insertTeamMatch(MatchVo matVo);
	
	public List teamList(TeamVo tVo, String mem_Idx);
	
	public List getTeamCp(String mem_Idx);
	
	public MatchVo getMatchInfo(int mat_Idx);
	
	public TeamVo getTeamInfo(int mat_Idx);
	
	public MemberVo getPhoneCp(int mat_Idx);

}
