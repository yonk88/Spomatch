package com.spomatch.dao;



import java.util.List;

import com.spomatch.dto.MatchVo;

public interface BoardDao {
	
	public List boardList(String catg);
	
	public List rcList(String catg);
	
	public List myWriteList(String catg, String my_Info);

}
