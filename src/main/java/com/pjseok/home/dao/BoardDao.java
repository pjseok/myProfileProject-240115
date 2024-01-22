package com.pjseok.home.dao;

import java.util.List;

import com.pjseok.home.dto.QAboardDto;

public interface BoardDao {
	public List<QAboardDto> listDao(int amount, int pageNum); // 페이지 번호에 따른 글 리스트 가져오기
	public void writeDao(String qbmid, String qbname, String qbemail, String qbtitle, String qbcontent); //게시판 글쓰기
	public QAboardDto contentViewDao(String qbnum); /// 글번호로 해당 글의 레코드 반환
	public void contentModifyDao(String qbnum, String qbtitle, String qbcontent); // 글 수정
	public void contentdeleteDao(String qbnum);
	public int boardAllCountDao();//게시판 내 모든 글의 총 개수를 반환 
	
	
	
	
}
