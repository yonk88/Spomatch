package com.spomatch.dao;

import java.util.List;

import com.spomatch.dto.MemberVo;

public interface SideDao {

	public MemberVo getMemberInfo(String mem_Id);

	public void setMemberUpdate(MemberVo vo);

	

}
