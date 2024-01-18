package com.pjseok.home.dao;

import java.util.List;

import com.pjseok.home.dto.QAboardDto;

public interface BoardDao {
	public List<QAboardDto> listDao(); // 모든 글 리스트 가져오기
	public void writeDao(String qbmid, String qbname, String qbtitle, String qbcontent, String qbemail);
	public QAboardDto contentViewDao(String qbnum); /// 글번호로 해당 글의 레코드 반환
}
