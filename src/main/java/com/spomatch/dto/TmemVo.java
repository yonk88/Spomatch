package com.spomatch.dto;

//회원별 팀 가입정보
public class TmemVo {

	private String tMem_MemIdx;
	private String TeamIdx;
	private char tMem_TeamCate;
	private String tMem_TeamCp;
	
	public String gettMem_MemIdx() {
		return tMem_MemIdx;
	}
	public void settMem_MemIdx(String tMem_MemIdx) {
		this.tMem_MemIdx = tMem_MemIdx;
	}
	public String getTeamIdx() {
		return TeamIdx;
	}
	public void setTeamIdx(String teamIdx) {
		TeamIdx = teamIdx;
	}
	public char gettMem_TeamCate() {
		return tMem_TeamCate;
	}
	public void settMem_TeamCate(char tMem_TeamCate) {
		this.tMem_TeamCate = tMem_TeamCate;
	}
	public String gettMem_TeamCp() {
		return tMem_TeamCp;
	}
	public void settMem_TeamCp(String tMem_TeamCp) {
		this.tMem_TeamCp = tMem_TeamCp;
	}
	
	@Override
	public String toString() {
		return "TmemVo [tMem_MemIdx=" + tMem_MemIdx + ", TeamIdx=" + TeamIdx + ", tMem_TeamCate=" + tMem_TeamCate
				+ ", tMem_TeamCp=" + tMem_TeamCp + "]";
	}
	
	
}
