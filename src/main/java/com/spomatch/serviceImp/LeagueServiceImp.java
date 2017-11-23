package com.spomatch.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.BoardDao;
import com.spomatch.dao.LeagueDao;
import com.spomatch.service.LeagueService;

@Service
public class LeagueServiceImp implements LeagueService{
	@Autowired LeagueDao leaDao;

	@Override
	public List leagueList(String catg) {
		return leaDao.leagueList(catg);
	}

	@Override
	public List leagueRankList(String lea_Idx) {
		return leaDao.leagueRankList(lea_Idx);
	}
	
	@Override
	public List leagueMyList(String mem_Idx) {
		return leaDao.leagueMyList(mem_Idx);
	}
}
