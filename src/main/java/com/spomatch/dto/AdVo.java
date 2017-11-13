package com.spomatch.dto;

import java.sql.Date;

//광고
public class AdVo {

	private int ad_Idx;
	private String ad_Name;
	private Date ad_Date;
	private String ad_Url;
	private Date ad_Start;
	private Date ad_End;
	private char ad_Cate;
	private String ad_Comp;
	private String ad_Email;
	private String ad_Phone;
	private char ad_Accept;
	public int getAd_Idx() {
		return ad_Idx;
	}
	public void setAd_Idx(int ad_Idx) {
		this.ad_Idx = ad_Idx;
	}
	public String getAd_Name() {
		return ad_Name;
	}
	public void setAd_Name(String ad_Name) {
		this.ad_Name = ad_Name;
	}
	public Date getAd_Date() {
		return ad_Date;
	}
	public void setAd_Date(Date ad_Date) {
		this.ad_Date = ad_Date;
	}
	public String getAd_Url() {
		return ad_Url;
	}
	public void setAd_Url(String ad_Url) {
		this.ad_Url = ad_Url;
	}
	public Date getAd_Start() {
		return ad_Start;
	}
	public void setAd_Start(Date ad_Start) {
		this.ad_Start = ad_Start;
	}
	public Date getAd_End() {
		return ad_End;
	}
	public void setAd_End(Date ad_End) {
		this.ad_End = ad_End;
	}
	public char getAd_Cate() {
		return ad_Cate;
	}
	public void setAd_Cate(char ad_Cate) {
		this.ad_Cate = ad_Cate;
	}
	public String getAd_Comp() {
		return ad_Comp;
	}
	public void setAd_Comp(String ad_Comp) {
		this.ad_Comp = ad_Comp;
	}
	public String getAd_Email() {
		return ad_Email;
	}
	public void setAd_Email(String ad_Email) {
		this.ad_Email = ad_Email;
	}
	public String getAd_Phone() {
		return ad_Phone;
	}
	public void setAd_Phone(String ad_Phone) {
		this.ad_Phone = ad_Phone;
	}
	public char getAd_Accept() {
		return ad_Accept;
	}
	public void setAd_Accept(char ad_Accept) {
		this.ad_Accept = ad_Accept;
	}
	
	
	@Override
	public String toString() {
		return "AdVo [ad_Idx=" + ad_Idx + ", ad_Name=" + ad_Name + ", ad_Date=" + ad_Date + ", ad_Url=" + ad_Url
				+ ", ad_Start=" + ad_Start + ", ad_End=" + ad_End + ", ad_Cate=" + ad_Cate + ", ad_Comp=" + ad_Comp
				+ ", ad_Email=" + ad_Email + ", ad_Phone=" + ad_Phone + ", ad_Accept=" + ad_Accept + "]";
	}
	
}
