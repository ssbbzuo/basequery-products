package com.eenet.basequery.learncenter;

import java.util.Date;

import com.eenet.base.BaseEntity;

public class LCReserveOrder extends BaseEntity{

	private static final long serialVersionUID = -4540913346929793572L;
	private String studentId;//学员ID
	private String userName;//学员名称
	private String mobile;//学员手机
	private String marketerId;//市场人员ID
	private String marketerAccount;//市场人员账号
	private String marketerName;//市场人员名称
	private String salemanId;//招生顾问ID
	private String salemanAccount;//招生顾问账号
	private String salemanName;//招生顾问名称
	private String headTeacherId;//班主任ID
	private String headTeacherAccount;//班主任账号
	private String headTeacherName;//班主任名称
	private String enrolNo;//招生单号
	private String learncenterCode;//学习中心编码
	private String learncenterName;//学习中心名称
	private Date createdDt;//预报读创建时间
	private String status;//订单状态编码
	private String orderStatusName;//订单状态
	private String channelCode;//渠道编码
	private String channelName;//渠道名称
	private String colleges;//院校编码
	private String schoolChineseName;//院校名称
	private String companyName;//企业名称
	private String eproductId;//招生产品ID
	private String productName;//招生产品名称
	private String educationLevel;//培养层次编码
	private String educationLevelName;//培养层次
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
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
	public String getMarketerId() {
		return marketerId;
	}
	public void setMarketerId(String marketerId) {
		this.marketerId = marketerId;
	}
	public String getMarketerAccount() {
		return marketerAccount;
	}
	public void setMarketerAccount(String marketerAccount) {
		this.marketerAccount = marketerAccount;
	}
	public String getMarketerName() {
		return marketerName;
	}
	public void setMarketerName(String marketerName) {
		this.marketerName = marketerName;
	}
	public String getSalemanId() {
		return salemanId;
	}
	public void setSalemanId(String salemanId) {
		this.salemanId = salemanId;
	}
	public String getSalemanAccount() {
		return salemanAccount;
	}
	public void setSalemanAccount(String salemanAccount) {
		this.salemanAccount = salemanAccount;
	}
	public String getSalemanName() {
		return salemanName;
	}
	public void setSalemanName(String salemanName) {
		this.salemanName = salemanName;
	}
	public String getHeadTeacherId() {
		return headTeacherId;
	}
	public void setHeadTeacherId(String headTeacherId) {
		this.headTeacherId = headTeacherId;
	}
	public String getHeadTeacherAccount() {
		return headTeacherAccount;
	}
	public void setHeadTeacherAccount(String headTeacherAccount) {
		this.headTeacherAccount = headTeacherAccount;
	}
	public String getHeadTeacherName() {
		return headTeacherName;
	}
	public void setHeadTeacherName(String headTeacherName) {
		this.headTeacherName = headTeacherName;
	}
	public String getEnrolNo() {
		return enrolNo;
	}
	public void setEnrolNo(String enrolNo) {
		this.enrolNo = enrolNo;
	}
	public String getLearncenterCode() {
		return learncenterCode;
	}
	public void setLearncenterCode(String learncenterCode) {
		this.learncenterCode = learncenterCode;
	}
	public String getLearncenterName() {
		return learncenterName;
	}
	public void setLearncenterName(String learncenterName) {
		this.learncenterName = learncenterName;
	}
	public Date getCreatedDt() {
		return createdDt;
	}
	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOrderStatusName() {
		return orderStatusName;
	}
	public void setOrderStatusName(String orderStatusName) {
		this.orderStatusName = orderStatusName;
	}
	public String getChannelCode() {
		return channelCode;
	}
	public void setChannelCode(String channelCode) {
		this.channelCode = channelCode;
	}
	public String getChannelName() {
		return channelName;
	}
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	public String getColleges() {
		return colleges;
	}
	public void setColleges(String colleges) {
		this.colleges = colleges;
	}
	public String getSchoolChineseName() {
		return schoolChineseName;
	}
	public void setSchoolChineseName(String schoolChineseName) {
		this.schoolChineseName = schoolChineseName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getEproductId() {
		return eproductId;
	}
	public void setEproductId(String eproductId) {
		this.eproductId = eproductId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getEducationLevel() {
		return educationLevel;
	}
	public void setEducationLevel(String educationLevel) {
		this.educationLevel = educationLevel;
	}
	public String getEducationLevelName() {
		return educationLevelName;
	}
	public void setEducationLevelName(String educationLevelName) {
		this.educationLevelName = educationLevelName;
	}

}
