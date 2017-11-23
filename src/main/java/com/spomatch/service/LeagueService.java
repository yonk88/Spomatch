package com.spomatch.service;

import java.util.List;

public interface LeagueService {
	public List leagueList(String catg);
	
	public List leagueRankList(String lea_Idx);
	
	public List leagueMyList(String mem_Idx);
}
