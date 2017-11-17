package com.spomatch.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.LeagueDao;
import com.spomatch.service.LeagueTmService;

@Service
public class LeagueTmServiceImp implements LeagueTmService{

	@Autowired LeagueDao leaDao;
	
	@Override
	public List leagueTmList() {
		return leaDao.leagueTmList();
	}
	
}
