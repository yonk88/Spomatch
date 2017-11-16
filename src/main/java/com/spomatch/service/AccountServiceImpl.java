package com.spomatch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.AccountDao;
import com.spomatch.dto.MemberVo;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired AccountDao dao;
	
	@Override
	public void memberJoinAction(MemberVo vo) {
		dao.memberJoinAction(vo);
		
	}

	@Override
	public List idxCheck(String mem_Idx) {
		return dao.idxCheck(mem_Idx);
	}

	@Override
	public MemberVo loginAction(MemberVo vo) {
		return dao.loginAction(vo);
	}

	
}
