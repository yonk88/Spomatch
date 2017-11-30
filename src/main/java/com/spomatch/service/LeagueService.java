package com.spomatch.service;

import java.util.List;

import com.spomatch.dto.LeagueTmVo;
import com.spomatch.dto.LeagueVo;

public interface LeagueService {
	public List leagueList(String catg);
	
	public List leagueRankList(String lea_Idx);
	
	public List leagueMyList(String mem_Idx);
	
	public LeagueVo leagueHost(String lea_Idx);

	public void tmtUpdate(LeagueTmVo ltVo);

	public void leaStUpdate(String lea_Idx);
}
