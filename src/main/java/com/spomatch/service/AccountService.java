package com.spomatch.service;

import java.util.List;

import com.spomatch.dto.MemberVo;

public interface AccountService {

	public void memberJoinAction(MemberVo vo);

	public List idxCheck(String mem_Idx);

	public MemberVo loginAction(MemberVo vo);

	public MemberVo findEmail(MemberVo vo);

	//public void findPassword(String mem_Pass, String mem_Id);

	public void findPassword(MemberVo vo);


}
