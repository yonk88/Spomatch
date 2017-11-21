package com.spomatch.serviceImp;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.BoardDao;
import com.spomatch.dto.MatchVo;
import com.spomatch.service.BoardService;

@Service
public class BoardServiceImp implements BoardService{
	
	@Autowired BoardDao boaDao;

	@Override
	public List boardList(String catg) {
		return boaDao.boardList(catg);
	}
	
	

}
