package com.spomatch.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.MatchDao;
import com.spomatch.dto.MatchVo;
import com.spomatch.service.MatchService;

@Service
public class MatchServiceImp implements MatchService{
	
	@Autowired MatchDao matDao;

	@Override
	public void insertTeamMatch(MatchVo matVo) {
		matDao.insertTeamMatch(matVo);
	}

}
