package com.spomatch.dto;

import java.util.Date;

public class RecruitVo {
	
	private int rc_Idx;
	private String rc_Status;
	private String team_Name;
	private String rc_MemIdx;
	private String rc_Cate;
	private Date rc_Date;
	private String rc_Local;
	private String rc_MatchDay;
	private int rc_Num;
	private String rc_Posit;
	
	public int getRc_Idx() {
		return rc_Idx;
	}
	public void setRc_Idx(int rc_Idx) {
		this.rc_Idx = rc_Idx;
	}
	public String getRc_Status() {
		return rc_Status;
	}
	public void setRc_Status(String rc_Status) {
		this.rc_Status = rc_Status;
	}
	public String getTeam_Name() {
		return team_Name;
	}
	public void setTeam_Name(String team_Name) {
		this.team_Name = team_Name;
	}
	public String getRc_ReqMem() {
		return rc_MemIdx;
	}
	public void setRc_ReqMem(String rc_MemIdx) {
		this.rc_MemIdx = rc_MemIdx;
	}
	public String getRc_Cate() {
		return rc_Cate;
	}
	public void setRc_Cate(String rc_Cate) {
		this.rc_Cate = rc_Cate;
	}
	public Date getRc_Date() {
		return rc_Date;
	}
	public void setRc_Date(Date rc_Date) {
		this.rc_Date = rc_Date;
	}
	public String getRc_Local() {
		return rc_Local;
	}
	public void setRc_Local(String rc_Local) {
		this.rc_Local = rc_Local;
	}
	public String getRc_MatchDay() {
		return rc_MatchDay;
	}
	public void setRc_MatchDay(String rc_MatchDay) {
		this.rc_MatchDay = rc_MatchDay;
	}
	public int getRc_Num() {
		return rc_Num;
	}
	public void setRc_Num(int rc_Num) {
		this.rc_Num = rc_Num;
	}
	public String getRc_Posit() {
		return rc_Posit;
	}
	public void setRc_Posit(String rc_Posit) {
		this.rc_Posit = rc_Posit;
	}
	
	@Override
	public String toString() {
		return "RecruitVo [rc_Idx=" + rc_Idx + ", rc_Status=" + rc_Status + ", rc_TeamIdx=" + team_Name
				+ ", rc_ReqMem=" + rc_MemIdx + ", rc_Cate=" + rc_Cate + ", rc_Date=" + rc_Date + ", rc_Local="
				+ rc_Local + ", rc_MatchDay=" + rc_MatchDay + ", rc_Num=" + rc_Num + ", rc_Posit=" + rc_Posit + "]";
	}
	

}
