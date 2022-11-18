package com.taiso.payment.action;

public class ActionForward {

	// 이동티켓
	private String path;
	private boolean isRedirect;
	
	
	
	// 세터게터 생성
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

