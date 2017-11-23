package com.spomatch.dao;

import java.util.List;

public interface LeagueDao {
	public List leagueList(String catg);
	
	public List leagueTmList(String lea_Idx);
	
	public List leagueRankList(String lea_Idx);
	
	public List leagueMyList(String mem_Idx);
}
