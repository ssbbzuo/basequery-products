package com.eenet.basequery.learncenter;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class LCReserveFollow extends BaseEntity{

	private static final long serialVersionUID = -4540913346929793572L;
	private String studnetId;//学员ID
	private String userName;//学员名称
	private String mobile;//手机
	private String salemanId;//招生顾问ID
	private String salemanName;//招生顾问
	private String headTeacherId;//班主任ID
	private String headTeacherName;//班主任
	private String followResult;//跟踪结果编码
	private String followResultName;//跟踪结果
	private String followContent;//跟踪内容
	private String enrolNo;//招生单号
	private String consultId;//预报读ID
	private String consultNo;//预报读单号
	private Date followDate;//跟进时间
	private Date createdDt;//预报读创建时间
	public String getSalemanId() {
		return salemanId;
	}
	public void setSalemanId(String salemanId) {
		this.salemanId = salemanId;
	}
	public String getHeadTeacherId() {
		return headTeacherId;
	}
	public void setHeadTeacherId(String headTeacherId) {
		this.headTeacherId = headTeacherId;
	}
	public String getStudnetId() {
		return studnetId;
	}
	public void setStudnetId(String studnetId) {
		this.studnetId = studnetId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getSalemanName() {
		return salemanName;
	}
	public void setSalemanName(String salemanName) {
		this.salemanName = salemanName;
	}
	public String getHeadTeacherName() {
		return headTeacherName;
	}
	public void setHeadTeacherName(String headTeacherName) {
		this.headTeacherName = headTeacherName;
	}
	public String getFollowResult() {
		return followResult;
	}
	public void setFollowResult(String followResult) {
		this.followResult = followResult;
	}
	public String getFollowResultName() {
		return followResultName;
	}
	public void setFollowResultName(String followResultName) {
		this.followResultName = followResultName;
	}
	public String getFollowContent() {
		return followContent;
	}
	public void setFollowContent(String followContent) {
		this.followContent = followContent;
	}
	public String getEnrolNo() {
		return enrolNo;
	}
	public void setEnrolNo(String enrolNo) {
		this.enrolNo = enrolNo;
	}
	public String getConsultId() {
		return consultId;
	}
	public void setConsultId(String consultId) {
		this.consultId = consultId;
	}
	public String getConsultNo() {
		return consultNo;
	}
	public void setConsultNo(String consultNo) {
		this.consultNo = consultNo;
	}
	public Date getFollowDate() {
		return followDate;
	}
	public void setFollowDate(Date followDate) {
		this.followDate = followDate;
	}
	public Date getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}
	
}
