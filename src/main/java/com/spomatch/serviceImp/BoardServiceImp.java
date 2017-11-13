package com.spomatch.serviceImp;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.BoardDao;
import com.spomatch.dto.MatchVo;

@Service
public class BoardServiceImp implements BoardDao{
	
	@Autowired BoardDao boaDao;

	@Override
	public List boardList() {
		return boaDao.boardList();
	}
	
	

}
