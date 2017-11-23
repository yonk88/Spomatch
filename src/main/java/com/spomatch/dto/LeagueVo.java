package com.spomatch.dto;

import java.sql.Date;

//대회정보
public class LeagueVo {

	private String lea_Idx;
	private String lea_Name;
	private char lea_Style;
	private char lea_Cate;
	private int lea_Max;
	private int lea_Min;
	private int lea_Cost;
	private int lea_Prize;
	private Date lea_Deadline;
	private String lea_Host;
	private String lea_Local;
	private String lea_Info;
	private char lea_Fin;
	private String team_Name;
	
	public String getTeam_Name() {
		return team_Name;
	}
	public void setTeam_Name(String team_Name) {
		this.team_Name = team_Name;
	}
	public String getLea_Idx() {
		return lea_Idx;
	}
	public void setLea_Idx(String lea_Idx) {
		this.lea_Idx = lea_Idx;
	}
	public String getLea_Name() {
		return lea_Name;
	}
	public void setLea_Name(String lea_Name) {
		this.lea_Name = lea_Name;
	}
	public char getLea_Style() {
		return lea_Style;
	}
	public void setLea_Style(char lea_Style) {
		this.lea_Style = lea_Style;
	}
	public char getLea_Cate() {
		return lea_Cate;
	}
	public void setLea_Cate(char lea_Cate) {
		this.lea_Cate = lea_Cate;
	}
	public int getLea_Max() {
		return lea_Max;
	}
	public void setLea_Max(int lea_Max) {
		this.lea_Max = lea_Max;
	}
	public int getLea_Min() {
		return lea_Min;
	}
	public void setLea_Min(int lea_Min) {
		this.lea_Min = lea_Min;
	}
	public int getLea_Cost() {
		return lea_Cost;
	}
	public void setLea_Cost(int lea_Cost) {
		this.lea_Cost = lea_Cost;
	}
	public int getLea_Prize() {
		return lea_Prize;
	}
	public void setLea_Prize(int lea_Prize) {
		this.lea_Prize = lea_Prize;
	}
	public Date getLea_Deadline() {
		return lea_Deadline;
	}
	public void setLea_Deadline(Date lea_Deadline) {
		this.lea_Deadline = lea_Deadline;
	}
	public String getLea_Host() {
		return lea_Host;
	}
	public void setLea_Host(String lea_Host) {
		this.lea_Host = lea_Host;
	}
	public String getLea_Local() {
		return lea_Local;
	}
	public void setLea_Local(String lea_Local) {
		this.lea_Local = lea_Local;
	}
	public String getLea_Info() {
		return lea_Info;
	}
	public void setLea_Info(String lea_Info) {
		this.lea_Info = lea_Info;
	}
	public char getLea_Fin() {
		return lea_Fin;
	}
	public void setLea_Fin(char lea_Fin) {
		this.lea_Fin = lea_Fin;
	}
	
	@Override
	public String toString() {
		return "LeagueVo [lea_Idx=" + lea_Idx + ", lea_Name=" + lea_Name + ", lea_Style=" + lea_Style + ", lea_Cate="
				+ lea_Cate + ", lea_Max=" + lea_Max + ", lea_Min=" + lea_Min + ", lea_Cost=" + lea_Cost + ", lea_Prize="
				+ lea_Prize + ", lea_Deadline=" + lea_Deadline + ", lea_Host=" + lea_Host + ", lea_Local=" + lea_Local
				+ ", lea_Info=" + lea_Info + ", lea_Fin=" + lea_Fin + "]";
	}	

}
