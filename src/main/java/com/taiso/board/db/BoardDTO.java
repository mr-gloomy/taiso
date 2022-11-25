package com.taiso.board.db;

import java.sql.Date;

import lombok.Data;

@Data
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
	private String mem_nickName;  //닉네임         
	
}