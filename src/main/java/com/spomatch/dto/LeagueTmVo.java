package com.spomatch.dto;

//대회참가팀
public class LeagueTmVo {

	private String lea_Idx;
	private String team_Idx;
	private char lt_Status;
	private char lt_Cate;
	private String lt_Group;
	private int lt_Goal;
	private int lt_Lose;
	private int lt_Point;
	private int lt_MemNum;
	
	
	
	public String getLea_Idx() {
		return lea_Idx;
	}



	public void setLea_Idx(String lea_Idx) {
		this.lea_Idx = lea_Idx;
	}



	public String getTeam_Idx() {
		return team_Idx;
	}



	public void setTeam_Idx(String team_Idx) {
		this.team_Idx = team_Idx;
	}



	public char getLt_Status() {
		return lt_Status;
	}



	public void setLt_Status(char lt_Status) {
		this.lt_Status = lt_Status;
	}



	public char getLt_Cate() {
		return lt_Cate;
	}



	public void setLt_Cate(char lt_Cate) {
		this.lt_Cate = lt_Cate;
	}



	public String getLt_Group() {
		return lt_Group;
	}



	public void setLt_Group(String lt_Group) {
		this.lt_Group = lt_Group;
	}



	public int getLt_Goal() {
		return lt_Goal;
	}



	public void setLt_Goal(int lt_Goal) {
		this.lt_Goal = lt_Goal;
	}



	public int getLt_Lose() {
		return lt_Lose;
	}



	public void setLt_Lose(int lt_Lose) {
		this.lt_Lose = lt_Lose;
	}



	public int getLt_Point() {
		return lt_Point;
	}



	public void setLt_Point(int lt_Point) {
		this.lt_Point = lt_Point;
	}



	public int getLt_MemNum() {
		return lt_MemNum;
	}



	public void setLt_MemNum(int lt_MemNum) {
		this.lt_MemNum = lt_MemNum;
	}



	@Override
	public String toString() {
		return "LeagueTmVo [lea_Idx=" + lea_Idx + ", team_Idx=" + team_Idx + ", lt_Status=" + lt_Status + ", lt_Cate="
				+ lt_Cate + ", lt_Group=" + lt_Group + ", lt_Goal=" + lt_Goal + ", lt_Lose=" + lt_Lose + ", lt_Point="
				+ lt_Point + ", lt_MemNum=" + lt_MemNum + "]";
	}
	
	
}
