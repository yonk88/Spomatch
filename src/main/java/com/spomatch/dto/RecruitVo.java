package com.spomatch.dto;

import java.util.Date;

public class RecruitVo {
	
	private int rc_Idx;
	private char rc_Status;
	private String rc_TeamIdx;
	private String rc_ReqMem;
	private char rc_Cate;
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
	public char getRc_Status() {
		return rc_Status;
	}
	public void setRc_Status(char rc_Status) {
		this.rc_Status = rc_Status;
	}
	public String getRc_TeamIdx() {
		return rc_TeamIdx;
	}
	public void setRc_TeamIdx(String rc_TeamIdx) {
		this.rc_TeamIdx = rc_TeamIdx;
	}
	public String getRc_ReqMem() {
		return rc_ReqMem;
	}
	public void setRc_ReqMem(String rc_ReqMem) {
		this.rc_ReqMem = rc_ReqMem;
	}
	public char getRc_Cate() {
		return rc_Cate;
	}
	public void setRc_Cate(char rc_Cate) {
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
		return "RecruitVo [rc_Idx=" + rc_Idx + ", rc_Status=" + rc_Status + ", rc_TeamIdx=" + rc_TeamIdx
				+ ", rc_ReqMem=" + rc_ReqMem + ", rc_Cate=" + rc_Cate + ", rc_Date=" + rc_Date + ", rc_Local="
				+ rc_Local + ", rc_MatchDay=" + rc_MatchDay + ", rc_Num=" + rc_Num + ", rc_Posit=" + rc_Posit + "]";
	}
	

}
