package com.taiso.board.action;

public class BoardForward {

	private String path; //이동주소
	private boolean isRedirect; //이동방법
	
	// 이동방법 - true : redirect
	// 		  - false : forward
	
	public BoardForward() { 
		System.out.println(" 페이지 이동 준비(티켓준비) ");
		
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	
	
}
	
