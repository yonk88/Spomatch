package com.spomatch.dao;

import java.util.List;

import com.spomatch.dto.LeagueTmVo;
import com.spomatch.dto.LeagueVo;

public interface LeagueDao {
	public List leagueList(String catg);
	
	public List leagueTmList(String lea_Idx);
	
	public List leagueRankList(String lea_Idx);
	
	public List leagueMyList(String mem_Idx);
	
	public LeagueVo leagueHost(String lea_Idx);
	
	public void tmtUpdate(LeagueTmVo ltVo);

	public void leaStUpdate(String lea_Idx);

	public void winnerUpdate(LeagueTmVo ltVo);

	public void leaFinUpdate(LeagueVo leaVo);

	public void leaStsUpdate(LeagueVo leaVo);
}
