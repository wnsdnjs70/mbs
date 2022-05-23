package com.mbs.member.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class MemberDto {

	private String memberId;
	private String nickName;
	private String memberPw;
	private String memberName;
	private String memberGender;
	private String memberBirthY;
	private String memberBirthM;
	private String memberBirthD;
	private String hp1;
	private String hp2;
	private String hp3;
	private String smsYn;
	private String email1;
	private String email2;
	private String emailYn;
	private String intCity1;
	private String intGu1;
	private String intCity2;
	private String intGu2;
	private String memberInstagram;
	private String memberFacebook;
	private String allAgree;
	private String serviceAgree;
	private String infoAgree;
	private String expirAgree;
	private String promAgree;
	private String interestList;
	private Date joinDate;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberBirthY() {
		return memberBirthY;
	}
	public void setMemberBirthY(String memberBirthY) {
		this.memberBirthY = memberBirthY;
	}
	public String getMemberBirthM() {
		return memberBirthM;
	}
	public void setMemberBirthM(String memberBirthM) {
		this.memberBirthM = memberBirthM;
	}
	public String getMemberBirthD() {
		return memberBirthD;
	}
	public void setMemberBirthD(String memberBirthD) {
		this.memberBirthD = memberBirthD;
	}
	public String getHp1() {
		return hp1;
	}
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	public String getHp2() {
		return hp2;
	}
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	public String getHp3() {
		return hp3;
	}
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	public String getSmsYn() {
		return smsYn;
	}
	public void setSmsYn(String smsYn) {
		this.smsYn = smsYn;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getEmailYn() {
		return emailYn;
	}
	public void setEmailYn(String emailYn) {
		this.emailYn = emailYn;
	}
	public String getIntCity1() {
		return intCity1;
	}
	public void setIntCity1(String intCity1) {
		this.intCity1 = intCity1;
	}
	public String getIntGu1() {
		return intGu1;
	}
	public void setIntGu1(String intGu1) {
		this.intGu1 = intGu1;
	}
	public String getIntCity2() {
		return intCity2;
	}
	public void setIntCity2(String intCity2) {
		this.intCity2 = intCity2;
	}
	public String getIntGu2() {
		return intGu2;
	}
	public void setIntGu2(String intGu2) {
		this.intGu2 = intGu2;
	}
	public String getMemberInstagram() {
		return memberInstagram;
	}
	public void setMemberInstagram(String memberInstagram) {
		this.memberInstagram = memberInstagram;
	}
	public String getMemberFacebook() {
		return memberFacebook;
	}
	public void setMemberFacebook(String memberFacebook) {
		this.memberFacebook = memberFacebook;
	}
	public String getAllAgree() {
		return allAgree;
	}
	public void setAllAgree(String allAgree) {
		this.allAgree = allAgree;
	}
	public String getServiceAgree() {
		return serviceAgree;
	}
	public void setServiceAgree(String serviceAgree) {
		this.serviceAgree = serviceAgree;
	}
	public String getInfoAgree() {
		return infoAgree;
	}
	public void setInfoAgree(String infoAgree) {
		this.infoAgree = infoAgree;
	}
	public String getExpirAgree() {
		return expirAgree;
	}
	public void setExpirAgree(String expirAgree) {
		this.expirAgree = expirAgree;
	}
	public String getPromAgree() {
		return promAgree;
	}
	public void setPromAgree(String promAgree) {
		this.promAgree = promAgree;
	}
	
	public String getInterestList() {
		return interestList;
	}
	public void setInterestList(String interestList) {
		this.interestList = interestList;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	@Override
	public String toString() {
		return "MemberDto [memberId=" + memberId + ", memberPw=" + memberPw + ", nickName=" + nickName + ", memberName="
				+ memberName + ", memberGender=" + memberGender + ", memberBirthY=" + memberBirthY + ", memberBirthM="
				+ memberBirthM + ", memberBirthD=" + memberBirthD + ", hp1=" + hp1 + ", hp2=" + hp2 + ", hp3=" + hp3
				+ ", smsYn=" + smsYn + ", email1=" + email1 + ", email2=" + email2 + ", emailYn=" + emailYn
				+ ", intCity1=" + intCity1 + ", intGu1=" + intGu1 + ", intCity2=" + intCity2 + ", intGu2=" + intGu2
				+ ", memberInstagram=" + memberInstagram + ", memberFacebook=" + memberFacebook + ", serviceAgree=" 
				+ serviceAgree + ", infoAgree=" + infoAgree + ", expirAgree="
				+ expirAgree + ", promAgree=" + promAgree + ", joinDate=" + joinDate + "]";
	}
	
	
}
