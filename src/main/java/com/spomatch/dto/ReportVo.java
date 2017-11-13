package com.spomatch.dto;

import java.sql.Date;

//신고
public class ReportVo {
	private int rep_Idx;
	private String rep_Midx;
	private String rep_Widx;
	private Date rep_Date;
	private char rep_Type;
	private char rep_Ptn;
	private String rep_Content;
	private char rep_Check;
	
	public int getRep_Idx() {
		return rep_Idx;
	}
	public void setRep_Idx(int rep_Idx) {
		this.rep_Idx = rep_Idx;
	}
	public String getRep_Midx() {
		return rep_Midx;
	}
	public void setRep_Midx(String rep_Midx) {
		this.rep_Midx = rep_Midx;
	}
	public String getRep_Widx() {
		return rep_Widx;
	}
	public void setRep_Widx(String rep_Widx) {
		this.rep_Widx = rep_Widx;
	}
	public Date getRep_Date() {
		return rep_Date;
	}
	public void setRep_Date(Date rep_Date) {
		this.rep_Date = rep_Date;
	}
	public char getRep_Type() {
		return rep_Type;
	}
	public void setRep_Type(char rep_Type) {
		this.rep_Type = rep_Type;
	}
	public char getRep_Ptn() {
		return rep_Ptn;
	}
	public void setRep_Ptn(char rep_Ptn) {
		this.rep_Ptn = rep_Ptn;
	}
	public String getRep_Content() {
		return rep_Content;
	}
	public void setRep_Content(String rep_Content) {
		this.rep_Content = rep_Content;
	}
	public char getRep_Check() {
		return rep_Check;
	}
	public void setRep_Check(char rep_Check) {
		this.rep_Check = rep_Check;
	}
	
	@Override
	public String toString() {
		return "ReportVo [rep_Idx=" + rep_Idx + ", rep_Midx=" + rep_Midx + ", rep_Widx=" + rep_Widx + ", rep_Date="
				+ rep_Date + ", rep_Type=" + rep_Type + ", rep_Ptn=" + rep_Ptn + ", rep_Content=" + rep_Content
				+ ", rep_Check=" + rep_Check + "]";
	}
	
	
	}
