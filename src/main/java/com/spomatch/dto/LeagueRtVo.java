package com.spomatch.dto;

import java.sql.Date;

//대회 경기 기록
public class LeagueRtVo {

	private String lr_Idx;
	private String lr_Hteam;
	private String lr_ATeam;
	private int lr_Hgoal;
	private int lr_Agoal;
	private String lr_Winner;
	private Date lr_Date;
	
	public String getLr_Idx() {
		return lr_Idx;
	}
	public void setLr_Idx(String lr_Idx) {
		this.lr_Idx = lr_Idx;
	}
	public String getLr_Hteam() {
		return lr_Hteam;
	}
	public void setLr_Hteam(String lr_Hteam) {
		this.lr_Hteam = lr_Hteam;
	}
	public String getLr_ATeam() {
		return lr_ATeam;
	}
	public void setLr_ATeam(String lr_ATeam) {
		this.lr_ATeam = lr_ATeam;
	}
	public int getLr_Hgoal() {
		return lr_Hgoal;
	}
	public void setLr_Hgoal(int lr_Hgoal) {
		this.lr_Hgoal = lr_Hgoal;
	}
	public int getLr_Agoal() {
		return lr_Agoal;
	}
	public void setLr_Agoal(int lr_Agoal) {
		this.lr_Agoal = lr_Agoal;
	}
	public String getLr_Winner() {
		return lr_Winner;
	}
	public void setLr_Winner(String lr_Winner) {
		this.lr_Winner = lr_Winner;
	}
	public Date getLr_Date() {
		return lr_Date;
	}
	public void setLr_Date(Date lr_Date) {
		this.lr_Date = lr_Date;
	}
	@Override
	public String toString() {
		return "LeagueRtVo [lr_Idx=" + lr_Idx + ", lr_Hteam=" + lr_Hteam + ", lr_ATeam=" + lr_ATeam + ", lr_Hgoal="
				+ lr_Hgoal + ", lr_Agoal=" + lr_Agoal + ", lr_Winner=" + lr_Winner + ", lr_Date=" + lr_Date + "]";
	}
	
	
}
