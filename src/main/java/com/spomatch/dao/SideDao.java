package com.spomatch.dao;

import java.util.List;

<<<<<<< HEAD
import com.spomatch.dto.MemberVo;
=======
import org.springframework.web.servlet.ModelAndView;

import com.spomatch.dto.MemberVo;
import com.spomatch.dto.TeamVo;
>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git

public interface SideDao {

	public MemberVo getMemberInfo(String mem_Id);

	public void setMemberUpdate(MemberVo vo);

<<<<<<< HEAD
=======
	public List teamCheck(String team_Name);

	public void teamCreateAction(TeamVo vo);

	public List myTeam(String mem_Idx);

	public TeamVo teamInfoAJAX(String team_Idx);

	public String teamCpName(String team_Idx);

	public List teamList();

>>>>>>> branch 'masterSirsh12_1201' of https://github.com/yonk88/Spomatch.git
	

}
