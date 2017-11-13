package com.spomatch.dto;

public class FileVo {

	private String file_Table;
	private int file_Idx;
	private String file_Uri;
	private char file_Type;
	
	
	public String getFile_Table() {
		return file_Table;
	}
	public void setFile_Table(String file_Table) {
		this.file_Table = file_Table;
	}
	public int getFile_Idx() {
		return file_Idx;
	}
	public void setFile_Idx(int file_Idx) {
		this.file_Idx = file_Idx;
	}
	public String getFile_Uri() {
		return file_Uri;
	}
	public void setFile_Uri(String file_Uri) {
		this.file_Uri = file_Uri;
	}
	public char getFile_Type() {
		return file_Type;
	}
	public void setFile_Type(char file_Type) {
		this.file_Type = file_Type;
	}
	
	@Override
	public String toString() {
		return "FileVo [file_Table=" + file_Table + ", file_Idx=" + file_Idx + ", file_Uri=" + file_Uri + ", file_Type="
				+ file_Type + "]";
	}
	
}
