package com.mbs.board.dto;

import java.sql.Date;
import java.sql.Time;

import org.springframework.stereotype.Component;

@Component
public class BoardDto {
	private int boardNumber;
	private String nickName;
	private String boardTitle;
	private String categoryL;
	private String categoryS;
	private int peopleQty;
	private Date meetDate;
	private String dateNego;
	private String meetTime;
	private String timeNego;
	private String onOf;
	private String placeAdd;
	private String detailAdd;
	private String placeNego;
	private String url;
	private String boardContent;
	private int reply;
	private int views;
	private int interest;
	private Date uploadDate;
	
	public int getBoardNumber() {
		return boardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getCategoryL() {
		return categoryL;
	}
	public void setCategoryL(String categoryL) {
		this.categoryL = categoryL;
	}
	public String getCategoryS() {
		return categoryS;
	}
	public void setCategoryS(String categoryS) {
		this.categoryS = categoryS;
	}
	public int getPeopleQty() {
		return peopleQty;
	}
	public void setPeopleQty(int peopleQty) {
		this.peopleQty = peopleQty;
	}
	public Date getMeetDate() {
		return meetDate;
	}
	public void setMeetDate(Date meetDate) {
		this.meetDate = meetDate;
	}
	public String getDateNego() {
		return dateNego;
	}
	public void setDateNego(String dateNego) {
		this.dateNego = dateNego;
	}
	public String getMeetTime() {
		return meetTime;
	}
	public void setMeetTime(String meetTime) {
		this.meetTime = meetTime;
	}
	public String getTimeNego() {
		return timeNego;
	}
	public void setTimeNego(String timeNego) {
		this.timeNego = timeNego;
	}
	public String getOnOf() {
		return onOf;
	}
	public void setOnOf(String onOf) {
		this.onOf = onOf;
	}
	public String getPlaceAdd() {
		return placeAdd;
	}
	public void setPlaceAdd(String placeAdd) {
		this.placeAdd = placeAdd;
	}
	public String getDetailAdd() {
		return detailAdd;
	}
	public void setDetailAdd(String detailAdd) {
		this.detailAdd = detailAdd;
	}
	public String getPlaceNego() {
		return placeNego;
	}
	public void setPlaceNego(String placeNego) {
		this.placeNego = placeNego;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	public int getReply() {
		return reply;
	}
	public void setReply(int reply) {
		this.reply = reply;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public int getInterest() {
		return interest;
	}
	public void setInterest(int interest) {
		this.interest = interest;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	@Override
	public String toString() {
		return "BoardDto [boardNumber=" + boardNumber + ", nickName=" + nickName + ", boardTitle=" + boardTitle
				+ ", categoryL=" + categoryL + ", categoryS=" + categoryS + ", peopleQty=" + peopleQty + ", meetDate="
				+ meetDate + ", dateNego=" + dateNego + ", meetTime=" + meetTime + ", timeNego=" + timeNego + ", onOf="
				+ onOf + ", placeAdd=" + placeAdd + ", detailAdd=" + detailAdd + ", placeNego=" + placeNego + ", url="
				+ url + ", boardContent=" + boardContent + ", reply=" + reply + ", views=" + views + ", interest="
				+ interest + ", uploadDate=" + uploadDate + "]";
	}
	

	
	
}
