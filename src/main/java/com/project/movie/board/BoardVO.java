package com.project.movie.board;

import java.util.Date;

public class BoardVO {
	private int id;
	private String title;
	private String genre;
	private String lang;
	private String content;
	private String score;
	private Date regdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "BoardVO [id=" + id + ", title=" + title + ", genre=" + genre + ", lang=" + lang + ", content=" + content
				+ ", score=" + score + ", regdate=" + regdate + "]";
	}

}