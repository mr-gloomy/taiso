package com.taiso.review.action;

public class ActionForward {
	private String path;
	private boolean isRedirect;
	
	// 이동 방법 -  true : redirect 방식 이동
	//				false : forward 방식 이동
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
