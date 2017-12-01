package com.spomatch.dto;

//회원별 팀 가입정보
public class TmemVo {

	private String team_Cp;
	private String team_Idx;
	private char team_Cate;
	private String mem_Idx;
	
	
	
	public String getTeam_Cp() {
		return team_Cp;
	}



	public void setTeam_Cp(String team_Cp) {
		this.team_Cp = team_Cp;
	}



	public String getTeam_Idx() {
		return team_Idx;
	}



	public void setTeam_Idx(String team_Idx) {
		this.team_Idx = team_Idx;
	}



	public char getTeam_Cate() {
		return team_Cate;
	}



	public void setTeam_Cate(char team_Cate) {
		this.team_Cate = team_Cate;
	}



	public String getMem_Idx() {
		return mem_Idx;
	}



	public void setMem_Idx(String mem_Idx) {
		this.mem_Idx = mem_Idx;
	}



	@Override
	public String toString() {
		return "TmemVo [team_Cp=" + team_Cp + ", team_Idx=" + team_Idx + ", team_Cate=" + team_Cate + ", mem_Idx="
				+ mem_Idx + "]";
	}
	
	
}
