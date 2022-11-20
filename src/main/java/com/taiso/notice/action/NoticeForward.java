package com.taiso.notice.action;

public class NoticeForward {
	// 컨트롤러에서 페이지 이동할때 필요한
	//  이동주소, 이동방법을 저장하는 객체
	private String path;	// 이동주소
	private boolean isRedirect;		// 이동방법
	//   이동방법 - true : redirect방식 이동 
	//            - false : forward방식 이동
	
	public NoticeForward() {
		System.out.println(" 페이지 이동 준비 (티켓준비)");
	}
	
	// alt shift s + r    => set(),get()
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() { //get()기능
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

}
