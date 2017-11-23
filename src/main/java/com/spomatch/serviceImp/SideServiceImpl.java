package com.spomatch.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spomatch.dao.SideDao;
import com.spomatch.dto.MemberVo;
import com.spomatch.service.SideService;

@Service
public class SideServiceImpl implements SideService{

	@Autowired SideDao dao;
	
	@Override
	public MemberVo getMemberInfo(String mem_Id) {
		return dao.getMemberInfo(mem_Id);
	}

	@Override
	public void setMemberUpdate(MemberVo vo) {
		dao.setMemberUpdate(vo);
		
	}

}
