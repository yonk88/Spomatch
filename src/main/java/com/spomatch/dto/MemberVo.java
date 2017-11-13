package com.spomatch.dto;

import java.util.Date;

//회원
public class MemberVo {
	
	private String mem_Idx;
	private String mem_Id;
	private String mem_Pass;
	private String mem_Name;
	private Date mem_Birth;
	private String mem_Local;
	private String mem_Phone;
	private int mem_Lv;
	
	public String getMem_Idx() {
		return mem_Idx;
	}
	public void setMem_Idx(String mem_Idx) {
		this.mem_Idx = mem_Idx;
	}
	public String getMem_Id() {
		return mem_Id;
	}
	public void setMem_Id(String mem_Id) {
		this.mem_Id = mem_Id;
	}
	public String getMem_Pass() {
		return mem_Pass;
	}
	public void setMem_Pass(String mem_Pass) {
		this.mem_Pass = mem_Pass;
	}
	public String getMem_Name() {
		return mem_Name;
	}
	public void setMem_Name(String mem_Name) {
		this.mem_Name = mem_Name;
	}
	public Date getMem_Birth() {
		return mem_Birth;
	}
	public void setMem_Birth(Date mem_Birth) {
		this.mem_Birth = mem_Birth;
	}
	public String getMem_Local() {
		return mem_Local;
	}
	public void setMem_Local(String mem_Local) {
		this.mem_Local = mem_Local;
	}
	public String getMem_Phone() {
		return mem_Phone;
	}
	public void setMem_Phone(String mem_Phone) {
		this.mem_Phone = mem_Phone;
	}
	public int getMem_Lv() {
		return mem_Lv;
	}
	public void setMem_Lv(int mem_Lv) {
		this.mem_Lv = mem_Lv;
	}
	
	
	@Override
	public String toString() {
		return "MemberVo [mem_Idx=" + mem_Idx + ", mem_Id=" + mem_Id + ", mem_Pass=" + mem_Pass + ", mem_Name="
				+ mem_Name + ", mem_Birth=" + mem_Birth + ", mem_Local=" + mem_Local + ", mem_Phone=" + mem_Phone
				+ ", mem_Lv=" + mem_Lv + "]";
	}
	

}
