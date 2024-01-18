package com.pjseok.home.dto;

public class QAboardDto {
	private int qbnum; // 글 번호
	private String qbtitle; // 글제목
	private String qbcontent; // 글 내용
	private String qbmid; // 글쓴이 아이디
	private String qbname; // 글쓴이 이름
	
	private String qbemail; // 글쓴이 이메일
	private String qbdate; // 글 등록일
public QAboardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

public QAboardDto(int qbnum, String qbtitle, String qbcontent, String qbmid, String qbname, String qbemail,
		String qbdate) {
	super();
	this.qbnum = qbnum;
	this.qbtitle = qbtitle;
	this.qbcontent = qbcontent;
	this.qbmid = qbmid;
	this.qbname = qbname;
	this.qbemail = qbemail;
	this.qbdate = qbdate;
	}

public int getQbnum() {
	return qbnum;
}

public void setQbnum(int qbnum) {
	this.qbnum = qbnum;
}

public String getQbtitle() {
	return qbtitle;
}

public void setQbtitle(String qbtitle) {
	this.qbtitle = qbtitle;
}

public String getQbcontent() {
	return qbcontent;
}

public void setQbcontent(String qbcontent) {
	this.qbcontent = qbcontent;
}

public String getQbmid() {
	return qbmid;
}

public void setQbmid(String qbmid) {
	this.qbmid = qbmid;
}

public String getQbname() {
	return qbname;
}

public void setQbname(String qbname) {
	this.qbname = qbname;
}

public String getQbemail() {
	return qbemail;
}

public void setQbemail(String qbemail) {
	this.qbemail = qbemail;
}

public String getQbdate() {
	return qbdate;
}

public void setQbdate(String qbdate) {
	this.qbdate = qbdate;
}

}	