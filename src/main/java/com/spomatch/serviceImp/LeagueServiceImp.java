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
	public List leagueList() {
		return leaDao.leagueList();
	}

	@Override
	public List leagueRankList() {
		return leaDao.leagueRankList();
	}
	
	@Override
	public List leagueMyList() {
		return leaDao.leagueMyList();
	}
}
