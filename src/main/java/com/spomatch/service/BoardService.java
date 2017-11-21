package com.spomatch.service;



import java.util.List;

import com.spomatch.dto.MatchVo;

public interface BoardService {
	
	public List boardList(String catg);
	
	public List rcList(String catg);

}
