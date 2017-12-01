package com.spomatch.serviceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.spomatch.dao.SideDao;
import com.spomatch.dto.MemberVo;
import com.spomatch.dto.TeamVo;
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

	@Override
	public List teamCheck(String team_Name) {
		return dao.teamCheck(team_Name);
	}

	@Override
	public void teamCreateAction(TeamVo vo) {
		dao.teamCreateAction(vo);
		
	}

	@Override
	public List myTeam(String mem_Idx) {
		return dao.myTeam(mem_Idx);
	}

	@Override
	public TeamVo teamInfoAJAX(String team_Idx) {
		return dao.teamInfoAJAX(team_Idx);
	}

	@Override
	public String teamCpName(String team_Idx) {
		return dao.teamCpName(team_Idx);
	}

	@Override
	public List teamList() {
		return dao.teamList();
	}

}
