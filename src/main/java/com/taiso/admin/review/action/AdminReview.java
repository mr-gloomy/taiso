package com.taiso.admin.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AdminReview {
	
	public AdminReviewForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
