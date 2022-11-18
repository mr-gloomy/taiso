package com.taiso.admin.review.db;

import java.sql.Timestamp;

public class ReviewDTO {
	
	private int rev_num;
	private String rev_subject;
	private String rev_content;
	private String rev_image;
	private int rev_star;
	private Timestamp rev_date;
	// getter setter
	public int getRev_num() {
		return rev_num;
	}
	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}
	public Timestamp getRev_date() {
		return rev_date;
	}
	public void setRev_date(Timestamp rev_date) {
		this.rev_date = rev_date;
	}
	public String getRev_subject() {
		return rev_subject;
	}
	public void setRev_subject(String rev_subject) {
		this.rev_subject = rev_subject;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public String getRev_image() {
		return rev_image;
	}
	public void setRev_image(String rev_image) {
		this.rev_image = rev_image;
	}
	public int getRev_star() {
		return rev_star;
	}
	public void setRev_star(int rev_star) {
		this.rev_star = rev_star;
	}
	// toString
	@Override
	public String toString() {
		return "ReviewDTO [rev_num=" + rev_num + ", rev_subject=" + rev_subject + ", rev_content=" + rev_content
				+ ", rev_image=" + rev_image + ", rev_star=" + rev_star + ", rev_date=" + rev_date + "]";
	}
	
	
	
	
	
	

}
