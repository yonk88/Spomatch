package com.spomatch.dto;

import java.util.Date;

//팀 매치등록 및 정보
public class MatchVo {
	private int mat_Idx;
	private Date mat_Date;
	private String mat_Cate;
	private String mat_MatchDay;
	private String mat_Local;
	private String team_Name;
	private String mat_Host;
	private String mat_Guest;
	private String mat_Status;
	private String mat_Lv;
	private double mat_Yval;
	private double mat_Xval;
	private String mat_Stime;
	private String mat_Ftime;
	private String mat_Comment;
	private String mat_Fsize;
	private String mat_Ampm;
	
	
	public String getMat_Host() {
		return mat_Host;
	}
	public void setMat_Host(String mat_Host) {
		this.mat_Host = mat_Host;
	}
	public String getMat_Ampm() {
		return mat_Ampm;
	}
	public void setMat_Ampm(String mat_Ampm) {
		this.mat_Ampm = mat_Ampm;
	}
	public String getMat_Fsize() {
		return mat_Fsize;
	}
	public void setMat_Fsize(String mat_Fsize) {
		this.mat_Fsize = mat_Fsize;
	}
	public String getMat_Comment() {
		return mat_Comment;
	}
	public void setMat_Comment(String mat_Comment) {
		this.mat_Comment = mat_Comment;
	}
	public double getMat_Yval() {
		return mat_Yval;
	}
	public void setMat_Yval(double mat_Yval) {
		this.mat_Yval = mat_Yval;
	}
	public double getMat_Xval() {
		return mat_Xval;
	}
	public void setMat_Xval(double mat_Xval) {
		this.mat_Xval = mat_Xval;
	}
	public String getMat_Stime() {
		return mat_Stime;
	}
	public void setMat_Stime(String mat_Stime) {
		this.mat_Stime = mat_Stime;
	}
	public String getMat_Ftime() {
		return mat_Ftime;
	}
	public void setMat_Ftime(String mat_Ftime) {
		this.mat_Ftime = mat_Ftime;
	}
	public String getMat_Lv() {
		return mat_Lv;
	}
	public void setMat_Lv(String mat_Lv) {
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
	public String getMat_Cate() {
		return mat_Cate;
	}
	public void setMat_Cate(String mat_Cate) {
		this.mat_Cate = mat_Cate;
	}
	public String getMat_MatchDay() {
		return mat_MatchDay;
	}
	public void setMat_MatchDay(String mat_MatchDay) {
		this.mat_MatchDay = mat_MatchDay;
	}
	public String getMat_Local() {
		return mat_Local;
	}
	public void setMat_Local(String mat_Local) {
		this.mat_Local = mat_Local;
	}
	public String getTeam_Name() {
		return team_Name;
	}
	public void setTeam_Name(String team_Name) {
		this.team_Name = team_Name;
	}
	public String getMat_Guest() {
		return mat_Guest;
	}
	public void setMat_Guest(String mat_Guest) {
		this.mat_Guest = mat_Guest;
	}
	public String getMat_Status() {
		return mat_Status;
	}
	public void setMat_Status(String mat_Status) {
		this.mat_Status = mat_Status;
	}
	
	
	@Override
	public String toString() {
		return "MatchVo [mat_Idx=" + mat_Idx + ", mat_Date=" + mat_Date + ", mat_Cate=" + mat_Cate + ", mat_Matchday="
				+ mat_MatchDay + ", mat_Local=" + mat_Local + ", team_Name=" + team_Name + ", mat_Guest=" + mat_Guest
				+ ", mat_Status=" + mat_Status + ", mat_Lv=" + mat_Lv + ", mat_Yval=" + mat_Yval + ", mat_Xval="
				+ mat_Xval + ", mat_Stime=" + mat_Stime + ", mat_Etime=" + mat_Ftime + ", mat_Comment=" + mat_Comment
				+ ", mat_Fsize=" + mat_Fsize + ", mat_Ampm=" + mat_Ampm + ", mat_Host=" + mat_Host +"]";
	}
	
	
}
