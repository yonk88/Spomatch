package com.spomatch.dao;

import java.util.List;

import com.spomatch.dto.MemberVo;

public interface AccountDao {

	public MemberVo emailVerify(MemberVo vo);
	
	public void memberJoin(MemberVo vo);

	public List emailCheck(String userid);
}
