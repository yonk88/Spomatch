package com.spomatch.service;

import java.util.List;

import com.spomatch.dto.MemberVo;

public interface SideService {

	public MemberVo getMemberInfo(String mem_Id);

	public void setMemberUpdate(MemberVo vo);

	
}
