package com.spomatch.dto;

//대회참가팀
public class LeagueTmVo {

	private String lea_Idx;
	private String team_Idx;
	private char lt_Status;
	private char lt_Cate;
	private String lt_Group;
	private int lt_Point;
	private int lt_Win;
	private int lt_Draw;
	private int lt_Lose;
	private int lt_Goal;
	private int lt_LosePnt;
	private String team_Name;
	
	public String getTeam_Name() {
		return team_Name;
	}

	public void setTeam_Name(String team_Name) {
		this.team_Name = team_Name;
	}

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

	public int getLt_Point() {
		return lt_Point;
	}

	public void setLt_Point(int lt_Point) {
		this.lt_Point = lt_Point;
	}

	public int getLt_Win() {
		return lt_Win;
	}

	public void setLt_Win(int lt_Win) {
		this.lt_Win = lt_Win;
	}

	public int getLt_Draw() {
		return lt_Draw;
	}

	public void setLt_Draw(int lt_Draw) {
		this.lt_Draw = lt_Draw;
	}

	public int getLt_Lose() {
		return lt_Lose;
	}

	public void setLt_Lose(int lt_Lose) {
		this.lt_Lose = lt_Lose;
	}

	public int getLt_Goal() {
		return lt_Goal;
	}

	public void setLt_Goal(int lt_Goal) {
		this.lt_Goal = lt_Goal;
	}

	public int getLt_LosePnt() {
		return lt_LosePnt;
	}

	public void setLt_LosePnt(int lt_LosePnt) {
		this.lt_LosePnt = lt_LosePnt;
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
				+ lt_Cate + ", lt_Group=" + lt_Group + ", lt_Point=" + lt_Point + ", lt_Win=" + lt_Win + ", lt_Draw="
				+ lt_Draw + ", lt_Lose=" + lt_Lose + ", lt_Goal=" + lt_Goal + ", lt_LosePnt=" + lt_LosePnt
				+ ", lt_MemNum=" + lt_MemNum + "]";
	}
	
	
	
	
}
