package com.spomatch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.AccountDao;
import com.spomatch.dto.MemberVo;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired AccountDao dao;
	
	@Override
	public void memberJoin(MemberVo vo) {
		dao.memberJoin(vo);
		
	}
}
