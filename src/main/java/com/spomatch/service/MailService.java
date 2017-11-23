package com.spomatch.service;

import java.util.List;

public interface MailService {
	 
    /** 메일 전송
     *  @param subject 제목
     *  @param text 내용
     *  @param from 보내는 메일 주소
     *  @param to 받는 메일 주소
     *  @param filePath 첨부 파일 경로: 첨부파일 없을시 null **/
    public boolean send(String subject, String text, String from, String to, String filePath);

    public List emailCheck(String mem_Id);
}