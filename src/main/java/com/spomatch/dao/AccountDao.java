package com.spomatch.dao;

import java.util.List;

import com.spomatch.dto.MemberVo;

public interface AccountDao {

	public MemberVo emailVerify(MemberVo vo);
	
	public void memberJoinAction(MemberVo vo);

	public List emailCheck(String mem_Id);
	
	public List idxCheck(String mem_idx);

	public MemberVo loginAction(MemberVo vo);
}
