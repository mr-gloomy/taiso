package com.taiso.notice.db;

import java.sql.Date;

public class BoardDTO {

	private int bo_num;			// 게시판 글번호
	private String mem_id;		// 게시판 작성자 
	private String bo_cate;		// 게시판 카테고리 
	private String bo_title;	// 게시판 글제목
	private String bo_pass;		// 게시판 비밀번호
	private String bo_content;  // 게시판 내용
	private String bo_file;		// 게시판 첨부파일
	private Date bo_sysdate;	// 등록일자
	private int bo_re_ref;		// 답변 번호
	private int bo_re_lev;		// 답변 레벨
	private int bo_re_seq;		// 답변 순서
	private int bo_readcount;	// 조회수
	
	
	public int getBo_num() {
		return bo_num;
	}
	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getBo_cate() {
		return bo_cate;
	}
	public void setBo_cate(String bo_cate) {
		this.bo_cate = bo_cate;
	}
	public String getBo_title() {
		return bo_title;
	}
	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}
	public String getBo_pass() {
		return bo_pass;
	}
	public void setBo_pass(String bo_pass) {
		this.bo_pass = bo_pass;
	}
	public String getBo_content() {
		return bo_content;
	}
	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}
	public String getBo_file() {
		return bo_file;
	}
	public void setBo_file(String bo_file) {
		this.bo_file = bo_file;
	}
	public Date getBo_sysdate() {
		return bo_sysdate;
	}
	public void setBo_sysdate(Date bo_sysdate) {
		this.bo_sysdate = bo_sysdate;
	}
	public int getBo_re_ref() {
		return bo_re_ref;
	}
	public void setBo_re_ref(int bo_re_ref) {
		this.bo_re_ref = bo_re_ref;
	}
	public int getBo_re_lev() {
		return bo_re_lev;
	}
	public void setBo_re_lev(int bo_re_lev) {
		this.bo_re_lev = bo_re_lev;
	}
	public int getBo_re_seq() {
		return bo_re_seq;
	}
	public void setBo_re_seq(int bo_re_seq) {
		this.bo_re_seq = bo_re_seq;
	}
	public int getBo_readcount() {
		return bo_readcount;
	}
	public void setBo_readcount(int bo_readcount) {
		this.bo_readcount = bo_readcount;
	}
	
	
	@Override
	public String toString() {
		return "BoardDTO [bo_num=" + bo_num + ", mem_id=" + mem_id + ", bo_cate=" + bo_cate + ", bo_title=" + bo_title
				+ ", bo_pass=" + bo_pass + ", bo_content=" + bo_content + ", bo_file=" + bo_file + ", bo_sysdate="
				+ bo_sysdate + ", bo_re_ref=" + bo_re_ref + ", bo_re_lev=" + bo_re_lev + ", bo_re_seq=" + bo_re_seq
				+ ", bo_readcount=" + bo_readcount + "]";
	}
	
	

	
	
	
	
	
}
                                                               