package com.spomatch.dto;

//팀 정보
public class TeamVo {

	private String team_Idx;
	private String team_Name;
	private String team_Local;
	private String team_Account;
	private char team_Cate;
	private String team_Age;
	private char team_Lv;
	private String team_Color;
	private String team_Vest;
	private String team_Cp;
	
	public String getTeam_Idx() {
		return team_Idx;
	}
	public void setTeam_Idx(String team_Idx) {
		this.team_Idx = team_Idx;
	}
	public String getTeam_Name() {
		return team_Name;
	}
	public void setTeam_Name(String team_Name) {
		this.team_Name = team_Name;
	}
	public String getTeam_Local() {
		return team_Local;
	}
	public void setTeam_Local(String team_Local) {
		this.team_Local = team_Local;
	}
	public String getTeam_Account() {
		return team_Account;
	}
	public void setTeam_Account(String team_Account) {
		this.team_Account = team_Account;
	}
	public char getTeam_Cate() {
		return team_Cate;
	}
	public void setTeam_Cate(char team_Cate) {
		this.team_Cate = team_Cate;
	}
	public String getTeam_Age() {
		return team_Age;
	}
	public void setTeam_Age(String team_Age) {
		this.team_Age = team_Age;
	}
	public char getTeam_Lv() {
		return team_Lv;
	}
	public void setTeam_Lv(char team_Lv) {
		this.team_Lv = team_Lv;
	}
	public String getTeam_Color() {
		return team_Color;
	}
	public void setTeam_Color(String team_Color) {
		this.team_Color = team_Color;
	}
	public String getTeam_Vest() {
		return team_Vest;
	}
	public void setTeam_Vest(String team_Vest) {
		this.team_Vest = team_Vest;
	}
	public String getTeam_Cp() {
		return team_Cp;
	}
	public void setTeam_Cp(String team_Cp) {
		this.team_Cp = team_Cp;
	}
	@Override
	public String toString() {
		return "TeamVo [team_Idx=" + team_Idx + ", team_Name=" + team_Name + ", team_Local=" + team_Local
				+ ", team_Account=" + team_Account + ", team_Cate=" + team_Cate + ", team_Age=" + team_Age
				+ ", team_Lv=" + team_Lv + ", team_Color=" + team_Color + ", team_Vest=" + team_Vest + ", team_Cp="
				+ team_Cp + "]";
	}
	
	
}
