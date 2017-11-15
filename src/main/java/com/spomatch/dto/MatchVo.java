package com.spomatch.dto;

import java.util.Date;

//팀 매치등록 및 정보
public class MatchVo {
	private int mat_Idx;
	private Date mat_Date;
	private char mat_Cate;
	private String mat_Matchday;
	private String mat_Local;
	private String mat_Host;
	private String mat_Guest;
	private char mat_Status;
	private char mat_Lv;
	
	public char getMat_Lv() {
		return mat_Lv;
	}
	public void setMat_Lv(char mat_Lv) {
		this.mat_Lv = mat_Lv;
	}
	public int getMat_Idx() {
		return mat_Idx;
	}
	public void setMat_Idx(int mat_Idx) {
		this.mat_Idx = mat_Idx;
	}
	public Date getMat_Date() {
		return mat_Date;
	}
	public void setMat_Date(Date mat_Date) {
		this.mat_Date = mat_Date;
	}
	public char getMat_Cate() {
		return mat_Cate;
	}
	public void setMat_Cate(char mat_Cate) {
		this.mat_Cate = mat_Cate;
	}
	public String getMat_Matchday() {
		return mat_Matchday;
	}
	public void setMat_Matchday(String mat_Matchday) {
		this.mat_Matchday = mat_Matchday;
	}
	public String getMat_Local() {
		return mat_Local;
	}
	public void setMat_Local(String mat_Local) {
		this.mat_Local = mat_Local;
	}
	public String getMat_Host() {
		return mat_Host;
	}
	public void setMat_Host(String mat_Host) {
		this.mat_Host = mat_Host;
	}
	public String getMat_Guest() {
		return mat_Guest;
	}
	public void setMat_Guest(String mat_Guest) {
		this.mat_Guest = mat_Guest;
	}
	public char getMat_Status() {
		return mat_Status;
	}
	public void setMat_Status(char mat_Status) {
		this.mat_Status = mat_Status;
	}
	
	@Override
	public String toString() {
		return "MatchVo [mat_Idx=" + mat_Idx + ", mat_Date=" + mat_Date + ", mat_Cate=" + mat_Cate + ", mat_Matchday="
				+ mat_Matchday + ", mat_Local=" + mat_Local + ", mat_Host=" + mat_Host + ", mat_Guest=" + mat_Guest
				+ ", mat_Status=" + mat_Status + "]";
	}
	
	

}
